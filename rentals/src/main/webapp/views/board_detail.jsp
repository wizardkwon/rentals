<%@page import="client.Client"%>
<%@page import="board.Board"%>
<%@page import="board.controller.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/grid.css">
</head>
<jsp:include page="/header"></jsp:include>
<body>
	<%
	Client client = (Client) session.getAttribute("log");
	
	int no = Integer.parseInt(request.getParameter("postNo"));
	BoardDao boardDao = BoardDao.getInstance();
	Board board = boardDao.getBoardByNo(no);
	String con = board.getContents().replace("\r\n","<br>");
	String type = "";
	if(board.getPostType() == 1){
		type = "공지사항";
	}else {
		type = "이용후기";
	}
	%>
	<section>
			<h1>차량 정보</h1>
			<form method="POST" ACTION="../service">
			<input type="hidden" name="command" value="board_update">
		<table border=1>
			<thead>
			
					<input type="hidden" id="postNo" name="postNo" value="<%=board.getPostNo() %>">
				
				<tr>
					<td class="KEY">작성자</td>
					<td class="VALUE"><%=board.getClientName()%></td>
				</tr>
				<tr>
					<td class="KEY">제목</td>
					<td class="BOARD_TITLE"><input type="text" id="postTitle" name="postTitle" value="<%=board.getPostTitle() %>"></input></td>
				</tr>
				<tr>
					<td class="KEY">내용</td>
					<td class="BOARD_TITLE"><textarea id="contents" name="contents" ><%=con %></textarea></td>
				</tr>
				<tr>
					<td class="KEY">등록일자</td>
					<td class="VALUE"><%=board.getDateTime() %></td>
				</tr>
				<tr>
					<td class="KEY">글 타입</td>
					<td class="VALUE"><%=type %></td>
				</tr>
				
			</thead>
			<tbody>

			</tbody>
		</table>
		<%
		if(client.getClientId() != null && board.getClientId().equals(client.getClientId())){
		%><input type="submit" value="수정"><%	
		}
		%>
			</form>
	</section>

</body>
<jsp:include page="/footer"></jsp:include>
</html>