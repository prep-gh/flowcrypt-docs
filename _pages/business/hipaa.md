---
title: FlowCrypt for HIPAA compliance
summary: FlowCrypt for HIPAA compliance
toc: true
---

At the moment, our company is not HIPAA certified.

We are planning a product for HIPAA customers. Sign up below to get notified when it's ready:

<form id="waitlist"><input type="email" placeholder="Your email address" value="" /> <button>Get Notified</button></form>
<script src="https://flowcrypt.com/js/common.js?version=59"></script>
<script>
$('form#waitlist').submit(false);
$('form#waitlist > button').click(function() {
  const email = $(this).siblings('input').val().trim().toLowerCase();
  if(tool.str.is_email_valid(email)) {
    tool.api.cryptup.help_waitlist(email, 'hipaa', (success, response) => {
      if(success && response && response.saved) {
        $(this).parent().html('<b>We\'ll keep you posted.</b>');
      } else {
        alert('There was an error, please try again.');
        console.log(response);
      }
    });
  } else {
    alert('Error: This does not look like a valid email.');
  }
});
</script>
