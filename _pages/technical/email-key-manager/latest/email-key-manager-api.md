---
title: FlowCrypt Email Key Manager API
summary: FlowCrypt Email Key Manager API
toc: true
---


Default host is `http://localhost:32356`. This API is meant to be called by FlowCrypt client apps:
 - FlowCrypt Browser Extension
 - FlowCrypt Android App
 - FlowCrypt iOS App
 
This is an API spec. For a higher level overview, see [Email Key Manager](email-key-manager.html).

## Authentication

Privileged endpoints are authenticated using HTTP `Authorization` header `Bearer <id_token>`. 

Authenticated users may access their own private material. Anyone may access any public material.

## Endpoints

This is a HTTP REST API, that accepts JSON (when request body is expected) and responds with JSON.

### EKM Environment Info: `GET /`

Check this endpoint to verify that the service is up. It will return HTTP 200 OK regardless if data store can be reached.

```shell
curl \
  http://localhost:32356/
```

```json
{
  "service": "email-key-manager",
  "orgId": "evaluation.org",
  "authenticator": "NeverAuthenticator",
  "acl": "SimpleAcl",
  "store": "JsonStore"
} 
```

### Health check: `GET /health`

Check this endpoint to verify that data store is reachable, in which case it will return http 200, else http 503.

```shell
curl \
  http://localhost:32356/health
```

```json
{
  "storeType": "JsonStore",
  "storeStatus": "up"
} 
```

### Error logging test: `GET /error`

Manually call this endpoint to verify that your own logging and monitoring infrastructure will notify you about exceptions.

```shell
curl \
  http://localhost:32356/error
```

```json
{
  "code": 500,
  "message": "Intentional unhandled exception to test logging integration",
  "details": "..."
} 
```

Standard http status codes are used in HTTP response code as well as in response body, commonly `200`, `404`, `400`, `401`, `403`, `503`.

Every error `500`, except when calling `/error` endpoint, is undesired and should be reported to us, so that we can either address it or return a more appropriate error code.


### Retrieve public keys: `GET /keys/public/:email`

```shell
curl \
  http://localhost:32356/keys/public/user@evaluation.org
```

```json
{
  "publicKeys": [
    {"publicKey": "-----BEGIN PGP PUBLIC KEY BLOCK-----\n\n..."}
  ]
}
```

When no keys are found: `{"publicKeys":[]}` with http status `200`.

### Retrieve private keys: `GET /keys/private` (authenticated)

```shell
curl \
  -H 'Authorization: Bearer ey...' \
  http://localhost:32356/keys/private
```

```json
{
  "privateKeys": [
    {"decryptedPrivateKey": "-----BEGIN PGP PRIVATE KEY BLOCK-----\n\n..."}
  ]
}
```

When no keys are found: `{"privateKeys":[]}` with http status `200`.

### Store or update key pair: `PUT /keys/private` (authenticated)

Upsert a key, de-duplicated by OpenPGP fingerprint.

```shell
curl \
  -XPUT \
  -H 'Authorization: Bearer ey...' \
  --data '{"decryptedPrivateKey": "-----BEGIN PGP PRIV..", "publicKey": "-----BEGIN PGP PUB..", "fingerprint": "..."}' \
  http://localhost:32356/keys/private
```

```json
{}
```
