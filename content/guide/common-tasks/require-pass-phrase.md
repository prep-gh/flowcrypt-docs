---
title: Require Pass Phrase to decrypt
summary: Require to enter pass phrase to open encrypted email.
toc: true
---

By default, FlowCrypt does not require you to enter your Pass Phrase to view received encrypted email.

If your device does not use full disk encryption (such as Windows BitLocker, Mac File Vault or Linux LUKS), your encrypted email may be vulnerable when your device gets stolen.

To protect against this, you can choose to be required to enter your Pass Phrase for each session.

See [FlowCrypt Settings](open-settings.html) -> `Security` ->  `Require Pass Phrase to open encrypted email`

{{ "requiretoenterpassphrasetoread/gotosecurity" | screenshot }}

You will be asked to confirm your Pass Phrase to make sure you remember it.

{{ "requiretoenterpassphrasetoread/enterpassphraseandcontine" | screenshot }}

Once you `Confirm` it, you will notice that the first encrypted email you open will require you to enter your Pass Phrase.

When you don't use FlowCrypt for some time or close your browser, the next time you open an encrypted email, you will have to enter your Pass Phrase again to view it.

{{ "settings/enter-pass-phrase-to-read" | screenshot }}

{{site.data.box.warning}}
If you forget your pass phrase, you will not be able to access your encrypted emails.
{{site.data.box.end}}

To see other security options, see [Improve Security](improve-security.html).

