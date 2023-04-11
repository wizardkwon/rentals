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
			let resName= "";
			let className = "";
			if(vehicle.vehicleType === 1){
				name = "세단";
			}else if(vehicle.vehicleType === 2){
				name = "경차";
			}else if(vehicle.vehicleType === 3){
				name = "SUV";
			}else if(vehicle.vehicleType === 4){
				name = "외제차";
			}
			if(vehicle.checkRes === "y"){
				resName = "예약가능"
				className = "LIST_YES"
			}else {
				resName = "예약불가"
				className = "LIST_NO"
			}
			
			console.log("차량명 :"+vehicle.vehicleName);
			console.log("예약여부:"+vehicle.checkRes);
			
			$("tbody").append(
				`<tr>
					<td class="LIST">${++count}</td>
					<td class="LIST">${name}</td>
					<td class="LIST_BTN">${vehicle.vehicleId}</td>
					<td class="LIST">${vehicle.vehicleName}</td>
					<td class="LIST">${vehicle.venueId}</td>
					<td class="LIST">${vehicle.venueName}</td>
					<td class="LIST">${vehicle.hourRate}</td>
					<td class="LIST">${vehicle.dateTime}</td>
					<td class="${className}"><a href="vehicle_res?vehicleId=${vehicle.vehicleId}">${resName}</a></td>
				</tr>`
			)
		});
	});
}