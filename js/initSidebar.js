$(document).ready(function () {
  var $sidebar = $('#sidebar');

  var navgocoOptions = {
    caretHtml: '',
    accordion: true,
    openClass: 'active',
    save: false,
    slide: {
      duration: 150,
      easing: 'swing'
    }
  };

  // Initialize navgoco with config options
  $sidebar.navgoco($.extend(navgocoOptions, {}));

  $sidebar.show();
});
