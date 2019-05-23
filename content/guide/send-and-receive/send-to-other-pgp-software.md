---
title: Send to other OpenPGP software
summary: Sending to other PGP software
toc: true
---

Often times, if your recipient's Public Key is available publicly, FlowCrypt will be able to load it automatically. See [FlowCrypt Attester](https://flowcrypt.com/attester/) in which case the steps will be the same as when [sending to FlowCrypt recipient](send-to-flowcrypt.html).

Sometimes though, their Public Key cannot be determined automatically, and you may need to load your recipient's Public Key before you can send them first encrypted message. This is only needed one time per recipient.

## Loading received Public Key

If the recipient has already sent your their Public Key over email, you should see a `Save Contact` button. Clicking it will associate their Public Key with the email listed in it, allowing you to send them encrypted messages. See [OpenPGP Compatibility](../../technical/openpgp-compatibility.html).

{{ "compose/received-public-key" | screenshot }}

Once you click the `Save Contact` button, you can [send them encrypted emails](send-to-flowcrypt.html) the same way as if they used FlowCrypt.

## Assigning public key in Secure Compose

If you have received the recipient's Public Key through some other means (eg from their website), you can start by clicking `Secure Compose` and entering their email address. It will show in grey color, meaining that their Public Key is not yet known:

{{ "compose/add-their-public-key-button" | screenshot }}

Please click the `add their Public Key` button as highlighted above, and you will see:

{{ "compose/add-their-public-key-form" | screenshot }}

You can paste their Public Key into the form above, click `OK` and continue composing your encrypted message.

## Manage contact Public Keys and bulk import

You can add, remove and replace your recipient's public keys in `FlowCrypt Settings` -> `Additional Settings` -> `Contacts`.

If you have a large set Public Keys provided to you by your previous OpenPGP software or by your team, you can import them in see `FlowCrypt Settings` -> `Additional Settings` -> `Contacts` -> `Import Public Keys`.

See [Manage Public Keys](../../technical/manage-public-keys.html) for technical details.