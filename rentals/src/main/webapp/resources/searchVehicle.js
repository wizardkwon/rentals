const searchVehicle = document.getElementById("search");

search.addEventListener("change", e => {
	searchVehicle();
})

function searchVehicle() {
	$("tbody").empty();
	let count = 0;
	$.ajax({
		"url": `http://localhost:8081/service?command=search_venue&keyword=${search.value}`,
		"method": "GET",
		"contentType": "application/x-www-form-urlencoded; charset=UTF-8",

		"timeout": 0,
	}).done(function(response) {
		response.forEach(vehicle => {
		
			$("tbody").append(
				`<tr>
					<td class="LIST">${++count}</td>
					<td class="LIST">${vehicle.vehicleId}</td>
					<td class="LIST">${vehicle.venueId}</td>
					<td class="LIST">${vehicle.vehicleName}</td>
					<td class="LIST">${vehicle.houtRate}</td>
					<td class="LIST">${vehicle.dateTime}</td>
					<td class="LIST">${vehicle.vehicleType}</td>
				</tr>`
			)
		});
	});
}