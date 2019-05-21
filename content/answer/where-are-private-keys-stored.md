---
Title: Where is FlowCrypt private key stored?
Template: article
Description: FlowCrypt PGP Email Encryption Knowledge Base: Where is FlowCrypt private key stored?
---

# Where is FlowCrypt private key stored?

> Good Morning! Where is the key pair for FlowCrypt stored?

For desktop browser extension, it's stored in browser local extension storage. Depending how you set it up, there may also be a backup, see <a href="/privacy">flowcrypt.com/privacy</a>. Specifically:

**Handling of PRIVATE KEYs**

LOCAL APP will store PRIVATE KEYs in storage accessible only to LOCAL MACHINE such as browser storage, application storage, hard drive or similar, and the security of these PRIVATE KEYs depend on the security of the underlying LOCAL MACHINE that keeps them. For this reason, it is advised to always update to latest operating system, keep up to date with latest security fixes, keep the system virus free using reliable antivirus software, using full-disk encryption or any other practices that make LOCAL MACHINE less vulnerable to attackers. Additionally, FLOWCRYPT recommends that you select an option to "Always require a pass phrase when opening email" as an additional layer of security in case your LOCAL MACHINE gets compromised in the future through physical or other means.

In addition to storing PRIVATE KEY in LOCAL APP exclusive to LOCAL MACHINE, depending on how was LOCAL APP set up, following will apply:

**Option 1 - manual setup - use (import) my own key**: LOCAL APP will keep both the PRIVATE KEY and PASS PHRASE exclusively on LOCAL MACHINE, unless user specifically navigates to backup section of settings where they perform an additional form of PRIVATE KEY backup.

**Option 2 - manual setup - create a new key**: LOCAL APP will provide the user with a comprehensive estimation of the strength of their PASS PHRASE. Once the user chooses a PASS PHRASE of satisfactory strength depending on their use case, LOCAL APP will store the PASS PHRASE and the PRIVATE KEY on LOCAL MACHINE. In addition, as a part of the setup procedure, LOCAL APP will ask user to select an additional method of PRIVATE KEY backup, if needed. User is free to select a backup method or choose not to perform any backup.

**Option 3 - simple setup - create a new key**: LOCAL APP will provide the user with a comprehensive estimation of the strength of their PASS PHRASE. Once the user chooses a PASS PHRASE of satisfactory strength depending on their use case, LOCAL APP will store the PASS PHRASE and the PRIVATE KEY on LOCAL MACHINE. In addition, LOCAL APP will automatically back up the key on user's EMAIL PROVIDER. The backed up key is protected with a PASS PHRASE that will always stay exclusively on LOCAL APP within LOCAL MACHINE. It is strongly recommended to choose a PASS PHRASE that will be evaluated to maximum strength (full strength bar) during LOCAL APP setup, as PASS PHRASEs of such strength take vast amount of resources to crack through BRUTE FORCE ATTACK, making such attacks effectively impossible.
