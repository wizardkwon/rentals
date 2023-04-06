function checkValues(htmlForm){
	let url = "join?";
	
	const clientId = document.getElementById("clientId").value;
	const clientPassword = document.getElementById("clientPassword").value;
	const clientName = document.getElementById("clientName").value;
	
	
	let check = true;
	
	if(clientId !== ""){
		url += "&clientId=" + clientId;
	}
	if(clientPassword !== ""){
		url += "&clientPassword=" + clientPassword;
	}
	if(clientName !== ""){
		url += "&clientName=" + clientName;
	}
	
	
	if(clientId === ""){
		check = false;
		alert("회원 아이디를 입력하셔야 합니다.")
	}else if(clientPassword === ""){
		check = false;
		alert("비밀번호를 입력하셔야 합니다.")
	}else if(clientName === ""){
		check = false;
		alert("성명을 입력하셔야 합니다.")
	}
	
	if(check === false){
		location.href = url;
	}else{
		htmlForm.submit();
	}
}


