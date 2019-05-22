---
title: FlowCrypt Software Specifications
summary: FlowCrypt Software Specifications
toc: true
---

## FlowCrypt Browser Extension

| Purpose | PGP End-to-end encryption of email hosted on Gmail |
| Programming languages | TypeScript, JavaScript |
| Release Channel | Stable (Production ready) |

### Core functionality (browser)

1. Import OpenPGP private keys created by customer’s legacy software
2. Send OpenPGP encrypted emails to other FlowCrypt users
3. Send OpenPGP encrypted attachments to other FlowCrypt users
4. Decrypt and view OpenPGP encrypted emails received from other FlowCrypt users
5. Decrypt and download OpenPGP encrypted attachments received from other FlowCrypt users

### Additional functionality (browser)

1. Send encrypted email to users of other OpenPGP compatible software
2. Send encrypted attachments to users of other OpenPGP compatible software
3. Decrypt and view encrypted message received from users of other OpenPGP compatible software
4. Decrypt and download encrypted attachments received from users of other OpenPGP compatible software
5. Manually change or update public keys in application Contacts
6. View information about user’s public key
7. Look up public keys of other FlowCrypt users
8. Verify that public key records match installed private key

### Known limitations (browser)

1. Attachments cannot exceed 25MB per email
2. Messages and attachments encrypted for public key that does not match user’s private key cannot be opened
3. Messages and keys not strictly adhering to OpenPGP standard may not be supported
4. Certain non-default Chrome settings may cause FlowCrypt to stop functioning. Rigorous testing is strongly recommended before deploying changes to Chrome settings.
5. May not be compatible with all OpenPGP software from other vendors. Work is underway to increase compatibility over time.

Please see [Known Limitations](limitations.html) for a more specific list.

### Required system configuration (browser)

1. Modern, up-to-date Operating System: Windows 7 or newer, MacOS 10.14 or newer
2. Up to date Google Chrome browser
3. Ability to install and use Chrome Extensions
4. Default Google Chrome settings
5. Storage persistence across user sessions
6. Minimum 1GB of free disk space
7. Minimum 1GB of free RAM
8. Minimum dual core x86 CPU
9. Stable internet connection, working mouse, keyboard and monitor

### Environment deprecation (browser)

The latest three major stable versions of Google Chrome will remain supported. Google Chrome 69, 68 and 67 are supported at the time of writing. Google Chrome 66 and below is deprecated at the time of writing.

### Open Source Software (browser)

List of OSS used by and distributed with FlowCrypt Browser Extension.

