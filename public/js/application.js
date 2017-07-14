var spin = function() {
  var spinner = $("#spinner-after");

  function rotate(degrees) {
    spinner.css({
      '-webkit-transform': 'rotate(' + degrees + 'deg)',
      '-moz-transform': 'rotate(' + degrees + 'deg)',
      '-ms-transform': 'rotate(' + degrees + 'deg)',
      'transform': 'rotate(' + degrees + 'deg)',
    });
  }

  $({
    deg: 0
  }).animate({
    deg: 360 * 40
  }, {
    duration: 7000,
    step: function() {
      var deg = this.deg;
      rotate(deg);
    }
  });
}

$(document).ready(function() {
  $("#spin-button").on('submit', spin());
  });
