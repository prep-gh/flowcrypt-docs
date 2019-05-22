---
title: Change Pass Phrase
summary: Change Pass Phrase
toc: true
---

Go to [FlowCrypt Settings](open-settings.html) and click on `Security`:

{{ "changepassphrase/flowcryptbasicsettingspage" | screenshot }}

On the `Security` page, click `Change Pass Phrase`:

{{ "changepassphrase/clicksecurity" | screenshot }}

{{site.data.box.info}}
If you chose [`Require Pass Phrase to open encrypted email`](require-pass-phrase.html) earlier, you will be required to confirm your previous pass phrase before changing it.

There is no way around that requirement, unless you also have FlowCrypt set up on another device where this option was not selected.
{{site.data.box.end}}

Enter your new Pass Phrase:

{{ "changepassphrase/choosechangepassphrase" | screenshot }}

{{site.data.box.warning}}
Note your Pass Phrase down for later recovery.

Loss of Pass Phrase can lead to past encrypted emails being forever lost.
{{site.data.box.end}}

Changing Pass Phrase only affects the device that you are currently using. The Pass Phrase that you use on other devices with FlowCrypt set up will remain the same as before.

After you have changed your Pass Phrase, you will be prompted to back up your updated Private Key. This step is very important so that you can use your updated Pass Phrase next time you set up FlowCrypt on another device (if you lose your device or it stops working).

{{ "changepassphrase/backupprivatekeyinemail" | screenshot }}

Click the green `Back up` buton to finish.

{{site.data.box.tip}}
[Enterprise customers](/docs/content/business/enterprise.html) can customize or disable these backup options in favor of their own key management.
{{site.data.box.end}}
