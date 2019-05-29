---
title: Improve security of your system
summary: Simple things that improve your system's security
toc: true
---

Below please find foundational steps to take if you'd like to stay safer.

## Two Factor Authentication

Even before you embrace encryption, one of the most important things is to make sure to use Two-Factor Authentication (2FA, or also 2-Step Verification) on every online account that supports it, but especially your email account. When set up, you will need more than just your password to log into your Google account (and so will hackers).

Depending on your settings, this second form of verification could be a temporary security code from a 2FA app (such as [Google Authenticator{{site.data.i.external}}](https://support.google.com/accounts/answer/1066447) or [Authy{{site.data.i.external}}](https://authy.com/)), or a verification code that you received as a text message. See [Google 2-Step Verification{{site.data.i.external}}](https://www.google.com/landing/2step/).

We cannot overstate the importance of 2FA, it is the first thing you should do to protect all your online accounts. Don't just stop at your email account - most online services these days offer 2FA setup. Check their settings or ask their support.

## FlowCrypt Settings

You should set all your devices to [require your pass phrase](require-pass-phrase.html) before you open encrypted email. This way, when you lose your device or it gets stolen, whoever has your device will not have access to your encrypted email.

## Full Disk Encryption

This is one of the best defenses to get you out of trouble when your device is lost or stolen. When your device storage is encrypted, it is very difficult to extract information from the it without your device pass phrase.

| Windows 10 | [Turn on device encryption{{site.data.i.external}}](https://support.microsoft.com/en-us/help/4028713/windows-10-turn-on-device-encryption){:target="_blank"} |
| Apple MacOS | [Use FileVault to encrypt your Mac{{site.data.i.external}}](https://support.apple.com/en-us/HT204837){:target="_blank"} |
| Linux, Ubuntu | Install system with `Encrypt the new Ubuntu installation` to enable `LUKS` |
| Android | [Encrypt Your Android Data{{site.data.i.external}}](https://support.google.com/nexus/answer/2844831?hl=en){:target="_blank"} and choose a stronger device password |
| iOS | [How to encrypt your iPhone{{site.data.i.external}}](https://ssd.eff.org/en/module/how-encrypt-your-iphone){:target="_blank"} |

## What's next

More technical document: [FlowCrypt Security](/docs/technical/security.html).