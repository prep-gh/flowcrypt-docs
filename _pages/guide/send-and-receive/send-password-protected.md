---
title: Send to user who doesn't use encryption
summary: Send to anyone else
toc: true
---

Not all recipients have OpenPGP software installed when you want to email them. Having encryption set up on both ends offers the most convenient experience, but there is also a mechanism to send encrypted messages to others: password encrypted messages.

{{site.data.box.info}}
Password encrypted messages will be encrypted on the sender's device, transferred through our servers encrypted, and then delivered to your recipient's browser. Your recipient will need to have the password to decrypt the message in their browser.
{{site.data.box.end}}

By default, we expire these messages within 3 days of sending, and then delete them from our servers [not long after](https://flowcrypt.com/privacy#message-delivery-and-storage). This is done to protect users who may have used a weak password.

Conversely, messages sent between users who use FlowCrypt or other OpenPGP software (when recipient's Public Key is known) will be transferred directly through email providers like any other email, except encrypted, and will never expire.

## Sending a password protected message

Open [https://mail.google.com&nbsp;<i class='fa fa-external-link'></i>](https://mail.google.com){:target="_blank"} in the same browser where you installed FlowCrypt.

{{ "browser/gettingstarted/clicksubjectattest" | screenshot }}

Click `Secure Compose` just above the standard Gmail Compose button. The Secure Compose window will show up:

{{ "browser/sendingencryptedemailattachment/clicksecurecompose" | screenshot }}

Add recipient email address. If the recipient does not have Flowcrypt installed, the email address will be displayed as grey, suggesting that a message password is needed to send this message.

{{ "browser/settingupFCwithprivatekey/emailtononflowcryptuser" | screenshot }}

On the bottom, enter a `one time password` in the input field. Message password should be something that you can share with the recipient.

{{site.data.box.warning}}
Do not use your Pass Phrase (that you chose during FlowCrypt Setup). Use some other password that you can share with others.
{{site.data.box.end}}

Finally, click `Encrypt and Send`.

{{ "browser/settingupFCwithprivatekey/clickencryptandsendtononFCuser" | screenshot }}

## How to communicate a message password to recipient?

> I sent an encrypted email. It had me choose a one time password for the recipient to use to access the email. How do I inform the recipient of the one time password in a secure way?

It depends on your use case and the relationship with the recipient. You could communicate it over a phone call - that's about the best.

WhatsApp or Signal are great apps for tis because they are encrypted.

For less sensitive things, you could send the password over some other medium such as text, Skype, etc.

{{site.data.box.warning}}
Do not send one-time passwords over email.
{{site.data.box.end}}

## What will the recipient see and how to open

See [Opening password protected message](open-password-protected.html)