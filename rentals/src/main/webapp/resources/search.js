

const search = document.getElementById("search");

search.addEventListener("change", e => {
	searchVenue();
})

function searchVenue() {
	$("tbody").empty();
	$.ajax({
		"url": `http://localhost:8081/service?command=searchvenue&keyword=${search.value}`,
		"method": "GET",
		"contentType": "application/x-www-form-urlencoded; charset=UTF-8",

		"timeout": 0,
	}).done(function(response) {
		response.forEach(venue => {
		
			$("tbody").append(
				`<tr>
					<td class="VALUE">${venue.venueId}</td>
					<td class="VALUE">${venue.venueName}</td>
					<td class="VALUE">${venue.dateTime}</td>
				</tr>`
			)
		});
	});
}