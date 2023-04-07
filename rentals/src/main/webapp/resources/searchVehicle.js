const search = document.getElementById("searchVehicle");

search.addEventListener("change", e => {
	searchVehicle();
})

function searchVehicle() {
	$("tbody").empty();
	let count = 0;
	$.ajax({
		"url": `http://localhost:8081/service?command=search_vehicle&keyword=${search.value}`,
		"method": "GET",
		"contentType": "application/x-www-form-urlencoded; charset=UTF-8",

		"timeout": 0,
	}).done(function(response) {
		response.forEach(vehicle => {
			let name = "";
			if(vehicle.vehicleType === 1){
			console.log(vehicle.vehicleType);
				name = "세단";
			}else if(vehicle.vehicleType === 2){
				name = "경차";
			}else if(vehicle.vehicleType === 3){
				name = "SUV";
			}else if(vehicle.vehicleType === 4){
				name = "외제차";
			}
			console.log(name);
			$("tbody").append(
				`<tr>
					<td class="LIST">${++count}</td>
					<td class="LIST">${name}</td>
					<td class="LIST"><a href="vehicle_detail?vehicleId=${vehicle.vehicleId}">${vehicle.vehicleId}</a></td>
					<td class="LIST">${vehicle.vehicleName}</td>
					<td class="LIST">${vehicle.venueId}</td>
					<td class="LIST">${vehicle.venueName}</td>
					<td class="LIST">${vehicle.hourRate}</td>
					<td class="LIST">${vehicle.dateTime}</td>
				</tr>`
			)
		});
	});
}