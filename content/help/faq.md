---
title: Frequently asked questions
summary: FlowCrypt FAQ - Frequently Asked Questions
toc: true
---

## Encryption

### My contact sent me a public PGP key. How and where do I use it?

see [...] import public key

### Can recipient decrypt email when not using Gmail or Chrome?

> I opened Gmail in Mac Safari and the email was encrypted. I could not read it.
>
> But when I opened it in Chrome, it auto-decrypt and I could read the email.
> 
> Does this mean that when I send encrypted email and if the recipient uses Safari, he won't be able to read the email? And if he/she has FlowCrypt and Chrome, it will auto-decrypt?

When the recipient has FlowCrypt or any other compatible PGP software set up, they can read it anywhere they set it up. For example, you have set it up in your Chrome browser, which means you can read encrypted email in that browser. If there is an extension that works with Safari, you could set it up there, too. Our own product roadmap includes apps for Chrome, Firefox, Thunderbird, Outlook app, Android, iOS and more. You'll need to have some sort of compatible software on every platform that you plan to use encrypted messages on.

**However**, when you send someone an encrypted message and FlowCrypt Secure Compose window indicates that the recipient does not use encryption, the message will be encrypted using a different mechanism (simple password encryption). The recipient see a link in the they receive. Following the link will allow them to decrypt the message **if** they know the password that you encrypted the message with. Such messages can be opened using any modern browser, so it doesn't matter which browser or email provider the recipient uses.

In short, if someone has PGP set up, they can communicate with you smoothly only when using devices that they have it set up on. If they don't have anything set up, they can open your messages on any device, but they will need to know the password to open each message each time.

Last thing to note is that such simple password-protected messages expire (get deleted) in 3 days by default. Paid users can choose expiration date. Messages sent between users that have FlowCrypt or similar software set up on each side do not expire at all.


### Which messages will be encrypted? Do my friends have to use this too?

> Do I use all my messages in the secure compose now, or can I use the other compose as well? I'm unsure how the encryption works. Do I need to tell my friends to get the encryption thing too? Or does this encrypt all messages to and from people either way?

For each message, you get to choose if you want it encrypted or not. If you want the message encrypted, use Secure Compose, otherwise use the normal one.

You can send an encrypted message to anyone, but it's more convenient if the other side has encryption set up as well, because if they don't, you'll need to add a password to protect the message with, and the other person needs that password to open that message - that's too cumbersome for normal communication, but appropriate if you need to send something sensitive.

What I do is this:
 - if I know both of us use encryption, I'd use Secure Compose, becaause it's just as convenient and it's encrypted
 - if I'm sending something sensitive, I'd use Secure Compose even if the other person doesn't have encryption set up, and then communicate a password to them to use to open the message
 - everything else (chitchatting) I'll use standard compose

### Are attachments also encrypted?

Yes, both message and attachments are protected with end-to-end encryption.

### What happens when recipient doesn't use FlowCrypt or PGP?

You will be asked to [protect the ougoing message with a password](/docs/content/guide/send-and-receive/send-password-protected.html). The recipient will [need the password to open the message](/docs/content/guide/send-and-receive/open-password-protected.html).
[...] potentially replace with links

> I just received your message. I am really excited to start using this for my medical billing business. When someone receives an encrypted message from me, and they do not use FlowCrypt, how do they open the email?
> Sorry I am very new to this.

If they have no compatible plugin, you will be asked to protect the message with a one time password.

You'll need to communicate that password to the recipient(through some other means - do not use email). They receive a link, and will need that password to decrypt the message online.

### Do I have to set up FlowCrypt on every device?

> Hi, I setup FlowCrypt on a selection of work and personal gmail accounts via my laptop.
>
> On my PC I'm getting a prompt for setup again. Do I have to set it up on every device?
>
> if so, what does that mean for my public and private keys?
>
> thanks

Hello,

yes, you have to set it up on each device individually (you should do this on each device where you want to read your encrypted messages).

A thing to note is that you should not create a new private key on these devices. You should be automatically guided to import the key from your other device.

