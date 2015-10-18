var interval = 1000 * 60;
var twitchAPI = 'https://api.twitch.tv/kraken/streams/jessyquil';
var ajaxcall = function(){
	$.getJSON( twitchAPI, {dataType: "json"})
    .done(function( data ) {
      if(data.stream)
      {
      	$(".stream-icon").addClass('rec');
      }
      else
      {
      	
      }
    });
}
$(document).ready(function(){

	ajaxcall();
	setInterval(ajaxcall, interval);

});