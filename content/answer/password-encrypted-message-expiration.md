---
Title: Password encrypted messages expiration - how does it work?
Template: article
Description: FlowCrypt PGP Email Encryption Knowledge Base: Password encrypted messages expiration - how does it work?
---

# Password encrypted messages expiration - how does it work?

> I want to know what exactly the following means:
>
> "Password encrypted messages expire in x days"

Messages that you send to people who don't use encryption on their end will require that you add a password to protect them.

Such messages will be encrypted on your end using the password, then stored in encrypted form on FlowCrypt servers, then served to the recipient.

Unfortunately, many people will use fairly weak passwords. Given enough time and resources, someone could crack the messages with brute force.

That's why they expire. Once expired, they will not be served from our servers anymore, and within a month of expiration, they will be deleted off of our servers.

Some use cases require that the message is available longer then standard 3 day expiration. FlowCrypt advanced users can set expiration time.

Messages sent between people who use encryption don't expire, because they are delivered over email like any other message, plus typically encrypted in a more secure way.
