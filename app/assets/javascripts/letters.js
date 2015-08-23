var fill_and_animate = function(phrase) {
  for (var i = 0; i < phrase.length; i++) {
    $('div#letters-background').append($('<div class = "letters"/>').text(phrase[i]));
  };
  $('div.letters').mouseenter(function() {
   $(this).animate({
      fontSize: '4em'
   });
  });
  $('div.letters').mouseleave(function() {
   $(this).animate({
      fontSize: '3em'
   }); 
  });
};



var animate_letters = function() {
  var phrase = 'abcdefghijklmnopqrstuvwxyz';
  fill_and_animate(phrase);
  $('.btn').click( function() {
    phrase = $('input[name=checkListItem]').val();
    $('div.letters').remove();
    fill_and_animate(phrase);
  });
};



$(document).ready(animate_letters);
$(document).on('page:load', animate_letters);