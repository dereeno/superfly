$(document).ready(function(){

	$( ".increase-age" ).click(function(e) {
		row = e.target.closest('.table-row')
		age = $(row).find('.age')

		age.html(function(i, currentAge){
			return parseInt(currentAge) + 5
		})
	});

});
