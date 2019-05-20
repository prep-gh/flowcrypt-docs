---
title: Troubleshooting
summary: FlowCrypt Troubleshooting
toc: true
---

## Forgot pass phrase, what to do?

If you still have at least one device where you can read encrypted email (and are trying to set up another one), open the working device and go to FlowCrypt Settings -> Security -> Change pass phrase. It will let you change it without knowing the previous one. This will then allow you to use the new pass phrase when setting up another device.

If you cannot read encrypted email on any device without the pass phrase anymore, you will not be able to read previously encrypted emails regardless of what you do. To set up everything again, you can go to FlowCrypt Settings -> Additional Settings -> Experimental -> Reset account. Then during setup, you would give it a wrong pass phrase, which will allow you to set it up again with a new pass phrase for future emails.

## I cannot read my encrypted email, I only see jumbled text.

{{ "troubleshooting/jumbledtext" | screenshot }}

Try to view the message on the same device where you installed FlowCrypt, on the same browser, on mail.google.com

(If you installed FlowCrypt on Android, please open the email in FlowCrypt Android app)

It should be readable there.

## I cannot open my backup, don't know what to do with it.

You don't have to view or open the backup. Feel free to just archive it.

To verify that your account is backed up properly, please go to FlowCrypt Settings -> Backup. It should say "your account is backed up correctly".

It is however important to record your pass phrase properly. To verify that you remember it correctly, please go to FlowCrypt Settings -> Security -> Test my pass phrase.

After that, please note your pass phrase down on a paper. It will be useful if your device ever stops working and you need to get set up on a new one.

## I discovered a compatibility issue when receiving email sent by other PGP software

Please have the sender use their PGP software to send us an email:

| to         | flowcrypt.compatibility@gmail.com                           |
| subject    | encrypted message sample [software name]                    |
| text       | please describe the issue you are seeing                    |
| public key | https://flowcrypt.com/pub/flowcrypt.compatibility@gmail.com |
