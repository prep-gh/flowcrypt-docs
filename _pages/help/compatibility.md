---
title: Report Compatibility Issue
summary: FlowCrypt Troubleshooting
toc: true
---

FlowCrypt aims to be compatible with all OpenPGP software that follows the specifications. Still, small differences in implementation can cause trouble in regards to software interoperability. Please let us know if you discover any such issue.

## Incoming email from other software

If you discover a compatibility issue when receiving email sent by other PGP software, please have the sender use their PGP software to send us an email:

| to         | `flowcrypt.compatibility@gmail.com`                           |
| subject    | encrypted message [software name] description of issue |
| text       | whatever content is causing the issues                    |
| public key | [https://flowcrypt.com/attester/pub/flowcrypt.compatibility@gmail.com{{site.data.i.external}}](https://flowcrypt.com/attester/pub/flowcrypt.compatibility@gmail.com) |

Compatibility issues commonly manifest as:
 - FlowCrypt does not even attempt to decrypt a message
 - message decrypted, but non-latin characters are not readable
 - message is missing some parts (such as images)
 - can decrypt message, but not an attachment

## Outgoing email from FlowCrypt

If you discover compatibility issue that causes some other software to not be able to open FlowCrypt messages, please share the screenshot of the issue, and software name with us at `human@flowcrypt.com`.

## Importing keys from other software

If you see an error when importing a Public Key or a Private Key, such as `This looks like a valid key, but it cannot be used for encryption`{:class="error"} or `Error importing key: Unknown s2k`{:class="error"}, you can have the key tested for compatibility. Open the following URL:

`chrome-extension://bnjglocicdkmhmoohhfkfkbbkejdhdgc/chrome/settings/modules/compatibility.htm`

{{ "browser/troubleshooting/test-key-compatibility" | screenshot }}

This will locally (within your browser) test the public or private key, and print out diagnostics. You can share the results with us by copying the result and sending it to us at `human@flowcrypt.com`. Please also mention which software created the key, and if it used any special settings.
