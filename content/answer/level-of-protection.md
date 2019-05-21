---
Title: What is the level of protection for encrypted emails?
Template: article
Description: FlowCrypt PGP Email Encryption Knowledge Base: What is the level of protection for encrypted emails?
---

# What is the level of protection for encrypted emails?

> so let me ask a basic question... if someone gets access to his email account via his computer, what's the level of protection for the encrypted emails?

The security of end-to-end encryption (when it's strong enough, like PGP) depends on the ends. There's no way around that - it's hard to secure information on a poorly managed device, regardless if it's the sender's or receiver's device.

Firstly, basics need to be in place: using two-factor authentication, strong password when logging into their computer, keeping their device updated and virus free.

On top of that, if they are using FlowCrypt, they should (as well as you) go to FlowCrypt Settings -> Security and select "Always require pass phrase to open encrypted email". That way, if someone gets a hold of their computer, they would still need to know the pass phrase that the person has used to view the encrypted email.

This is military grade end-to-end encryption. It won't fail you in itself, the weak links are the underlying system, the device, the people, etc.

<img src="https://imgs.xkcd.com/comics/security.png" />
(borrowed from: <a href="https://xkcd.com/">xkcd.com</a>)

I'm planning to put together an article that explains it in detail.