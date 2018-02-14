$(function() {
	$('#ajax').click(function(){
		$.get('/ajax-json', function(response){
			console.log(JSON.parse(response));
		});
	});
	$('#contact-us').submit(function(e){
		e.preventDefault();
		let email = $(this).find('#email').val();
		let title = $(this).find('#title').val();
		let message = $(this).find('#message').val();
		let data = {email, title, message}
		$.post('/contact', data, function(html){
			
			$('#thank-you').html(html);
		})
		// $.post('/contact', function(html){
		// 	console.log(html);
		// 	$('#thank-you').html(html);
		// });
	});
});