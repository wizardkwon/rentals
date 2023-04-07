function checkVehicle(htmlForm){
	let check = true;
	
	const vehicleId = document.getElementById("vehicleId");
	const vehicleName = document.getElementById("vehicleName");
	const hourRate = document.getElementById("hourRate");
	const vehicleType = document.getElementById("vehicleType");
	
	if(vehicleId === ""){
		check = false;
		alert("차량 번호를 입력하셔야 합니다.")
	}else if(vehicleName === ""){
		check = false;
		alert("차량명을 입력하셔야 합니다.")
	}else if(hourRate === ""){
		check = false;
		alert("비용을 입력하셔야 합니다.")
	}else if(vehicleType === ""){
		check = false;
		alert("차종을 입력하셔야 합니다.")
	}
	
	if(check === true){
		htmlForm.submit();
	}
	
}