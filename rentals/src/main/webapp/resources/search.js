

const search = document.getElementById("search");

search.addEventListener("change", e => {
	searchVenue();
})

function searchVenue() {

	$.ajax({
		"url": `http://localhost:8081/service?command=searchvenue&keyword=${search.value}`,
		"method": "GET",
		"contentType": "application/x-www-form-urlencoded; charset=UTF-8",
		
		"timeout": 0,
	}).done(function(response) {
		console.log(response);
	});
}