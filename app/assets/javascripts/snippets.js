// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(function(){
	
	var cm;

	var special_mimetypes = {
		"c" : "text/x-csrc",
		"c++" : "text/x-c++src",
		"c#" : "text/x-csharp",
		"objective-c" : "text/x-objectivec",
		"scala" : "text/x-scala",
		"java" : "text/x-java",
		"scss" : "css",
		"less" : "css",
		"sass" : "css",
		"angular.js" : "javascript",
		"backbone.js" : "javascript",
		"ember.js" : "javascript",
		"knockout.js" : "javascript",
		"react.js" : "javascript",
		"jquery" : "javascript",
		"wrapped php" : "php"
	};

	$("#codemirror").append(function() {
			cm = CodeMirror.fromTextArea($(this).get(0), {
				theme: "monokai",
  				lineNumbers: true
			});
	});
		
	$("select:first").on('change', function(){

		var selection = $(this).find('option:selected').val().toLowerCase();

		if(special_mimetypes[selection]) {
			selection = special_mimetypes[selection];
		}
		
		cm.setOption("mode", selection);
	});

	$('.snippet-form').submit(function() {
        cm.save();
        return true; // return false to cancel form action
    });

});
