---
title: Frequently asked questions
summary: FlowCrypt FAQ - Frequently Asked Questions
toc: true
---

## Encryption

### Are attachments also encrypted?

Yes, both message and attachments are protected with end-to-end encryption.

### My contact sent me a public PGP key. How and where do I use it?

See [sending encrypted messages to users of other OpenPGP software](/docs/guide/send-and-receive/send-to-other-pgp-software.html)

### What happens when recipient doesn't use FlowCrypt or OpenPGP?

You will be asked to [protect the ougoing message with a password](/docs/guide/send-and-receive/send-password-protected.html). The recipient will [need the password to open the message](/docs/guide/send-and-receive/open-password-protected.html).

### Do I have to set up FlowCrypt on every device?

Every device where you want to read encrypted email. See [Set up FlowCrypt on another device](/docs/guide/setup/another-device.html).

### Which messages will be encrypted? Do my contacts have to use this too?

> Do I use all my messages in the secure compose now, or can I use the other compose as well? I'm unsure how the encryption works. Do I need to tell my friends to get the encryption thing too? Or does this encrypt all messages to and from people either way?

For each message, you get to choose if you want it encrypted or not. If you want the message encrypted, use Secure Compose, otherwise use the normal one. You can send an encrypted message to anyone, but it's more convenient if the other side has encryption set up too. See sending to [users who have encryption set up](/docs/guide/send-and-receive/send-to-flowcrypt.html) and [users who don't](/docs/guide/send-and-receive/send-password-protected.html).

### Can recipient decrypt email when not using Gmail or Chrome?

> I opened Gmail in Mac Safari and the email was encrypted. I could not read it. But I can read it in Chrome.
> 
> Does it mean that when I send encrypted email and if the recipient uses Safari, he won't be able to read the email?
>
> And if he/she has FlowCrypt and Chrome, it will auto-decrypt?

Messages sent between users who both have encryption set up will not be readable without encryption software (and appropriate Private Key and Pass Phrase). If there is an extension that works with Safari, you could set it up there, too. Our own product roadmap includes apps for Chrome, Firefox, Thunderbird, Outlook app, Android, iOS and more. You'll need to have some sort of compatible software on every platform that you plan to use encrypted messages on.

**However**, there is a mechanism to send encrypted messages to users who don't use any special software: [password encrypted messages](/docs/guide/send-and-receive/send-password-protected.html). Such messages can be read on any modern browser, any email client, any device, as long as the recipient has the password that was used to send it.

In short, if someone has PGP set up, they can communicate with you smoothly only when using devices that they have it set up on. If they don't have anything set up, they can open your messages on any device, but they will need to know the password to open each message each time.

## Privacy and Safety

### Can my email provider (eg Google) read the contents?

FlowCrypt uses end-to-end encryption that is designed so that only you and your intended recipients can read it, not us and not Google or other email providers.

When using FlowCrypt in the browser, decrypted messages are being displayed in a separate frame that Google doesn't have access to even if they deliberately tried to. They would first have to somehow update your browser to a different version that includes a deliberate vulnerability (assuming you are using Chrome), which is unlikely. On Android, it's using a completely separate Android App to access and encrypt your email, which is even more secure.

### Is access to Google Safe?

> FlowCrypt is asking me to connect the plugin to my Gmail account. Is it safe? Where can I read more about this?

Any email client that you set up on your computer or phone needs to pull emails from your email provider to your device and show them to you (except in FlowCrypt's case, it also encrypts and decrypts them using PGP end-to-end encryption).

FlowCrypt software on your device will request access tokens from your email provider to:
 - [download and decrypt messages](/docs/guide/send-and-receive/open-email-with-flowcrypt.html) and attachments
 - [send messages](/docs/guide/send-and-receive/index.html)
 - [backup, restore](/docs/technical/manage-private-keys.html#default-backup-methods) and other user-initiated actions within the app

The email access tokens are kept strictly on your device, and will not be shared with us or anyone else. From our [Privacy Policy](https://flowcrypt.com/privacy#email-access-token): 

*The tokens are then exclusively stored in Local App on user’s Local Machine, no exceptions. Access Token is used solely within Local App for user authentication, sending and receiving of Encrypted Messages and other related actions that make Local App work smoothly.*

The privacy policy puts into words what our code does. The code is available for your review: [github.com/FlowCrypt{{site.data.i.external}}](https://github.com/FlowCrypt/)

### Will this plugin send my data to your server?

Your email data [stays on your device{{site.data.i.external}}](https://flowcrypt.com/privacy) except: when you use Secure Compose to [write someone who doesn't use encryption](/docs/guide/send-and-receive/send-password-protected.html), such messages are relayed through FlowCrypt servers. We don't have access to the content, because only you (and your recipient) will know the password it was protected with. Additionally, we only store them temporarily and delete them on a regular basis.

Also, when you write someone using Secure Compose, FlowCrypt software will check with our servers to see if the other person is using encryption. The same way, when you installed it, it noted that your email is capable of receiving encrypted messages. See [FlowCrypt Attester{{site.data.i.external}}](https://flowcrypt.com/attester/).
