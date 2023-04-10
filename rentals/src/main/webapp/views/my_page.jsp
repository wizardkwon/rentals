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
<jsp:include page="/header"></jsp:include>
<body>
	<%
	Client client = (Client) session.getAttribute("log");
	BoardDao boardDao = BoardDao.getInstance();
	String name = client.getClientName();
	ArrayList<Board> list = boardDao.getBoardSearch(name);
	%>
	<section>
	<h1>마이 페이지</h1>
		<table border=1>
			<tr>
				<td class="KEY">아이디</td>
				<td class="VALUE"><input type="text" id="clientId" name="clientId"
					value="<%=client.getClientId()%>"></input></td>
			</tr>
			<tr>
				<td class="KEY">성명</td>
				<td class="VALUE"><input type="text" id="clientName" name="clientName"
					value="<%=client.getClientName()%>"></input></td>
			</tr>
			<tr>
				<td class="KEY">비밀번호</td>
				<td class="VALUE"><input type="text" id="clientName" name="clientName"
					value="<%=client.getClientPassword()%>"></input></td>
			</tr>
		</table>
		
		<h1>★내가 작성한 글 목록★</h1>
		<table border=1>
			<thead>
				<tr>
					<td class="KEY">번호</td>
					<td class="KEY">작성자</td>
					<td class="KEY">제목</td>
					<td class="KEY">내용</td>
					<td class="KEY">작성일</td>
					<td class="KEY">글 종류</td>
				</tr>
			</thead>
			<tbody>
			<%
			int count = 1;
			for(Board board : list){
			%>
				<tr>
				<td class="LIST"><a href="board_detail?postNo=<%=board.getPostNo()%>"><%=count++ %></a></td>
					<td class="LIST"><%=board.getClientName() %></td>
					<td class="LIST"><%=board.getPostTitle() %></td>
					<td class="LIST"><%=board.getContents() %></td>
					<td class="LIST"><%=board.getDateTime() %></td>
					<td class="LIST">이용후기</td>
				
				</tr>
				<%} %>
				
			</tbody>
		</table>
	</section>


</body>
<jsp:include page="/footer"></jsp:include>
</html>