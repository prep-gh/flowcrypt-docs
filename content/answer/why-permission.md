---
Title: Why does the extension need access to email inbox?
Template: article
Description: FlowCrypt PGP Email Encryption Knowledge Base: Why does the extension need access to email inbox?
---

# Why does the extension need access to email inbox?

> Thanks for the great extension. I've just started using it (free tier for now). I might soon be able to drop Mailvelope/Thunderbird+GPG in favor of your app!
>
> It would be great to get more documentation on why the extension needs to get permission to access the mailbox. Assurance (I hope that's the case) that no outside system will use this access. In short, something more for the crypto/privacy inclined folks (which might be the primary user base) so that they feel better.

Some of what you're looking for is at <a href="/privacy">flowcrypt.com/privacy</a>

The access to Gmail is because FlowCrypt works a lot more like Thunderbird (that needs direct access to the mail server from your machine) although it's disguised as a Mailvelope-like plugin (for convenience).

This is to download and decrypt attachments as needed, look up contacts as you compose, or when a singed message fails verification, it will download it in raw format and verify again, as it may have been rendered with slight alterations, enough that the signature won't match if you try to verify it like Mailvelope does.

The email access tokens are kept strictly on your device, and will not be shared with anyone. It's just so that you can use the plugin just like any other email software.