const search = document.getElementById("searchNotice");

search.addEventListener("change", e => {
	searchNotice();
})

function searchNotice() {
	$("tbody").empty();
	
	$.ajax({
		"url": `http://localhost:8081/service?command=search_board&keyword=${search.value}`,
		"method": "GET",
		"contentType": "application/x-www-form-urlencoded; charset=UTF-8",

		"timeout": 0,
	}).done(function(response) {
		response.forEach(board => {
			let name = "";
			if(board.postType === 1){
			
				name = "공지사항";
			}else if(board.postType === 2){
				name = "이용후기";
			}
			console.log(name);
			$("tbody").append(
				`<tr>
					<td class="LIST">${board.postNo}</td>
					<td class="LIST">${board.clientName}</td>
					<td class="LIST">${board.postTitle}</td>
					<td class="LIST">${board.contents}</td>
					<td class="LIST">${board.dateTime}</td>
					<td class="LIST">${name}</td>
					
				</tr>`
			)
		});
	});
}