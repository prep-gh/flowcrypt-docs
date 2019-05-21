---
title: Forgot pass phrase, what to do?
summary: FlowCrypt Troubleshooting
toc: true
---

If you still have at least one device where you can read encrypted email (and are trying to set up another one), open the working device and go to `FlowCrypt Settings` -> `Security` -> `Change pass phrase`. It will let you change it without knowing the previous one. This will then allow you to use the new pass phrase when setting up another device.

If you cannot read encrypted email on any device without the pass phrase anymore, you will not be able to read previously encrypted emails regardless of what you do. To set up everything again, you can go to `FlowCrypt Settings` -> `Additional Settings` -> `Experimental` -> `Reset account`. Then during setup, you would give it a wrong pass phrase, which will allow you to set it up again with a new pass phrase for future emails.

[...] merge with below

## Setting up FlowCrypt on another device - forgot pass phrase

> I'm setting up FlowCrypt on another computer and I do not know/remember what my pass phrase is.
>
> For your information, on the first computer that I installed FlowCrypt, Chrome works fine.
>
> Here is the question:
>
> Is it possible to make it work both for Firefox and Chrome?
> Is it possible to make it work for both computers?

Definitely. You can make it work in both Chrome and Firefox, on both computers.

Go to the computer and browser where it works. Go to FlowCrypt Settings -> Security and change the pass phrase, then you will be prompted to do a new backup that uses the new pass phrase.

After that, close the tab on the new computer and try to set up FlowCrypt again (on the new computer). You'll be able to use the new pass phrase.

> I set the new pass phrase and make it work on my second computer.
>
> Thanks