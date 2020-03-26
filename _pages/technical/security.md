---
title: FlowCrypt Security
summary: FlowCrypt Security
toc: true
---

This page is rather technical. See [Improve security of your system](/docs/guide/common-tasks/improve-security.html) for a more user-focused guide.

## Security overview

FlowCrypt uses OpenPGP to encrypt messages and attachments on user's device before transferring it over the network or storing with email provider, providing end-to-end encryption at rest as well as in transit.

This ensures that nobody other than the intended recipient and sender are able to read email contents.

Our software uses [OpenPGP.js{{site.data.i.external}}](https://github.com/openpgpjs/openpgpjs) which is receiving regular security reviews. We also contribute some of our code back to OpenPGP.js for the benefit of other software vendors.

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

The same applies to encrypted drafts. Drafts are encrypted using sender's Public Key.

## Key strength and default options

Currently, when creating a new key, the default is `2048bit RSA` on FlowCrypt Browser Extension and `ECC curve25519` for keys created in the Android or iOS Apps.

{{site.data.box.info}}
We are planning to allow user to choose key type during setup.
[Enterprise customers](../business/enterprise.html) may choose their desired key type and strength across their organisation.
{{site.data.box.end}}

When importing a key, FlowCrypt will use any compatible key supplied by user.

## Key Management

See [Public Key Management](manage-public-keys.html) and [Manage Private Keys](manage-private-keys.html).

## Hardware tokens

We are planning to add support for hardware tokens (smartcards) such as Yubikey, ZeitControl or any other pkcs#11 compatible security token that can handle OpenPGP keys.

<form class="waitlist">
  Join the waitlist: 
  <input type="email" class="input_email" placeholder="Your email address" value="" />
  <input type="hidden" class="input_waitlist" value="hardware_key" />
  <button>Get Notified</button>
</form>
<script src="https://flowcrypt.com/js/pages/waitlist.js?version=68"></script>

If you are an enterprise customer looking to deploy FlowCrypt and you are blocked on missing hardware token support, please email us at `human@flowcrypt.com` about your organization, amount of seats required and what kind of smartcard and opearating system you use. We will do our best to cater to your needs.

## EFAIL mitigation

Published in 2018, EFAIL describes a class of attacks affecting email encryption software. FlowCrypt is safe from these attacks. When user receives a modified (potentially dangerous) encrypted message, such message will not be automatically rendered. Instead, user will see a security warning, and an option to decrypt such message manually.

## Public Source Code

Our source code is publicly available for review at [github.com/FlowCrypt{{site.data.i.external}}](https://github.com/FlowCrypt/).

## What's next

Ask `human@flowcrypt.com` if you have any security related questions.
