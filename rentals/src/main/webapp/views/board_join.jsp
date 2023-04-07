<%@page import="client.Client"%>
<%@page import="board.Board"%>
<%@page import="java.util.ArrayList"%>
<%@page import="board.controller.BoardDao"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/grid.css">
</head>
<jsp:include page="header"></jsp:include>
<body>
<% 
SimpleDateFormat s = new SimpleDateFormat("yyyy-MM-dd");
Date date = new Date();
String dateTime = s.format(date);
BoardDao boardDao = BoardDao.getInstance();
ArrayList<Board> list = boardDao.getBoardSearch("");
Client whoIsLog = (Client)session.getAttribute("log");


%>
<section>
<h3 style="text-align: center">게시글 등록</h3>
	<form method="POST" action="../service">
	<input type="hidden" name="command" value="board_join">
	<div  class="TEXTAREA">
	
		<table>
			<tr>
				<td class="KEY">등록일자</td>
				<td class="VALUE"><input type="date" id="dateTime" name="dateTime" value="<%=dateTime %>"></td>
			</tr>
			<tr>
				<td class="KEY">게시글 타입</td>
				<td class="VALUE">
				<select id="boardType" name="boardType" style="width:80%">
					<option value="1">공지사항</option>
					<option value="2">이용후기</option>
				</select> 
				</td>
			</tr>
			<tr>
				<td class="KEY">작성자</td>
				<td class="VALUE"><input type="text" id="clinetName" name="clinetName" value="<%=whoIsLog.getClinetName() %>"></td>
			</tr>
			<tr>
				<td class="KEY">제목</td>
				<td class="VALUE"><input type="text" id="postTitle" name="postTitle" value=""></td>
			</tr>
			<tr>
				<td class="KEY">내용</td>
				<td class="VALUE"><textarea type="text" id="contents" name="contents" value=""></textarea></td>
			</tr>
		
			
		</table>
	</div>
		<input type="button" value="등록" onclick="checkBoard(form)">
	</form>
	</section>
		<script src="../resources/board_join.js"></script>

</body>
<jsp:include page="footer"></jsp:include>
</html>