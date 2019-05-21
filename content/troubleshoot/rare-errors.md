---
title: Rare errors
summary: Rare FlowCrypt Errors
toc: true
---

## Fixing local storage access in Chrome and Firefox

[...]

There are various reasons why the browser extension for Chrome and Firefox may not be able to access local storage. When this happens, you'll see an error when you try to send or receive encrypted emails.

First thing to check is your browser cookies settings.

Chrome users: **chrome-extension://bnjglocicdkmhmoohhfkfkbbkejdhdgc/chrome/texts/chrome_content_settings.htm**

Firefox users: **moz-extension://c41c9281-6b09-4669-9098-e7e71f26b0cf/chrome/texts/firefox_content_settings.htm**

Copy the appropriate link, paste it into your browser, and follow the outlined steps and see if the situation improves. This fixes it for most people.

If following the steps didn't fix it for you, please write me at human@flowcrypt.com

# How to add a missing sending (alias) address?

> Hello, I use several sending addresses on my Gmail account, but FlowCrypt did not recognize all of them. How to add the missing ones?

Make sure to send at least one standard email from that missing address as a sender, from Gmail. Then go to

FlowCrypt Settings -> Additional Settings -> Experimental -> refresh send-from addresses

FlowCrypt Settings -> Additional Settings -> Attester (and click submit next to it)

This will make it appear along the other ones.
