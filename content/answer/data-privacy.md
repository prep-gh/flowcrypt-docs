---
Title: Will this plugin send my data to your server?
Template: article
Description: FlowCrypt PGP Email Encryption Knowledge Will this plugin send my data to your server?
---

# Will this plugin send my data to your server?

> I want to know If this plugin will send my data to your server?
>
> This plugin needs access to my inbox. Will it make a copy of my data and send to your server?

Your personal emails stay on your device. You can also see <a href="/privacy">flowcrypt.com/privacy</a>.

The only things that servers are needed for is the kind of things that make this work - eg when you are writing someone, the plugin will check with the servers to see if the other person is using encryption. The same way, when you installed it, it noted that your email is capable of receiving encrypted messages.

One exception is when you are using secure compose to write someone who doesn't use encryption and you are asked for a one-time password to protect the message. Such messages are relayed through FlowCrypt servers, but we don't have access to the content, because only you (and your recipient) will know the password it was protected with. Additionally, we only store them temporarily and delete them on a regular basis.

The reason the extension needs access to your email provider (eg Gmail) is that otherwise it would be impossible to send attachments, work with received attachments that are encrypted, etc. The access is strictly limited to your own device by design.

It's the same as setting up a new email client on your computer or phone - it will need access to your email to be able to pull the emails to your computer and show them to you (except in FlowCrypt's case, it also encrypts and decrypts them using PGP end-to-end encryption).