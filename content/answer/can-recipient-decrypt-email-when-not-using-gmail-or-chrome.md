---
Title: Can recipient decrypt email when not using Gmail or Chrome?
Template: article
Description: FlowCrypt PGP Email Encryption Knowledge Base: Can recipient decrypt email when not using Gmail or Chrome
---

# Can recipient decrypt email when not using Gmail or Chrome?

> I opened Gmail in Mac Safari and the email was encrypted. I could not read it.
>
> But when I opened it in Chrome, it auto-decrypt and I could read the email.
> 
> Does this mean that when I send encrypted email and if the recipient uses Safari, he won't be able to read the email? And if he/she has FlowCrypt and Chrome, it will auto-decrypt?

When the recipient has FlowCrypt or any other compatible PGP software set up, they can read it anywhere they set it up. For example, you have set it up in your Chrome browser, which means you can read encrypted email in that browser. If there is an extension that works with Safari, you could set it up there, too. Our own product roadmap includes apps for Chrome, Firefox, Thunderbird, Outlook app, Android, iOS and more. You'll need to have some sort of compatible software on every platform that you plan to use encrypted messages on.

**However**, when you send someone an encrypted message and FlowCrypt Secure Compose window indicates that the recipient does not use encryption, the message will be encrypted using a different mechanism (simple password encryption). The recipient see a link in the they receive. Following the link will allow them to decrypt the message **if** they know the password that you encrypted the message with. Such messages can be opened using any modern browser, so it doesn't matter which browser or email provider the recipient uses.

In short, if someone has PGP set up, they can communicate with you smoothly only when using devices that they have it set up on. If they don't have anything set up, they can open your messages on any device, but they will need to know the password to open each message each time.

Last thing to note is that such simple password-protected messages expire (get deleted) in 3 days by default. Paid users can choose expiration date. Messages sent between users that have FlowCrypt or similar software set up on each side do not expire at all.