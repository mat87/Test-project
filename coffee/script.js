(function() {
  var submitBtnOff;

  $(document).ready(function() {
    return jQuery.goup({
      location: 'right',
      containerSize: 60,
      trigger: 400,
      arrowColor: '#1fa67a',
      containerColor: '#333'
    });
  });

  $(document).ready(function() {
    var href;
    href = location.hash.slice(1);
    if (href === 'kontakt') {
      return $('#changeableContent').load('kontakt.html', function() {
        return submitBtnOff();
      });
    } else {
      return $('#changeableContent').load('beers.html #' + href);
    }
  });

  $(window).on('hashchange', function() {
    var href;
    href = location.hash.slice(1);
    switch (href) {
      case 'kontakt':
        return $('#changeableContent').load('kontakt.html', function() {
          return submitBtnOff();
        });
      default:
        return $('#changeableContent').load('beers.html #' + href);
    }
  });

  submitBtnOff = function() {
    $('#submit-button').prop('disabled', true);
    return $('#name, #email, #message').on('keyup', function() {
      if ($('#name').val() === '' || $('#email').val() === '' || $('#message').val() === '') {
        return $('#submit-button').prop('disabled', true);
      } else {
        return $('#submit-button').prop('disabled', false);
      }
    });
  };

}).call(this);
