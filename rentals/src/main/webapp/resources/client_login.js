function checkLogin(htmlForm){
	let check = true;
	
	const clientId = document.getElementById("clientId");
	const clientPassword = document.getElementById("clientPassword");

	
	if(clientId === ""){
		check = false;
		alert("회원 아이디를 입력하셔야 합니다.")
	}else if(clientPassword === ""){
		check = false;
		alert("비밀번호를 입력하셔야 합니다.")
	}

	
	if(check === true){
		htmlForm.submit();
	}
	
}