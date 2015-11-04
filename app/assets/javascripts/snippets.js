// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


function render_code_mirror(mode) {
	var cm;

	$("#codemirror").append(function() {
			cm = CodeMirror.fromTextArea($(this).get(0), {
  			lineNumbers: true,
  			mode: 'javascript'
		});
	});

	$('.btn-default').on('click', function(e){
		e.preventDefault();
		cm.save();
		console.log($("#codemirror").val());
	});
}

