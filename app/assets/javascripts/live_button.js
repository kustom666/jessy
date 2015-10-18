var interval = 1000 * 60;
var twitchAPI = 'https://api.twitch.tv/kraken/streams/jessyquil';
var ajaxcall = function(){
	// $.getJSON( twitchAPI, {dataType: "json"})
 //    .done(function( data ) {
 //      if(data.stream)
 //      {
 //      	$(".stream-icon").addClass('rec');
 //      }
 //      else
 //      {
      	
 //      }
 //    });
$.ajax({
    beforeSend: function(request) {
        request.setRequestHeader("Client-ID", '43a0qm3g2v26kbzn70ieoour89emjzz');
    },
    dataType: "jsonp",
    url: twitchAPI,
    success: function(data) {
        if(data.stream)
        {
          $(".stream-icon").addClass('rec');
        }
    }
});
}
$(document).ready(function(){

	ajaxcall();
	setInterval(ajaxcall, interval);

});