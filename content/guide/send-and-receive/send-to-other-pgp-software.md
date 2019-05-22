---
title: Send to other PGP software
summary: Sending to other PGP software
toc: true
---

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
