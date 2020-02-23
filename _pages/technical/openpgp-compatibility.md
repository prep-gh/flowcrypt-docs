---
title: FlowCrypt OpenPGP Compatibility
summary: FlowCrypt OpenPGP Compatibility
toc: true
---

FlowCrypt aims to become fully compatible with all OpenPGP compliant email software out there.

Please let us know if you encounter any issues so that we can promptly fix them.

## Interoperability with other software

White spaces mean we have not tested this or did not hear from any user who tested it.

{{site.data.i.ok}} and {{site.data.i.not}} means we tested it or heard from a user who has.


{:class="vertical"}
| | <span><span>Enigmail</span></span> | <span><span>ProtonMail</span></span> | <span><span>GPG Suite</span></span> | <span><span>Symantec Encryption Des.</span></span> | <span><span>gpg4o</span></span> | <span><span>Encryptomatic</span></span> | <span><span>eM</span></span> | <span><span>gpg4win / GpgOL</span></span> | <span><span>k-9</span></span> | <span><span>Mailvelope</span></span> | <span><span>Open Keychain</span></span> | <span><span>p≡p (pEp)</span></span> |
|---|---|
| Import Private Key from | {{site.data.i.ok}} | <small>n/a<small> | {{site.data.i.ok}} | {{site.data.i.ok}} |  |  |  |  | {{site.data.i.ok}} | {{site.data.i.ok}} | {{site.data.i.ok}} | |
| Import Public Key from | {{site.data.i.ok}} | {{site.data.i.ok}} | {{site.data.i.ok}} | {{site.data.i.ok}} | {{site.data.i.ok}} | {{site.data.i.ok}} | {{site.data.i.ok}} | {{site.data.i.ok}} | {{site.data.i.ok}} | {{site.data.i.ok}} | {{site.data.i.ok}} | |
| Read messages by | {{site.data.i.ok}} | {{site.data.i.ok}} | {{site.data.i.ok}} | {{site.data.i.ok}} | {{site.data.i.ok}} | {{site.data.i.ok}} | {{site.data.i.ok}} | {{site.data.i.ok}} | {{site.data.i.ok}} | {{site.data.i.ok}} | {{site.data.i.ok}} | {{site.data.i.ok}}
| Send messages to | {{site.data.i.ok}} | {{site.data.i.ok}} | {{site.data.i.ok}} | {{site.data.i.ok}} | {{site.data.i.ok}} | {{site.data.i.ok}} | {{site.data.i.not}} | {{site.data.i.ok}} | {{site.data.i.ok}} | {{site.data.i.ok}} | {{site.data.i.ok}} | {{site.data.i.not}} |
| Send attachment to | {{site.data.i.ok}} | {{site.data.i.ok}} | {{site.data.i.ok}} | {{site.data.i.ok}} | {{site.data.i.ok}} | {{site.data.i.ok}} |  | {{site.data.i.ok}} | {{site.data.i.ok}} | {{site.data.i.ok}} | | |
| Receive attachment from | {{site.data.i.ok}} | {{site.data.i.ok}} | {{site.data.i.ok}} | {{site.data.i.ok}} | {{site.data.i.ok}} | {{site.data.i.ok}} |  | {{site.data.i.ok}} | {{site.data.i.ok}} | {{site.data.i.ok}} |  | |
| Unicode interoperability | {{site.data.i.ok}} | {{site.data.i.ok}} | {{site.data.i.ok}} | {{site.data.i.ok}} | {{site.data.i.ok}}  |  |  |  | | {{site.data.i.ok}} | | |

Please help us complete the table above if you have tested any combinations that we haven't. You can use the `Contribute` button, or email us at `human@flowcrypt.com`.

### Special settings to improve compatibility 

| Software | Notes |
|---|---|
| Mutt | To read PGP/inline messages, add `set pgp_auto_decode=yes` line in `.muttrc` |

## Feature availability

{:class="vertical"}
|  | <span><span>FlowCrypt Browser Ext.</span></span> | <span><span>FlowCrypt Android App</span></span> | <span><span>FlowCrypt iOS App</span></span> | |
|---|---|
| Encrypt messages | {{site.data.i.ok}} | {{site.data.i.ok}} | {{site.data.i.ok}} | |
| Decrypt inline | {{site.data.i.ok}} | {{site.data.i.ok}} | {{site.data.i.ok}} | |
| Decrypt pgp/mime | {{site.data.i.ok}} | {{site.data.i.ok}} | {{site.data.i.ok}} | |
| Attachments | {{site.data.i.ok}} | <span style="color: gray">●</span> | {{site.data.i.not}} | Android attachments up to 3MB for now |
| Import Private Key | {{site.data.i.ok}} | {{site.data.i.ok}} | {{site.data.i.ok}} | |
| Import Public Key | {{site.data.i.ok}} | {{site.data.i.ok}} | {{site.data.i.not}} | Planned on iOS |
| Sign a message | {{site.data.i.ok}} | {{site.data.i.not}} | {{site.data.i.not}} | |
| Sign encrypted message | {{site.data.i.ok}} | {{site.data.i.not}} | {{site.data.i.not}} |  |
| Send pgp/mime | {{site.data.i.not}} | {{site.data.i.not}} | {{site.data.i.not}} | Planned on Android and iOS |
| 2048bit, 4096bit RSA | {{site.data.i.ok}} | {{site.data.i.ok}} | {{site.data.i.ok}} | |
| ECC keys | {{site.data.i.ok}} | {{site.data.i.ok}} | {{site.data.i.ok}} | |
| Use of public keys without a self signature | {{site.data.i.not}} | {{site.data.i.not}} | {{site.data.i.not}} | [issue tracker{{site.data.i.external}}](https://github.com/FlowCrypt/flowcrypt-browser/issues/1158) |
| Decrypt messages without MDC | <span style="color: gray">●</span> | <span style="color: gray">●</span> | {{site.data.i.not}} | Only manually, after a warning |


## Implementation

Our software uses [OpenPGP.js](https://github.com/openpgpjs/openpgpjs) on all platforms.
