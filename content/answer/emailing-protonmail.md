---
Title: Emailing ProtonMail
Template: article
Description: FlowCrypt PGP Email Encryption Knowledge Base: Emailing ProtonMail
---

# Emailing ProtonMail

> I am currently trying to send an encrypted message from my Gmail account, to a ProtonMail account.
> As per the ProtonMail docs, as long as incoming messages are inline with OpenPGP, the message should be received correctly.
>
> When composing the message, I had to manually add the Public Key for my ProtonMail account. I received the message, all right, however, it was not decrypted by my ProtonMail client.
>
> Have you had any experience with ProtonMail? Does FlowCrypt follow the OpenPGP sepcification?

Yes, FlowCrypt and ProtonMail can work together, but ProtonMail's OpenPGP support is very limited.

When sending a message to a ProtonMail account, notice the "PK" icon on the bottom right corner of the secure compose. This attaches a public key to the message, and it will get ProtonMail confused.

If you make sure the "PK" button is not highlighted in blue when sending, ProtonMail should be able to digest the message properly.

There may be other complications when it comes to encrypted attachments. Except the poor PGP support, I think ProtonMail is a great concept, and I hope they fix these things.

