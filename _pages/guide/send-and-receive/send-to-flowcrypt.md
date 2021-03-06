---
title: Send encrypted email to FlowCrypt user
summary: Sending to someone who has FlowCrypt
toc: true
---

You can use this guide to send encrypted emails to other FlowCrypt recipients. The process is the same as sending any other email, except you will use `Secure Compose` button instead of the standard Gmail Compose button.

{{site.data.box.tip}}
Same applies if your recipient has compatible OpenPGP software other than FlowCrypt, [if their Public Key is already loaded](send-to-other-pgp-software.html).
{{site.data.box.end}}

Open [https://mail.google.com{{site.data.i.external}}](https://mail.google.com){:target="_blank"} in the same browser where you installed FlowCrypt (Chrome or Firefox). Make sure you are logged into the same email account that you set up FlowCrypt on.

{{ "browser/gettingstarted/clicksubjectattest" | screenshot }}

Click on **Secure Compose** and a green compose window will show:

{{ "browser/sendingencryptedemailattachment/clicksecurecompose" | screenshot }}

Add emails of your recipients. You can also search your contacts by entering their first or last name (in full).

{{ "browser/compose/search-contacts" | screenshot }}

{{site.data.box.info}}
The contacts search does not produce the exact same results as searching your contacts directly on Google. Some contacts may be missing or harder to find. We will be improving this soon.

If you cannot find a contact, copy their whole email address.
{{site.data.box.end}}

The green color symbolises that the recipient has FlowCrypt (or compatible OpenPGP software) installed. This is the most conveniend scenario.

{{ "browser/compose/enter-recipient" | screenshot }}

You can now compose your encrypted message and add attachments.

{{ "browser/settingupFCwithprivatekey/encryptedemailsample" | screenshot }}

Finally, click **Encrypt and Send** to send the message.

Next, take a look at [Opening email with FlowCrypt installed](open-email-with-flowcrypt.html) or [Send and receive overview](index.html)
