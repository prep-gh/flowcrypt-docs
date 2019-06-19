---
title: Keyserver integration
summary: Legacy public keyserver integration for Enterprise customers
toc: true
---

If your organisation already keeps track of Public Keys of your employees and their contacts, FlowCrypt can integrate with your key server to offer a smooth and secure experience.

{{site.data.box.info}}
Functionality on this page is available with [FlowCrypt for Enterprise](../business/enterprise.html).
{{site.data.box.end}}

## Public Keys of users on your domain

[FlowCrypt Attester{{site.data.i.external}}](https://flowcrypt.com/attester/) can be configured to trust your internal keyserver for users on your domain. We can integrate with your LDAP keyserver, internal SKS keyserver or other similar solutions. When looking for a Public Key for an email address on your domain, Attester will always check your own keyserver and not consider Public Keys from other sources.

This way you are in direct control of your users' Public Keys.

You can optionally enforce, when setting up FlowCrypt email client, that imported Private Keys match records your own Public Key server for a particular email address.

## Public Keys of your correspondents

If your keyserver is also keeping track of users on domains you don't control (eg keys of recipients outside of your organisation), FlowCrypt email client can be configured to always check your own keyserver first.

As a result, you can control not only distribution of Public Keys of your own users, but also Public Keys of your users' correspondents.

## Key expiration, rotation and periodic updates

FlowCrypt Attester as well as FlowCrypt email clients will periodically check for newer versions of the same key, and update if necessary. This is useful for handling periodic key expiration, key updates, etc.

Once a Public Key was loaded from your own keyserver into Attester for the first time, we will start checking for updates periodically. Attester pull and update Public Keys by longid from your keyserver every 30 days (or daily - if our copy of the Public Key is known to expire soon, or has recently expired).

If more than one key is available on your keyserver for a particular email address, we will prefer keys that were created more recently.

If a key has been deleted from your keyserver, or has been replaced with a completely different key (for a particular email address), by default Attester will not re-assign email-pubkey associations on our end (but it can be configured to do it automatically if you wish).

## Other forms of integration

Please write us at `human@flowcrypt.com` if you'd like to discuss functionality or needs not mentioned above.