Depending on your setup, it will either find the appropriate key automatically (and you will only need your pass phrase), or it will ask you to export the key from the original device and import it on the new device during setup.


## Privacy

### Can Google read the contents?

FlowCrypt uses end-to-end encryption that is designed so that only you and your intended recipients can read it, not us and not Google.

When using FlowCrypt in the browser, decrypted messages are being displayed in a separate frame that Google doesn't have access to even if they deliberately tried to. They would first have to somehow update your browser to a different version that includes a deliberate vulnerability (assuming you are using Chrome), which is unlikely.

### Why does the extension need access to email inbox?

> Thanks for the great extension. I've just started using it (free tier for now). I might soon be able to drop Mailvelope/Thunderbird+GPG in favor of your app!
>
> It would be great to get more documentation on why the extension needs to get permission to access the mailbox. Assurance (I hope that's the case) that no outside system will use this access. In short, something more for the crypto/privacy inclined folks (which might be the primary user base) so that they feel better.

Some of what you're looking for is at <a href="https://flowcrypt.com/privacy">flowcrypt.com/privacy</a>

The access to Gmail is because FlowCrypt works a lot more like Thunderbird (that needs direct access to the mail server from your machine) although it's disguised as a Mailvelope-like plugin (for convenience).

This is to download and decrypt attachments as needed, look up contacts as you compose, or when a singed message fails verification, it will download it in raw format and verify again, as it may have been rendered with slight alterations, enough that the signature won't match if you try to verify it like Mailvelope does.

The email access tokens are kept strictly on your device, and will not be shared with anyone. It's just so that you can use the plugin just like any other email software.

### Will this plugin send my data to your server?

[...]

> I want to know If this plugin will send my data to your server?
>
> This plugin needs access to my inbox. Will it make a copy of my data and send to your server?

Your personal emails stay on your device. You can also see <a href="https://flowcrypt.com/privacy">flowcrypt.com/privacy</a>.

The only things that servers are needed for is the kind of things that make this work - eg when you are writing someone, the plugin will check with the servers to see if the other person is using encryption. The same way, when you installed it, it noted that your email is capable of receiving encrypted messages.

One exception is when you are using secure compose to write someone who doesn't use encryption and you are asked for a one-time password to protect the message. Such messages are relayed through FlowCrypt servers, but we don't have access to the content, because only you (and your recipient) will know the password it was protected with. Additionally, we only store them temporarily and delete them on a regular basis.

The reason the extension needs access to your email provider (eg Gmail) is that otherwise it would be impossible to send attachments, work with received attachments that are encrypted, etc. The access is strictly limited to your own device by design.

It's the same as setting up a new email client on your computer or phone - it will need access to your email to be able to pull the emails to your computer and show them to you (except in FlowCrypt's case, it also encrypts and decrypts them using PGP end-to-end encryption).

### Is access to Google Safe?


> FlowCrypt is asking me to connect the plugin to my Gmail account. Is it safe? Where can I read more about this?

It's the same as setting up a new email client on your computer or phone - it will need access to your email to be able to pull the emails to your computer and show them to you (except in FlowCrypt's case, it also encrypts and decrypts them using PGP end-to-end encryption).

There are a few resources that may help. One is <a href="https://flowcrypt.com/privacy">flowcrypt.com/privacy</a> (email access token section):

*ACCESS TOKEN needed to access user's email is exclusively stored in LOCAL APP on user's LOCAL MACHINE, no exceptions. ACCESS TOKEN is used solely within LOCAL APP for user authentication, sending and receiving of MESSAGES and other related actions that make LOCAL APP work smoothly.*

The privacy policy just puts into words what the code does. The code is here for review: <a href="https://github.com/FlowCrypt/">github.com/FlowCrypt</a>

Ideally you want to be using full-disk encryption on your laptop, and lock the computer when you leave it. Also, the moment you suspect your laptop stolen or tampered with, you should use another device to log into Google, go to "Connected Apps" and revoke access to "FlowCrypt". That will make these tokens useless.

Last one, you should not use any browser extension with over-reaching permissions such as "manage other extensions".
