---
title: FlowCrypt OpenPGP Compatibility
summary: FlowCrypt OpenPGP Compatibility
---

FlowCrypt aims to become fully compatible with all OpenPGP compliant email software out there.

Please let us know if you encounter any issues so that we can promptly fix them.

## Interoperability with other software

White spaces mean we have not tested this or did not hear from any user who tested it.

<span style="color: green">✓</span> and <span style="color: red">✕</span> means we tested it or heard from a user who has.


{:class="vertical"}
| | <span><span>Enigmail</span></span> | <span><span>ProtonMail</span></span> | <span><span>GPG Suite</span></span> | <span><span>Symantec Encryption Des.</span></span> | <span><span>gpg4o</span></span> | <span><span>AirMail</span></span> | <span><span>Encryptomatic</span></span> | <span><span>eM</span></span> | <span><span>gpg4win / GpgOL</span></span> | <span><span>k-9</span></span> | <span><span>Mailvelope</span></span> | <span><span>Open Keychain</span></span> | <span><span>p≡p (pEp)</span></span> |
|---|---|
| Import Private Key from | <span style="color: green">✓</span> | <small>n/a<small> | <span style="color: green">✓</span> | <span style="color: green">✓</span> |  |  |  |  |  | <span style="color: green">✓</span> | <span style="color: green">✓</span> | <span style="color: green">✓</span> | |
| Import Public Key from | <span style="color: green">✓</span> | <span style="color: green">✓</span> | <span style="color: green">✓</span> | <span style="color: green">✓</span> | <span style="color: green">✓</span> | <span style="color: green">✓</span> | <span style="color: green">✓</span> | <span style="color: green">✓</span> | <span style="color: green">✓</span> | <span style="color: green">✓</span> | <span style="color: green">✓</span> | <span style="color: green">✓</span> | |
| Read messages by | <span style="color: green">✓</span> | <span style="color: green">✓</span> | <span style="color: green">✓</span> | <span style="color: green">✓</span> | <span style="color: green">✓</span> | <span style="color: green">✓</span> | <span style="color: green">✓</span> | <span style="color: green">✓</span> | <span style="color: green">✓</span> | <span style="color: green">✓</span> | <span style="color: green">✓</span> | <span style="color: green">✓</span> | <span style="color: green">✓</span>
| Send messages to | <span style="color: green">✓</span> | <span style="color: green">✓</span> | <span style="color: green">✓</span> | <span style="color: green">✓</span> | <span style="color: green">✓</span> | <span style="color: red">✕</span> | <span style="color: green">✓</span> | <span style="color: red">✕</span> | <span style="color: green">✓</span> | <span style="color: green">✓</span> | <span style="color: green">✓</span> | <span style="color: green">✓</span> | <span style="color: red">✕</span> |
| Send attachment to | <span style="color: green">✓</span> | <span style="color: green">✓</span> | <span style="color: green">✓</span> | <span style="color: green">✓</span> | <span style="color: green">✓</span> |  | <span style="color: green">✓</span> |  | <span style="color: green">✓</span> | <span style="color: green">✓</span> | <span style="color: green">✓</span> |  | |
| Receive attachment from | <span style="color: green">✓</span> | <span style="color: green">✓</span> | <span style="color: green">✓</span> | <span style="color: green">✓</span> | <span style="color: green">✓</span> |  | <span style="color: green">✓</span> |  | <span style="color: green">✓</span> | <span style="color: green">✓</span> | <span style="color: green">✓</span> |  | |
| Unicode interoperability | <span style="color: green">✓</span>* | <span style="color: green">✓</span> | <span style="color: green">✓</span> | <span style="color: green">✓</span> | <span style="color: green">✓</span> |  |  |  |  | | <span style="color: green">✓</span> | | |

**Unicode compatibility between Enigmail and FlowCrypt is well tested, but we have heard of one instance where our Android app was not able to read Japanese text produced by Enigmail, that we were not able to properly investigate. If you experience any issues, please read [compatibility issue - incoming email](http://localhost:4000/docs/content/troubleshoot/compatibility.html#incoming-email-from-other-software) and see if you can get us a sample.*

Please help us complete the table above if you have tested any combinations that we haven't. You can use the `Contribute` button, or email us at `human@flowcrypt.com`.

## Feature availability

{:class="vertical"}
|  | <span><span>FlowCrypt Browser Ext.</span></span> | <span><span>FlowCrypt Android App</span></span> | |
|---|---|
| Encrypt messages | <span style="color: green">✓</span> | <span style="color: green">✓</span> | |
| Decrypt inline | <span style="color: green">✓</span> | <span style="color: green">✓</span> | |
| Decrypt pgp/mime | <span style="color: green">✓</span> | <span style="color: green">✓</span> | |
| Attachments | <span style="color: green">✓</span> | <span style="color: gray">●</span> | Android attachments limited to 3MB while in Beta|
| Import Private Key | <span style="color: green">✓</span> | <span style="color: green">✓</span> | |
| Import Public Key | <span style="color: green">✓</span> | <span style="color: green">✓</span> | |
| Sign a message | <span style="color: green">✓</span> | <span style="color: red">✕</span> | |
| Sign encrypted message | <span style="color: red">✕</span> | <span style="color: red">✕</span> | [issue tracker](https://github.com/FlowCrypt/flowcrypt-browser/issues/1080) |
| Send pgp/mime | <span style="color: red">✕</span> | <span style="color: red">✕</span> | [issue tracker](https://github.com/FlowCrypt/flowcrypt-browser/issues/1620) |
| 2048bit, 4096bit RSA | <span style="color: green">✓</span> | <span style="color: green">✓</span> | |
| ECC keys | <span style="color: green">✓</span> | <span style="color: green">✓</span> | |
| Use of public keys without a self signature | <span style="color: red">✕</span> | <span style="color: red">✕</span> | [issue tracker](https://github.com/FlowCrypt/flowcrypt-browser/issues/1158) |
| Decrypt messages without MDC | <span style="color: gray">●</span> | <span style="color: gray">●</span> | Only manually, after a warning |


## Implementation

Our software is uses on [OpenPGP.js](https://github.com/openpgpjs/openpgpjs) on all platforms.