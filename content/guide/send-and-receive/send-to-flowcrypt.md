---
title: Send to FlowCrypt recipient
summary: Sending to someone who has FlowCrypt
toc: true
---

Open [https://mail.google.com](https://mail.google.com){:target="_blank"} in the same browser where you installed FlowCrypt (Chrome or Firefox). Make sure you are logged into the same email account that you set up FlowCrypt on.

{{ "gettingstarted/clicksubjectattest" | screenshot }}

Click on **Secure Compose** and a green compose window will show:

{{ "sendingencryptedemailattachment/clicksecurecompose" | screenshot }}

Add emails of your recipients. You can also search your contacts by entering their first or last name (in full).

{{ "compose/search-contacts" | screenshot }}

{{site.data.alerts.callout_info}}
The contacts search does not produce the exact same results as searching your contacts directly on Google. Some contacts may be missing or harder to find. We will be improving this soon.

If you cannot find a contact, copy their whole email address.
{{site.data.alerts.end}}

The green color symbolises that the recipient has FlowCrypt (or compatible OpenPGP software) installed. This is the most conveniend scenario.

{{ "compose/enter-recipient" | screenshot }}

You can now compose your encrypted message and add attachments.

{{ "settingupFCwithprivatekey/encryptedemailsample" | screenshot }}

Finally, click **Encrypt and Send** to send the message.

Next, take a look at [Opening email with FlowCrypt installed](open-email-with-flowcrypt.html) or [Send and receive overview](index.html)
