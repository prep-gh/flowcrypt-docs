---
title: Cannot read encrypted email
summary: FlowCrypt Troubleshooting
toc: true
---

There may be various reasons why you cannot read encrypted email, please see below which one matches your situation and how to fix it.

## Problem: I see a jumbled block of text

This is what the message will look like if you have used FlowCrypt or other OpenPGP software in the past, but it's not installed or not running wherever you are reading the message.

{{ "browser/troubleshooting/jumbledtext" | screenshot }}

Try to view the message on the same device where you installed FlowCrypt, on the same browser, on mail.google.com

(If you installed FlowCrypt on Android, please open the email in FlowCrypt Android app)

It should be readable there.

{{site.data.box.info}}
This also happens when you email one of your Google email aliases, if that actually leads to a different inbox where FlowCrypt is not installed.

Because it's your own alias, FlowCrypt thinks the recipient has FlowCrypt installed. If that's not true (on that email address), you will not be able to read the received message.

To try [emailing people who don't have FlowCrypt installed](../guide/send-and-receive/send-password-protected.html), choose a recipient that is not your Gmail alias.
{{site.data.box.end}}

## Problem: My key cannot open the message

You will see the following error when the Private Key installed in FlowCrypt does not match the key that the message was encrypted for: 

`Your current key cannot open this message. If you have any other keys available, you should import them now.`{:class="error"}

This often happens when users re-install FlowCrypt, but do not remember their previous pass phrase during setup.

{{ "browser/troubleshooting/key-cannot-open" | screenshot }}

### Fixing a received message

First thing to try is to see if you can import any Key Backup from the past that is not already imported. For this, you will need to remember the pass phrase you used when that particular backup was created.

Click `Import Missing Key` on the above screen, and you should see something similar to this:

{{ "browser/troubleshooting/add-private-key" | screenshot }}

If `Load from backup` is available and not disabled, the likely reason that you cannot read your message is that it's encrypted for a private key that is not loaded.

Clicking `Load from backup` will take you to a screen where you can import your key:

{{ "browser/troubleshooting/load-private-key-from-backup" | screenshot }}

You will need to enter the pass phrase that you used when the backup was created (this may be different than your current pass phrase), then click `Load key from backup`.

{{site.data.box.info}}
We cannot recover forgotten Pass Phrases, but you may be able to recover it yourself in certain situations.

A common cause of this issue is when users set up FlowCrypt on one device, and later also set up FlowCrypt on a second device but forgot the Pass Phrase from before, and choose `Skip import and create a new key` during setup.

If your scenario is similar to this, and the original device is still functioning and able to read encrypted emails, open the working device and go to `FlowCrypt Settings` -> `Security` -> `Change pass phrase`. It will let you change it without knowing the previous one (ideally change it to the same Pass Phrase you are currently using).

This will then allow you to use the new pass on the the backup screen above (you may need to refresh the page).
{{site.data.box.end}}

If you don't have any device where the email is still readable, and don't remember your previous Pass Phrase to import the backup, the message will remain unreadable regardless of what you do, but you can prevent this issue from happening to future messages.

### Preventing this issue in the future

You may or may not be able to fix already received messages, but you can make sure that you can receive messages without issues in the future.

#### Correct your recorded Public Key on FlowCrypt Attester

Attester distributes your Public Key to each new sender that wants to send you an encrypted message. This will not help people who have already sent you encrypted messages in the past, but it will ensure that you can easily read messages from people who will write you in the future (who haven't yet).

For this, go to `FlowCrypt Settings` -> `Additional Settings` -> `Attester`. You should see a screen similar to:

{{ "browser/troubleshooting/attester-correct-records" | screenshot }}

Click `Correct Public Records` and wait for a confirmation email to confirm this update. After that, the screen should whos:

{{ "browser/troubleshooting/attester-submitted" | screenshot }}

#### Ask each sender to update their records of your Public Key

You will want the sender to update their settings and re-send the message.

{{ "browser/troubleshooting/key-cannot-open" | screenshot }}

Click `Ask Sender to Update`. This will guide you to send your current Public Key back to the sender. When they receive it, they should see a `Udate Contact` button, which they should click (they may need to do this on all of their devices). After that, when they send you a new message, it should be readable.

## Other issues when reading a message

If your issue is not described here and the sender doesn't use FlowCrypt, you may be experiencing a [compatibility issue](compatibility.html). 