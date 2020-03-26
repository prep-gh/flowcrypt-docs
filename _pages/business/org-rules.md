---
title: Enterprise customization with OrgRules
summary: Enterprise customization with OrgRules
toc: true
---

FlowCrypt allows enterprises to customize behavior of the FlowCrypt client with OrgRules, applied per email domain. All OrgRules are optional.

| OrgRule | Description |
|---|---|
|  `custom_keyserver_url` | `string`: url pointing to an internal public key server with SKS-like interface, such as [Hockeypuck](https://hockeypuck.github.io/) |
| `key_manager_url` | `string`: url pointing to an internal [Email Key Manager](/docs/technical/email-key-manager/latest/email-key-manager.html) |
| <span style="white-space:nowrap;">`disallow_attester_search_for_domains`</span> | `string[]`: do not search public keys of emails on these domains on FlowCrypt Attester (useful when you expect these public keys to be available on internal key server or key manager) |
| `enforce_keygen_algo` | `rsa2048,rsa4096,ecc25519`: Which key algorithm to use for new private key generation |
| `enforce_keygen_expire_months` | Choose to have keys expire within certain amount of time, commonly 24 months |
| `NO_PRV_CREATE` | Forbid creating new keypairs. User will be expected to import their key (manually import from a file or auto-import from [EKM](/docs/technical/email-key-manager/latest/email-key-manager.html) |
| `NO_PRV_BACKUP` | Do not allow any for of automatic or user-generated key backup except to an internal [EKM](/docs/technical/email-key-manager/latest/email-key-manager.html) if available |
| `PRV_AUTOIMPORT_OR_AUTOGEN` | If key is available on [EKM](/docs/technical/email-key-manager/latest/email-key-manager.html), import it automatically during setup. If not, generate one and store it onto [EKM](/docs/technical/email-key-manager/latest/email-key-manager.html) automatically |
| `PASS_PHRASE_QUIET_AUTOGEN` | Auto-generate pass phrase during setup and store it locally. This is used combined with `PRV_AUTOIMPORT_OR_AUTOGEN` to achieve user experience that does not involve pass phrases. |
| `ENFORCE_ATTESTER_SUBMIT` | Public key must be successfully submitted to Attester during setup |
| `NO_ATTESTER_SUBMIT` | Public key can never be submitted to Attester |
| `NO_KEY_MANAGER_PUB_LOOKUP` | Do not look up public keys on [EKM](/docs/technical/email-key-manager/latest/email-key-manager.html) even when available (useful if you expect that your users will need to use FlowCrypt from external network, without a VPN to reach EKM which runs on internal network) |
| `DEFAULT_REMEMBER_PASS_PHRASE` | Changes a setup checkbox default, in a way that browser will remember user pass phrase |
| `USE_LEGACY_ATTESTER_SUBMIT` | Deprecated |

All of the OrgRules above are available for FlowCrypt Browser Extension. Support on Android and iOS apps varies.

If you are looking to do a large deployment and would utilize an OrgRule that is not on the list, we may consider adding it. Email `human@flowcrypt.com`.
