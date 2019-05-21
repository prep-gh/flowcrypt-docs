---
title: Manual Public Key management
summary: Assigning public keys manually with FlowCrypt
---

FlowCrypt is designed to make most Public Key operations automatic, so that a wider (non-technical) audience can benefit from encryption.

Some users prefer to manage public keys manually. This section shows you the tools to do that.

[...]

## Save my Public Key to a file

Go to Additional Settings. Click on PUBLIC KEY.

{{ "savepublickeytofile/gotoadditionalsettingsclickonpublickey" | screenshot }}

Click on Save public key to a file.

{{ "savepublickeytofile/clickpublickeysavedtofile" | screenshot }}

Public key is now saved in file!

{{ "savepublickeytofile/publickey" | screenshot }}

{{ "savepublickeytofile/publickeyinfile" | screenshot }}

{{ "savepublickeytofile/securityalert" | screenshot }}


## What is my public key for?

> Hello
>
> What is my public key? or where can I find it?
>
> thanks

You'll find it in FlowCrypt Settings -> Additional Settings -> Public Key.

It's what people using software other than FlowCrypt need in order to send encrypted messages to you.

## Get my public key 

[...]

Click on newly received email titled me.

{{ "saveprivatekeybackup/saveprivatekeybackup" | screenshot }}

Click on cryptup backup file

{{ "saveprivatekeybackup/privatekeybackup" | screenshot }}


## Verifying fingerprints or KeyWords of my contacts

> Love your product.
>
> I'm currently using FlowCrypt and learning about pgp and I have a question. When I enter an email address into the secure email composer form in gmail it searches for a moment and then turns green with an accompanying lock symbol, but is there anyway to confirm that I am using the proper public key/fingerprint/keyword of the person I want to send the email to?
>
> I know their public key and fingerprint but I can't find where to check that I am using the correct persons public key before sending the email, so I feels like I am sending it blindly with whatever public key you found. Thanks for your help!

When their email address turns green in Secure Compose, you can hover over it.

If they don't use FlowCrypt, you will see their fingerprint. If they use FlowCrypt, you will see their KeyWords (same thing represented differently).

This allows you to cross-check the fingerprints if you need to.

Additionally, if it says "Attested by CRYPTUP", that means we independently verified ownership of their keys - making sure that the person who controls the email address is the same person who controls the keys.


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

## What is the purpose of the keywords and fingerprint?


> Thanks for the email.  I do have a question.  What is the purpose of the keywords and fingerprint?  Thanks!

It's useful as an additional layer of security for people who want to cross-check it.

When you use secure compose and you enter someone's email, you can hover over it to see their KeyWords. You could then get them on a phone to confirm that the KeyWords you see are the same as the KeyWords they see in their settings. With this, you can 100% verify that it will be encrypted for the right key.

Same for Fingerprint. Most software prefers to work with Fingerprints, but it's a bit tedious to cross-check (a lot of numbers).

Another way to confirm this is to send them a non-sensitive encrypted email without cross-checking, then call them to confirm they can open it. If they can, that means it was encrypted for the right key, and you can follow with the real message.

Lastly, when I hover over your email in secure compose, it says "Attested by FlowCrypt". That means FlowCrypt has already verified the ownership of your keys for that email, and I don't really have to verify the KeyWords/Fingerprints when writing you, unless I want to be extra paranoid.

Hope this helps.