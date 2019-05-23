---
title: FlowCrypt Security
summary: FlowCrypt Security
toc: true
---

## Security overview

FlowCrypt uses OpenPGP to encrypt messages and attachments on user's device before transferring it over the network or storing with email provider, providing end-to-end encryption at rest as well as in transit.

This ensures that nobody other than the intended recipient and sender are able to read email contents.

Our software uses [OpenPGP.js&nbsp;<i class='fa fa-external-link'></i>](https://github.com/openpgpjs/openpgpjs) which is receiving regular security reviews. We also contribute some of our code back to OpenPGP.js for the benefit of other software vendors.

## What is encrypted

The following table shows which email parts are encrypted for outgoing messages.

| Data | Encrypted | Customization |
|---|---|
| Email text body | {{site.data.i.ok}} | |
| Attachment data | {{site.data.i.ok}} | |
| Subject | {{site.data.i.not}} | [Enterprise customers](../business/enterprise.html) can customize | 
| Attachment name | {{site.data.i.not}} | [Enterprise customers](../business/enterprise.html) can customize | 
| Email footer | {{site.data.i.not}} | [Enterprise customers](../business/enterprise.html) can customize |
| Recipients and other headers | {{site.data.i.not}} | |

## Key strength and default options

Currently, when creating a new key, the default is `4096bit RSA` on FlowCrypt Browser Extension and `2048bit RSA` for keys created in the Android App.

{{site.data.box.info}}
We are planning to change the default to `2048bit RSA` + `ECC curve25519` combo for newly created keys, with an option to adjust it during setup. [Enterprise customers](../business/enterprise.html) may choose their desired key type and strength across their organisation.
{{site.data.box.end}}

When importing a key, FlowCrypt will use any compatible key supplied by user.

## Key Management

See [Public Key Management](manage-public-keys.html) and [Manage Private Keys](manage-private-keys.html).

## Public Source Code

Our source code is publicly available for review at [github.com/FlowCrypt&nbsp;<i class='fa fa-external-link'></i>](https://github.com/FlowCrypt/).

## What's next

Ask `human@flowcrypt.com` if you have any security related questions.