---
title: FlowCrypt Email Key Manager Technical Overview
summary: FlowCrypt Email Key Manager Technical Overview
toc: true
---

`version: 2020-02-EVA`


Enterprise customers may deploy Email Key Manager (EKM) on their own premises to centrally manage private and public keys of their users. This central management enables user setup automation, reduces chance of user error and increases usability.  

Recommended deployment is to store actual key data on your existing key storage infrastructure, using any [PKCS#11](#pkcs11-integration) or [KMIP](#kmip-integration)-compatible Hardware Security Module (HSM) or software key store.

The EKM REST JSON API is accessed by FlowCrypt Email Encryption client apps, internally within your network.

## Requirements

| Type | Requirement |
|:--------|:----------|
| OS | Ubuntu 18.04 (runs on other systems but not officially supported) |
| Runtime | Java JRE 8+ (OpenJDK) |
| [Key Storage](#section-store) | Any PKCS#11 or KMIP-1.0 compatible Key Store (such as Gemalto Safenet KeySecure over KMIP, Fortanix SDKMS and Equinix SmartKey over PKCS#11) |
| Hardware | minimum 4GB RAM and one full CPU core per instance | 
| Networking | EKM must be accessible on an internal URL from client devices, with TLS cert trusted by client. The instance should not be accessible from public internet, but it needs limited outward access to the internet to fetch Google JWK for user authentication |
| [Cluster deployment](#high-availability--cluster-deployment) | When deploying more than one instance as a cluster, a load balancer is needed to distribute the load evenly among running instances. Cluster deployment is only supported when using external storage over KMIP. | 

## Distribution and deployment

FlowCrypt Email Key Manager is distributed as a zip file containing:

| Filename | Description |
|:--- |:--- |
| `flowcrypt-email-key-manager.jar` | Runnable Java JAR
| `flowcrypt-email-key-manager.properties` | Default config
| `flowcrypt-email-key-manager-docs.md` | This documentation
| `LICENSE.txt` | License file (proprietary software)

For deployment, install OpenJDK JRE, unpack all files in a folder, and edit the properties file before running.

## Running the application

Start the EKM by running `java -jar flowcrypt-email-key-manager.jar`.

Default command is to start the server at `localhost:32356`. Other commands:

| Command | Description |
|:---------|:---------|
| `--version` | Print application version |
| `--help` | Print application help |
| `--test-store-connection` | Test connection to your HSM or KMS |
| `--export=<file>` | **NOT IMPLEMENTED** Export store contents to a json file. The exported data file is NOT encrypted, and therefore very sensitive. |
| `--import=<file>` | **NOT IMPLEMENTED** Import JSON data file into the store |

Command line options:

| Argument | Default | Description |
|:---------|:---------|:------------ |
| `--config=<cfg.properties>` | `flowcrypt-email-key-manager.properties` | config file path |


## Configuration

The sample configuration file appropriate for your software version will come distributed along with the jar file. It consists of several sections: Common, Store, Logger, Authentication, ACL. Each is described in detail below.

### Section: Common

General properties relating to basic configuration and how the app REST API is accessed.

| Property | Example | Description |
|:---------|:---------|:------------ |
| `api.hostname` | `localhost` | The host where the EKM will be deployed. |
| `api.port` | `443` | The listening port of EKM. |
| `api.https.enabled` | `true` | `true` to listen on https, `false` to listen on http (in which case you MUST use a HTTPS-enabled load balancer so that there are no API calls made in plain http, even over internal network.) |
| `api.https.key.file` | `keystore.p12` | (valid only if `api.https.enabled=true`) The keystore file containing the certificate to present to https requests. |
| `api.https.key.password` | `changeit` | (valid only if `api.https.enabled=true`) The password to access the keystore file. |
| `api.cors.origins` | `chrome-extension://...` | (Optional) CORS valid origins, comma separated. Comment out to accept requests from all origins. |
| `org.id` | `evaluation.org` | An identifier for your business that comes with your license. We will assign this to you. |
| `truststore.file` | `truststore.p12` | (Optional) Java trust store which holds public certificates/keys used to validate the cert of the server on the other end of the KMIP connection for key storage. Comment out line to use the JRE default trust store. |

### Section: Store

In production setup, EKM is not expected to be storing data internally. Instead it leverages your existing key storage infrastructure, over PKCS#11 v2.40 or KMIP v1.0 protocols.

Store options other than `Pkcs11Store` and `KmipStore` are only meant for early software evaluation and testing, and not supported for production environments.

| Property | Example | Description |
|:---------|:---------|:------------ |
| `store.type` | `Pkcs11Store` | Supported options are `Pkcs11Store` and `KmipStore`. Unsupported option for evaluation only is `EncryptedDbStore` |
| `store.pkcs11.module` | `./vendor-pkcs11.so` | (valid only if `store.type=Pkcs11Store`) Path to a pkcs#11 shared library. The library can be obtained from your HSM vendor |
| `store.pkcs11.pin` | `file://vendor-pkcs11.cfg` | (valid only if `store.type=Pkcs11Store`) PKCS#11 token pin. In the case of Fortanix and possibly other vendors, this is actually a path to a pkcs#11 config file |
| `store.kmip.hostname` | `kmipserver` | (valid only if `store.type=KmipStore`) The hostname of the KMIP server. |
| `store.kmip.port` | `5696` | (valid only if `store.type=KmipStore`) The listening port of the KMIP server. |
| `store.kmip.key.file` | `keystore.p12` | (valid only if `store.type=KmipStore`) The keystore file containing the certificate to present to the KMIP server on TLS handshake. |
| `store.kmip.key.password` | `changeit` | (valid only if `store.type=KmipStore`) The password to access the KMIP keystore file. |
| `store.db.folder` | `./data` | (valid only if `store.type=EncryptedDbStore`) Path to folder where data will be stored. |
| `store.db.encryption.key` | `changeit` | (valid only if `store.type=EncryptedDbStore`) This key becomes the AES symmetric key for database file is encrypted with. |

To test that the EKM can communicate with the store, run:

```shell
java -jar flowcrypt-email-key-manager.jar --test-store-connection
```

#### PKCS#11 integration

We develop and test our implementation against Equinix SmartKey (Fortanix SDKMS). For this we used their PKCS#11 shared library module (.so), accessed through `iaik.pkcs.pkcs11.wrapper` Java library. To connect our software to your PKCS#11 HSM, update `store.pkcs11.module` to point to module provided by your HSM vendor. 

To test your pkcs module, you can use pkcs11-tool on Ubuntu 18.04:

```shell
$ sudo apt-get -y install opensc
$ pkcs11-tool --module vendor-pkcs11.so --show-info
```

#### KMIP integration

Our implementation is tested against the PyKMIP server. While KMIP is a vendor-agnostic protocol, implementations do vary from vendor to vendor. When planning a PoC, please allow some time for us to test against and integrate with your particular KMIP vendor.

##### KMIP Authentication

KMIP authentication works in the following way: the server (your key store/HSM) as well as the client (in this case this EKM) each have their own TLS certificates. Each certificate must be mutually trusted to establish a connection. When configuring EKM, you can use the `truststore.file` to point to a file containing trusted certificates to validate KMIP server's credentials, preventing MITM. Likewise, your KMIP server should be configured to strictly verify the client's cert.

### Section: Logger

Define where application logging messages are written to (may use more than one logger type), and the logging level.

| Property | Example | Description |
|:---------|:---------|:------------ |
| `logger.types` | `StdoutLogger,SplunkHttpLogger` | One or more loggers (comma separated), options are `StdoutLogger`, `StackdriverLogger` or `SplunkHttpLogger` |
| `logger.default.level` | `info` | Only messages with logging level at or above this level will be displayed.  Options are `trace`, `debug`, `info`, `warn`, `error`. |
| `logger.stackdriver.credentials.file` | `/credentials.json` | (valid only if `logger.types=StackdriverLogger`) The StackDriver credentials file. |
| `logger.splunk.url` | `https://splunk-url:8088` | (valid only if `logger.types=SplunkHttpLogger`) The Splunk server base URL for the HTTP Event Collector. |
| `logger.splunk.token` | `327bfa46-...` | (valid only if `logger.types=SplunkHttpLogger`) The Splunk HTTP Event Collector enabled token. |
| `logger.splunk.disable.certificate.validation` | `false` | (valid only if `logger.types=SplunkHttpLogger`) Disables or enables certificate validation for the Splunk server (if https) - useful for debugging logging itself. |

### Section: Authenticator

The authenticator section configures an how client app user identity is verified. The only supported mechanism is `OpenIDConnectAuthenticator` for Google OpenID Connect. 

| Property | Example | Description |
|:---------|:---------|:------------ |
| `auth.type` | `OpenIDConnectAuthenticator` | Currently `OpenIDConnectAuthenticator` is the only authenticator option. User will be asked to authenticate themselves in the client app, and retrieved OpenID token will be used by EKM to authenticate the user. |
| `auth.openid.issuer` | `https://accounts.google.com` | Issuer of the authentication JWT token, currently only Google supported.  |
| `auth.openid.jwks` | `https://www.googleapis.com/oauth2/v3/certs` | The JWKS (JSON Web Key Set) containing the public keys to validate the authentication JWTs against.  |

Depending on size of deployment, we may consider adding support for other IdP.

### Section: ACL

In current implementation `SimpleAcl` is the only ACL option. Depending on the size of your deployment and your needs, we can integrate with your existing ACL service for a more fine-grained or dynamic access control.

| Property | Example | Description |
|:---------|:---------|:------------ |
| `acl.type` | `SimpleAcl` | Allows each user to only access their own private keys. Public keys can be accessed by anyone without authenticating. |

### Configuring Java keystore & truststore files

A Java keystore stores private key entries or TLS certificates. You can configure this EKM with two keystore files: `api.https.key.file` for HTTPS and `store.kmip.key.file` for KMIP connection TLS.

A truststore is the opposite – while a keystore holds onto keys/certificates that identify us, a truststore holds onto certificates that identify others. This is particularly important in the context of EKM because it needs to verify the identity of the KMIP store before storing sensitive data on it.  Java comes with a default truststore only containing public CAs. To use self-signed certificates, point to a custom truststore with a `truststore.file` property.

To create/edit a Java keystore file we'd recommend using [KeyStore Explorer](https://keystore-explorer.org/).  Please use PKCS#12 format for the keystore file.

## High availability / cluster deployment

Only supported when using `Pkcs11Store` or `KmipStore`. In such configuration, the EKM does not keep any local state on the machine it runs on. All actual data is stored on the configured data store.

The scaling/HA approach is the same as scaling a stateless web app backend - you scale by adding instances, with a http load balancer (such as HAProxy or NGINX) in front of them.

### Performance, throughput

TBD

## Deployment checklist

Follow the list below as you deploy the software, to ensure it is configured and monitored properly.

### Test data store connection

Once you [configure the Data Store](#section-store), you should test that the connection works:

```shell
java -jar flowcrypt-email-key-manager.jar --test-store-connection
```

This will connect to to the data store and issue one locate command to test that the connection between EKM and HSM is well configured. Successful output:

```
08:19:31.085 INFO  com.flowcrypt.utils.Reflection - Registering Pkcs11Store as Store implementation
08:19:31.101 INFO  c.f.keymanager.TestStoreConnection - initiating test
08:19:31.611 INFO  c.f.keymanager.TestStoreConnection - store session started successfully
08:19:31.616 INFO  c.f.keymanager.TestStoreConnection - testing store search command
08:19:33.007 INFO  c.f.keymanager.TestStoreConnection - round trip latency: 8ms
08:19:33.007 INFO  c.f.keymanager.TestStoreConnection - closing session
08:19:33.123 INFO  c.f.keymanager.TestStoreConnection - success
```

### Monitor node health

There are two endpoints for health checks, where you can issue HTTP GET:

1) `https://localhost:32356/` return status `code 200` if node is running, regardless if it can access data store
2) `https://localhost:32356/health` returns `code 200` if node is running AND it can access data store (tested by issuing a LOCATE store call). If the node is functional but cannot access the store, it will return `code 503`

If a node is reliably returning `code 200` on `/` but `code 503` on `/health`, then the store properties may be misconfigured or the store is unreachable. 

### Monitor error logs

After [setting up Logging](#section-logger), make sure to configure your existing logging infrastructure to alert you on error. To test the alerts, you can issue a HTTP GET request to `https://localhost:32356/error`

### Check API access safety

The API endpoint must NOT be accessible from public internet.

The client must be able to access the API over HTTPS. No part of your network should be transferring these API requests over plain HTTP. This means either using `api.https.enabled=true` directly, or `false` combined with a HTTPS-terminating reverse proxy on the same machine. 

### OpenJDK JVM options tuning

Since EKM is written in Kotlin running on the JVM, you may utilize any standard JVM args, such as: 

#### Proxy for outbound http traffic

This will [proxy all outgoing http requests](https://cr.openjdk.java.net/~iris/se/11/latestSpec/api/java.base/java/net/doc-files/net-properties.html). It should not affect backend connections over KMIP or PKCS#11 because they don't use the http protocol.

```shell
java -jar flowcrypt-email-key-manager.jar \
    -Dhttps.proxyHost=your-proxy-host \
    -Dhttps.proxyPort=443 \
    -Dhttp.nonProxyHosts="localhost|127.0.0.1|[::1]|someotherhost.dontproxyme.com"
```

Alternatively you can use `http.proxyHost` and `http.proxyPort` if your proxy does not use SSL. 

#### JVM Heap Size

Setting memory heap size with [-Xms and -Xmx](https://wiki.openjdk.java.net/display/zgc/Main) allows you to tune the resources available to the JVM.

```shell
java -jar flowcrypt-email-key-manager.jar -Xms16G -Xmx16G 
```  

## Troubleshooting

Below are common startup problems and how to resolve them.

| Message | How to fix |
|:--------|:-----------
| java.io.FileNotFoundException: flowcrypt-email-key-manager.properties | The application cannot find the properties file - please rename or create the file |
| \[xxx] is not a valid option for property \[yyy] | There is a typo or invalid option for the specified property.  Please select a valid value from the displayed options |
| Property '\[xxx]' not found | EKM is expecting a property to be defined in the properties file but it is not found.  Please create, or uncomment the line.
| UnrecoverableKeyException: failed to decrypt safe contents entry | This means the password for your Java keystore or truststore file is incorrect.
| ConnectException: Connection refused: connect | This message during startup means that one of the URLs in your properties file is down.  Check provided JWKS urls.

You can debug more complex issues by running with a `logger.default.level=FINE` property. For help or to report issues, please email `human@flowcrypt.com`


## Sample config file

```
### General ###

org.id=evaluation.org

api.hostname=localhost
api.port=32356
api.https.enabled=true
api.https.key.file=flowcrypt-email-key-manager.p12
api.https.key.password=password
api.cors.origins=chrome-extension://bnjglocicdkmhmoohhfkfkbbkejdhdgc,moz-extension://39553fca-76d4-4791-bf00-b4dfede6fd45

# Truststore is optional - if you want to override default JRE truststore, to verify KMIP server with custom cert
#truststore.file=truststore-to-verify-kmip-server.p12
#truststore.password=password


### Store ###

# keys stored in secure key storage over PKCS#11 protocol (eg Fortanix SDKMS or Equinix SmartKey or any compatible HSM)
store.type=Pkcs11Store
store.pkcs11.module=./vendor-pkcs11.so
store.pkcs11.pin=file://vendor-pkcs11.cfg

# keys stored in secure key storage over KMIP protocol (eg Gemalto Safenet KeySecure or any compatible HSM)
# remember to also set `truststore.file` above if KMIP server uses certs with custom CA
#store.type=KmipStore
#store.kmip.hostname=localhost
#store.kmip.port=5696
#store.kmip.key.file=localhost.p12
#store.kmip.key.password=password

# keys stored in local file encrypted database - NOT SUPPORTED FOR PROD, DO NOT RUN MORE THAN 1 INSTANCE
#store.type=EncryptedDbStore
#store.db.folder=./data
#store.db.encryption.key=


### Logger ###

# comma separated list - can have StdoutLogger, StackdriverLogger, SplunkHttpLogger
logger.types=StdoutLogger
# trace, debug, info, warn, error
logger.default.level=info
#logger.stackdriver.credentials.file=/etc/google/auth/application_default_credentials.json
#logger.splunk.url=https://splunk-instance:8088
#logger.splunk.token=327bfa46-...
#logger.splunk.disable.certificate.validation=true


### Authentication ###

auth.type=OpenIDConnectAuthenticator
auth.openid.issuer=https://accounts.google.com
auth.openid.jwks=https://www.googleapis.com/oauth2/v3/certs
auth.openid.audience=717284730244-ostjo2fdtr3ka4q9td69tdr9acmmru2p.apps.googleusercontent.com

### ACL ###

# Simple ACL allows each user to access their own private material
acl.type=SimpleAcl

```
