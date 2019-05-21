---
Title: Exporting a key from GPG Keychain / GPG Suite on a Mac
Template: article
Description: FlowCrypt PGP Email Encryption Knowledge Base: Exporting a key from GPG Keychain / GPG Suite on a Mac
---

# Exporting a key from GPG Keychain / GPG Suite on a Mac

> I would like to export my key from GPG Suite on a Mac, what do I do?

If you want to re-use your key from GPG Keychain (which is a good idea), there should be a way how to get it out of it.

On your Mac, in GPG Keychain app, select the key that says "sec / pub" in the "type" column, then click "export" on the top.

Select ASCII format and save it into a file. Then open the file in a text editor and you should see a lot of garbled up text in it, starting with -----BEGIN PGP PRIVATE KEY-----. Copy everything in that file and paste it where FlowCrypt asks for it during setup.

If you have already set up FlowCrypt without the key, you can still go to FlowCrypt Settings -> Additional Settings -> My Keys -> Add key and add it there.