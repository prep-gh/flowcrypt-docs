---
Title: Is access to Google Safe?
Template: article
Description: FlowCrypt PGP Email Encryption Knowledge Base: Is access to Google Safe?
---

# Is access to Google Safe?


> FlowCrypt is asking me to connect the plugin to my Gmail account. Is it safe? Where can I read more about this?

It's the same as setting up a new email client on your computer or phone - it will need access to your email to be able to pull the emails to your computer and show them to you (except in FlowCrypt's case, it also encrypts and decrypts them using PGP end-to-end encryption).

There are a few resources that may help. One is <a href="/privacy">flowcrypt.com/privacy</a> (email access token section):

*ACCESS TOKEN needed to access user's email is exclusively stored in LOCAL APP on user's LOCAL MACHINE, no exceptions. ACCESS TOKEN is used solely within LOCAL APP for user authentication, sending and receiving of MESSAGES and other related actions that make LOCAL APP work smoothly.*

The privacy policy just puts into words what the code does. The code is here for review: <a href="https://github.com/FlowCrypt/">github.com/FlowCrypt</a>

Ideally you want to be using full-disk encryption on your laptop, and lock the computer when you leave it. Also, the moment you suspect your laptop stolen or tampered with, you should use another device to log into Google, go to "Connected Apps" and revoke access to "FlowCrypt". That will make these tokens useless.

Last one, you should not use any browser extension with over-reaching permissions such as "manage other extensions".
