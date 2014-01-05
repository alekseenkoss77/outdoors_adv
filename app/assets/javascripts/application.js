//= require jquery
//= require jquery_ujs
//= require jquery.tools.min
//= require jquery.tweet
//= require mousewheel
//= require fancybox
//= require custom.js

$(document).ready(function(){
    $(".fancy").fancybox({
        openEffect	: 'none',
        closeEffect	: 'none'
    });

    $('.calllink').fancybox({
        autoDimensions: false,
        height: 300,
        width: 400
    });
});

