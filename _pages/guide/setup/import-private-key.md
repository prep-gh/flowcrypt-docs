---
title: Set up FlowCrypt with Imported Private Key
summary: Set up FlowCrypt with Imported Private Key
toc: true
---

| Prerequisities
|:---
| You have already installed flowcrypt by following [Install FlowCrypt](install.html)

This is for users who have used OpenPGP through software from another vendor, already received several encrypted messages through this other software, and would like to import their keys into FlowCrypt to be able to read previous encrypted messages. 

{{site.data.box.info}}
If you are new to encryption, you should instead [Create a new Private Key](new-private-key.html).
{{site.data.box.end}}

On the setup screen, click on **Use my own Private Key**.

{{ "browser/settingup/setupflowcryptnewencryptionkey" | screenshot }}

Import your private key by loading it from a file or pasting armored key directly. Loading from a file is preferred, because copy-pasting and formatting errors are a common source of problems.

{{ "browser/settingupFCwithprivatekey/privatekey" | screenshot }}

Enter your Pass Phrase and click save.

{{ "browser/settingup/allset" | screenshot }}

To learn how to use FlowCrypt, go to [sending and receiving encrypted email](../send-and-receive/index.html)
