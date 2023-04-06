function checkVenue(htmlForm){
	let check = true;
	
	const venueId = document.getElementById("venueId");
	const venueName = document.getElementById("venueName");

	
	if(venueId === ""){
		check = false;
		alert("위치 코드를 입력하셔야 합니다.")
	}else if(venueName === ""){
		check = false;
		alert("위치명을 입력하셔야 합니다.")
	}
	
	if(check === true){
		htmlForm.submit();
	}
	
}