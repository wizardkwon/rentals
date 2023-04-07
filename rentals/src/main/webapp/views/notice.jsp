<%@page import="board.Board"%>
<%@page import="java.util.ArrayList"%>
<%@page import="board.controller.BoardDao"%>
<%@page import="client.Client"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
Client client = (Client) session.getAttribute("log");
BoardDao boardDao = BoardDao.getInstance();
ArrayList<Board> list = boardDao.getBoardSearch("");
%>
<jsp:include page="header"></jsp:include>
<body>
	<section>
		<%
		if (client != null) {
		%>
		<h2><%=client.getClinetName()%>님 환영합니다.
		</h2>
		<%
		if (client.getClinetName().equals("관리자")) {
		%>
		<div class="venuejoin">
			<button type="button" onclick="location.href='board_join'">게시글 등록</button>
			<button type="button" onclick="location.href='admin_menu'">관리자
				page</button>
		</div>
		<%
		}
		%>
		<%
		} else {
		%>
		<div class="venuejoin">
			<button type="button" onclick="location.href='board_join'">게시글 등록</button>
			<button type="button" onclick="location.href='client_menu'">고객
				page</button>
		</div>
		<%
		}
		%>
		<h1>공지사항 / 이용후기</h1>
		<h2>글 검색</h2>
		<div style="text-align: center;">
			<input type="search" id="searchNotice" name="searchNotice">
			<input type="hidden" id="command" name="searchNotice"> <input
				type="button" value="검색" onclick="searchNotice()">
		</div>
		<h1>★글 목록★</h1>
		<table border=1>
			<thead>
				<tr>
					<td class="KEY">글 번호</td>
					<td class="KEY">작성자</td>
					<td class="KEY">제목</td>
					<td class="KEY">내용</td>
					<td class="KEY">작성일</td>
					<td class="KEY">글 종류</td>
				</tr>
			</thead>
			<tbody>

			</tbody>
		</table>
	</section>
	<script src="../resources/searchNotice.js"></script>
</body>
<jsp:include page="footer"></jsp:include>
</html>