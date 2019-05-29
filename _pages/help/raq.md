---
title: Rarely asked questions
summary: FlowCrypt RAQ - Rarely Asked Questions
toc: true
---

This is an assortment of questions that are less common.

## How to view message in original form without FlowCrypt?

> I want be able able to break out of FlowCrypt on the fly so I can fall back to normal gmail compose if needed.
>
> As it is, I appear to be forced in to the FlowCrypt secure compose when responding with contacts that could use PGP.

In a conversation that was originally encrypted, you can click `see original` green button on the top right.

There, you can also reply the standard way without encryption.


## Exporting a key from GPG Keychain / GPG Suite on a Mac

> I would like to export my key from GPG Suite on a Mac, what do I do?

If you want to re-use your key from GPG Keychain (which is a good idea), there should be a way how to get it out of it.

On your Mac, in GPG Keychain app, select the key that says `sec / pub` in the `type` column, then click `export` on the top.

Select ASCII format and save it into a file. Then open the file in a text editor and you should see a lot of garbled up text in it, starting with `-----BEGIN PGP PRIVATE KEY-----`. Copy everything in that file and paste it where FlowCrypt asks for it during setup.

If you have already set up FlowCrypt without the key, you can still go to `FlowCrypt Settings` -> `Additional Settings` -> `My Keys` -> `Add key` and add it there.

## Missing default Gmail signature in footer of message

> I could not see my default signature populated in the footer of this encrypted message. Do have to setup my signature again? 

Gmail does not share default signatures with 3rd party apps, so you will need to set the signature again for messages sent with FlowCrypt.

To set a footer, use the button marked in green below (this is the bottom of secure compose window): 

{{ "browser/compose/email-signature-footer-icon" | screenshot }}

Note that, when using FlowCrypt, attaching a signature in email footer for every outgoing message is a feature reserved for paid users.

## Password encrypted messages expiration - how does it work?

> I want to know what exactly the following means:
>
> "Password encrypted messages expire in x days"

Messages that you send to people who don't use encryption on their end will require that you add a password to protect them.

Such messages will be encrypted on your end using the password, then stored in encrypted form on FlowCrypt servers, then served to the recipient.

Unfortunately, many people will use fairly weak passwords. Given enough time and resources, someone could crack the messages with brute force.

That's why such messages expire. Once expired, they will not be served from our servers anymore, and within a month of expiration, they will be deleted off of our servers.

Some use cases require that the message is available longer then standard 3 day expiration. FlowCrypt paying users can set expiration time.

Messages sent between people who use encryption don't expire, because they are delivered over email like any other message, plus typically encrypted in a more secure way.

For more details and screenshots see [Sending and receiving encrypted email](/docs/guide/send-and-receive/index.html).

## Uninstall FlowCrypt

You can remove the extension from Chrome or Firefox (by right-clicking the icon in your browser and choosing `Remove Extension` or `Remove from Chrome`). Google access tokens are stored in your browser locally, and will be removed with the extension.

{{ "browser/remove-from-chrome" | screenshot }}

## Deleting account

If you have not enabled the 30 day trial and have not subsribed for a paid subscription, you don't have any account with us. We only create accounts when needed for billing purposes. To have your account deleted, please email `human@flowcrypt.com`.

Google permission tokens are removed along with the app when you [uninstall FlowCrypt](#uninstall-flowcrypt). You can also revoke the access tokens at [https://myaccount.google.com/permissions{{site.data.i.external}}](https://myaccount.google.com/permissions).

If you don't plan to continue using encryption, you can [hide your public key records{{site.data.i.external}}](https://flowcrypt.com/attester/update-public-keys?intention=delete).
