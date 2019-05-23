---
title: Opening email without FlowCrypt
summary: Opening email without FlowCrypt
toc: true
---

When you send someone a password protected message (typically recipients who don't have any encryption software installed), the recipient will need the `message password` you used to [send the message](send-password-protected.html).

## Recipient's side

When the recipient open the email, they will see a button named `Open Message`:

{{ "openingemailwithoutFC/gotoinbox" | screenshot }}

The button will take the recipient to a page where they neeed to enter the `message password`:

{{ "openingemailwithoutFC/addpwtoopenencryptedmessage" | screenshot }}

After clicking `Decrypt`, the message (and attachments) will be decrypted:

{{ "openingemailwithoutFC/encryptedemailappears" | screenshot }}

If there were any attachments, the recipient will be able to download them too.