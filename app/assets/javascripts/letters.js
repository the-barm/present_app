var animate_letters = function() {
  var $phrase = 'abcdefghijklmnopqrstuvwxyz';
  for (var i = 0; i < $phrase.length; i++) {
        $('div#lgn-button').append($('<div class = "letters"/>').text($phrase[i]));
    }
    
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


$(document).ready(animate_letters);
$(document).on('page:load', animate_letters);