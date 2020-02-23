---
title: Managing Private keys with FlowCrypt
summary: Managing Private keys with FlowCrypt
toc: true
---

Your encrypted messages are protected by a Private Key, and the Private Key is protected by your Pass Phrase.

To be able to read encrypted messages on more than one device, you need a way to manage a backup of your Private Key. You can manage your backup:
 - automatically (FlowCrypt will store your pass phrase protected key in inbox)
 - manually (you save a file and take care of it yourself)
 - [enterprise customers](../business/enterprise.html): through your own key management system

## Default backup methods

If you have imported your Private Key from other software, it is assumed you will do your own Private Key management, and FlowCrypt will not perform any backups unless you explicitly ask it to.

If you let FlowCrypt create a key for you, the default option is to back up a protected key in your inbox, so that you can use FlowCrypt on another device just with your secret Pass Phrase. You can click `Show Advanced Settings` during setup for more options.

This is detailed in the [Privacy Policy - Handling of Private Keys{{site.data.i.external}}](https://flowcrypt.com/privacy#handling-of-private-keys).

{{site.data.box.tip}}
Enterprise customers can customize or entirely disable key backup for their users.
{{site.data.box.end}}

## Where can I find my Private Key?

To view it: `FlowCrypt Settings` -> `Additional Settings` -> `Public Key` -> `show private`

To export it: `FlowCrypt Settings` -> `Backup` -> `As a file`

## Where is FlowCrypt private key stored?

| FlowCrypt Browser Extension | Browser local extension storage ([Chrome{{site.data.i.external}}](https://developer.chrome.com/apps/storage), [Firefox{{site.data.i.external}}](https://developer.mozilla.org/en-US/docs/Mozilla/Add-ons/WebExtensions/API/storage/local)) |
| FlowCrypt Android App | Encrypted app storage |

Depending on how you set up FlowCrypt, there may also be a backup, see [default backup methods](#default-backup-methods) above.