
const search = document.getElementById("search");

search.addEventListener("change", e => {
	searchVenue();
})

function searchVenue() {
	$("tbody").empty();
	let count = 0;
	$.ajax({
		"url": `http://localhost:8081/service?command=search_venue&keyword=${search.value}`,
		"method": "GET",
		"contentType": "application/x-www-form-urlencoded; charset=UTF-8",

		"timeout": 0,
	}).done(function(response) {
		response.forEach(venue => {
		
			$("tbody").append(
				`<tr>
					<td class="LIST">${++count}</td>
					<td class="LIST">${venue.venueId}</td>
					<td class="LIST">${venue.venueName}</td>
					<td class="LIST">${venue.dateTime}</td>
				</tr>`
			)
		});
	});
}

