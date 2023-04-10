function checkBoard(htmlForm){
	let check = true;
	
	const dateTime = document.getElementById("dateTime");
	const postType = document.getElementById("postType");
	const clientId = document.getElementById("clientId");
	const postTitle = document.getElementById("postTitle");
	const contents = document.getElementById("contents");
	
	
	if(dateTime === ""){
		check = false;
		alert("일자를 입력하셔야 합니다.")
	}else if(postType === ""){
		check = false;
		alert("글 타입을 입력하셔야 합니다.")
	}else if(clientId === ""){
		check = false;
		alert("작성자명을 입력하셔야 합니다.")
	}else if(postTitle === ""){
		check = false;
		alert("제목을 입력하셔야 합니다.")
	}else if(contents === ""){
		check = false;
		alert("내용을 입력하셔야 합니다.")
	}
	
	if(check === true){
		htmlForm.submit();
	}
	
}