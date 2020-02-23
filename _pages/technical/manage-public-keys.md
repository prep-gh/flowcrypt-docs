---
title: Manual Public Key management
summary: Assigning public keys manually with FlowCrypt
toc: true
---

FlowCrypt is designed to make most Public Key operations automatic, so that a wider (non-technical) audience can benefit from encryption.

Public Key contains information about how to encrypt messages for you.

If the sender is using FlowCrypt, your Public Key will be loaded automatically when they compose a message to you. If all of your encrypted contacts use FlowCrypt, you will not have to worry about Public Key management.

## Sharing my Public Key manually

You have several options:
 - Share a link to your Public Key page: [https://flowcrypt.com/pub/human@flowcrypt.com](https://flowcrypt.com/pub/human@flowcrypt.com) (replace email address with your own) where the sender can download your Public Key themselves
 - or: save your Public Key to a file `FlowCrypt Settings` -> `Additional Settings` -> `Public Key` -> `Save Public Key to a file` and share the file with your recipient
 - or: attach your Public Key when [sending encrypted messsage](../guide/send-and-receive/send-to-other-pgp-software.html) by clicking the `PK` (meaning Public Key) button on the bottom right corner of `Secure Compose` (it should highlight in blue).

You only have to do this one time for each recipient that uses non-FlowCrypt OpenPGP software. After that, they will be able to send you encrypted messages.

## Importing other people's Public Keys

You may need to do this if your recipient uses other OpenPGP software. See [sending to other OpenPGP software](../guide/send-and-receive/send-to-other-pgp-software.html).

## Trust on First Use

Our software uses `TOFU: Trust on First Use` mechanism. From the moment you first load (set) your recipeint's Public Key (whether manually or automatically), it will not be replaced until you manually assign another public key to that recipient by clicking `Update Contact` on a recovered Public Key (or in FlowCrypt Settings).

Keys may however be automatically updated if a newer version of the same key was found on FlowCrypt Attester (for example, when key owner extends expiration of the key, or updates key users).

You have to manage your recipient's Public Keys separately on each device, without any sync mechanism across your devices. [Enterprise customers](../business/enterprise.html) may opt into cross-device Public Key synchronisation.

## Enterprise Public Key management

If you already have your own mechanism for keeping track of Public Keys of your employees and their contacts, FlowCrypt can integrate with your key server to offer a smooth and secure experience. See [Keyserver integration](keyserver-integration.html) and [FlowCrypt for Enterprise](../business/enterprise.html).

## Export all Public Keys from GPG (gnupg)

If you used other software that managed Public Keys for you using gnupg, you can use the command line to export your previous Public Keys for use in FlowCrypt:

```
gpg --export --armor > all-public-keys.asc
```

After that, you can import them in `FlowCrypt Settings` -> `Additional Settings` -> `Contacts` -> `Import public keys` -> `Select a file`.

This way FlowCrypt will know how to encrypt messages for all your contacts.

## Public Key Fingerprints and KeyWords

Fingerprints or KeyWords offer a way to verify and compare Public Keys.

It's useful as an additional layer of security for people who want to cross-check it.

When you use secure compose and you enter someone's email, you can hover over it to see their KeyWords. You could then get them on a phone to confirm that the KeyWords you see are the same as the KeyWords they see in their settings. With this, you can 100% verify that it will be encrypted for the right key.

{{site.data.box.info}}
If they don't use FlowCrypt, you will see their fingerprint. If they use FlowCrypt, you will see their KeyWords (similar thing represented differently).
{{site.data.box.end}}