| OpenPGP.js | LGPL 3.0  | https://github.com/openpgpjs/openpgpjs | https://github.com/openpgpjs/openpgpjs/blob/master/LICENSE |
| emailjs-mime-builder | MIT License | https://github.com/emailjs/emailjs-mime-builder  | https://github.com/emailjs/emailjs-mime-builder/blob/master/LICENSE |
| emailjs-mime-codec | MIT License | https://github.com/emailjs/emailjs-mime-codec | https://github.com/emailjs/emailjs-mime-codec/blob/master/LICENSE |
| emailjs-mime-parser | MIT License | https://github.com/emailjs/emailjs-mime-parser | https://github.com/emailjs/emailjs-mime-parser/blob/master/LICENSE |
| emailjs-mime-types | MIT License |  https://github.com/emailjs/emailjs-mime-types | https://github.com/emailjs/emailjs-mime-types/blob/master/LICENSE |
| emailjs-addressparser | MIT License | https://github.com/emailjs/emailjs-addressparser | https://github.com/emailjs/emailjs-addressparser/blob/master/LICENSE | 
| emailjs-stringencoding | text-encoding | Apache License 2.0, Unlicense | https://github.com/emailjs/emailjs-stringencoding adapted from
https://github.com/inexorabletash/text-encoding |  https://github.com/inexorabletash/text-encoding/blob/master/LICENSE.md | 
| DOMPurify | Apache License 2.0, Mozilla Public License 2.0 | https://github.com/cure53/DOMPurify | https://github.com/cure53/DOMPurify/blob/master/LICENSE |
| zxcvbn | MIT License | https://github.com/dropbox/zxcvbn | https://github.com/dropbox/zxcvbn/blob/master/LICENSE.txt |
| jQuery | MIT License | https://github.com/jquery/jquery | https://github.com/jquery/jquery/blob/master/LICENSE.txt | 
| Punycode | MIT License | https://github.com/bestiejs/punycode.js |  https://github.com/bestiejs/punycode.js/blob/master/LICENSE-MIT.txt  | 
| Featherlight | MIT License | https://github.com/noelboss/featherlight/   | https://github.com/noelboss/featherlight/blob/master/LICENSE  | 
| iso-8859-2 | MIT License | https://github.com/mathiasbynens/iso-8859-2  | https://github.com/mathiasbynens/iso-8859-2/blob/master/LICENSE-MIT.txt  | 
| FineUploader | MIT License | https://github.com/FineUploader/fine-uploader/  | https://github.com/FineUploader/fine-uploader/blob/master/LICENSE  | 
| Anchorme.js | MIT License | https://github.com/alexcorvi/anchorme.js/  | https://github.com/alexcorvi/anchorme.js/blob/gh-pages/LICENSE.md  | 
| Blob.js | MIT License | https://github.com/eligrey/Blob.js/  | https://github.com/eligrey/Blob.js/blob/master/LICENSE.md | 
| Clipboard.js | MIT License | https://github.com/zenorocha/clipboard.js | https://github.com/zenorocha/clipboard.js#license  | 
| Bootstrap | MIT License | https://github.com/twbs/bootstrap  | https://github.com/twbs/bootstrap/blob/v4-dev/LICENSE | 


## FlowCrypt Android App

| Purpose | PGP End-to-end encryption of email |
| Programming languages |	Java, Kotlin, TypeScript, JavaScript |
| Release Channel |	Beta (not production ready as of now) |

{{site.data.box.warning}}
As of now, flowcrypt android app is still in early development. It is published for early evaluation and feedback only. FlowCrypt makes no guarantees related to FlowCrypt Android App until there is a production stable version available.
{{site.data.box.end}}

### Core functionality (android)

1. Import OpenPGP private keys created by customer’s legacy software (not implemented yet)
2. Send OpenPGP encrypted emails to other FlowCrypt users
3. Send OpenPGP encrypted attachments to other FlowCrypt users (not implemented yet)
4. Decrypt and view OpenPGP encrypted emails received from other FlowCrypt users
5. Decrypt and download OpenPGP encrypted attachments received from other FlowCrypt users (not implemented yet)


### Additional functionality (android)

1. Manually change or update public keys in application Contacts (not implemented yet)
2. View information about user’s public key (not implemented yet)
3. Look up public keys of other FlowCrypt users
4. Verify that public key records match installed private key

### Known limitations (android)

1. Attachments cannot exceed 3MB per email
2. Messages and attachments encrypted for public key that does not match user’s private key cannot be opened
3. Messages and keys not strictly adhering to OpenPGP standard may not be supported
4. Certain Android System settings may cause FlowCrypt Android App to stop functioning. Rigorous testing is strongly recommended before deploying changes to Android settings.
5. May not be compatible with all OpenPGP software from other vendors.
6. Before FlowCrypt Android App is available in production stable version, it may contain security flaws, be slow, unstable and may not work as intended.

### Miscellaneous (android)

Because FlowCrypt Android App is still in early development, certain aspects of the software cannot be fully established yet but will be established and documented as FlowCrypt Android App becomes available for production use. These include:

1. Documentation – will be provided within 6 months of releasing FlowCrypt Android App for production use.
2. Required system configuration - expected requirements are: modern cellphone running Android with standard Android OS 7.0 or higher, 2GB or RAM, 1GB of free storage space, stable internet connection of 1 megabit or faster
3. List of Open Source Software used will be made available
4. Environment Deprecation
