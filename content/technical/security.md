---
title: FlowCrypt Security
summary: FlowCrypt Security
---

[...]

OpenPGP security review

end-to-end

<!-- key strength -->

## What FlowCrypt settings to use for maximum security?

> Hello, I'm in a situation where I need to use the maximum security possible. What should I do?

What you want is this:

1) have a very strong pass phrase. it should be 20 characters long at a minimum.

2) choose "always require pass phrase to open encrypted messages"

3) when messaging people who don't use FlowCrypt, add a sufficiently strong password that you can communicate to them in some other way (a phone call, or WhatsApp)

4) use a full disk encryption on your device with a strong password

5) eventually move off US based email services

6) Linux, or at least a Mac, may be a better choice compared to windows

7) very strong passcode on your phone (I use an alphanumeric password)

8) use two factor authentication on all of your online accounts (to receive a text with a code every time you wan to log in, or use Google Authenticator or Authy)

## Security: handling and distributing private keys

[...] enterprise option opt out

> Hey there, an obvious question that would come up from security experts related to your service. How is the private key for these accounts distributed? How do people know that a 3rd party do not have access to our private keys generated through FlowCrypt?

When generating private keys in FlowCrypt, you can either do simple setup or manual setup.

Manual gives you full control over how your key is handled.

Simple setup will by default protect your key with your pass phrase, then store it in your inbox. The security of your key then depends on the strength of your pass phrase - that is why FlowCrypt requires such a long pass phrase when you are creating a new key.

Please also see <a href="https://flowcrypt.com/privacy">our Privacy Policy</a> - it's very readable.

The code itself is publicly available: <a href="https://github.com/FlowCrypt">github.com/FlowCrypt</a>

# What is the level of protection for encrypted emails?

> so let me ask a basic question... if someone gets access to his email account via his computer, what's the level of protection for the encrypted emails?

[...] mention that title, attachment names, etc are visible

The security of end-to-end encryption (when it's strong enough, like PGP) depends on the ends. There's no way around that - it's hard to secure information on a poorly managed device, regardless if it's the sender's or receiver's device.

Firstly, basics need to be in place: using two-factor authentication, strong password when logging into their computer, keeping their device updated and virus free.

On top of that, if they are using FlowCrypt, they should (as well as you) go to FlowCrypt Settings -> Security and select "Always require pass phrase to open encrypted email". That way, if someone gets a hold of their computer, they would still need to know the pass phrase that the person has used to view the encrypted email.

This is military grade end-to-end encryption. It won't fail you in itself, the weak links are the underlying system, the device, the people, etc.

