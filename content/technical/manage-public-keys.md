---
title: Manual Public Key management
summary: Assigning public keys manually with FlowCrypt
---

FlowCrypt is designed to make most Public Key operations automatic, so that a wider (non-technical) audience can benefit from encryption.

Some users prefer to manage public keys manually. This section shows you the tools to do that.

[...]

## Assigning public keys manually

> Just downloaded and tried FlowCrypt. Looks like a good app so far.
>
> I would like to manually assign a public key to a specific email address. In this case, I received automated emails from noreply@kraken.com that are PGP signed. The public key is published on their website at https://www.kraken.com/en-us/security/pgp
>
> I can't seem to find a way to assign that public key to that specific email. FlowCrypt has apparently instead chosen(or generate?) a key for that address that is unattested.
>
> How can I re-assign that email to the published public key?
>
> Thanks,

Go to FlowCrypt Settings -> Additional -> Contacts. There, you can replace their key, which will allow you to verify their emails.

If their key was not there, you could use the "bulk import" button and just add it that way.

As a side note, you can also upload your public key to Kraken, so that they also encrypt messages that they send to you.

## Export / import GPG

[...]

FlowCrypt is GPG compatible in terms of exchanging email, but I don't plan on connecting it to GPG directly.

Most people don't have GPG installed or don't want the trouble of having to install it. Besides, I don't think chrome extensions have a way to interact with it directly anyway.

You can export the public keys from GPG using <b>gpg --export --armor</b>

After that, you can import it in FlowCrypt Settings -> Additional Settings -> Contacts -> Bulk Import

