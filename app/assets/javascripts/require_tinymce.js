$(document).ready(function() {
  load_editors();
});

function load_editors(){
	tinymce.init({
        selector: ".tinymce"
    });
}