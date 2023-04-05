<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/grid.css">
</head>
<body>
<% 
SimpleDateFormat s = new SimpleDateFormat("yyyy-MM-dd");
Date date = new Date();
String dateTime = s.format(date);

String clientId = request.getParameter("clientId");
String clientPassword = request.getParameter("clientPassword");
String clientName = request.getParameter("clientName");
%>
<header>
	<h1>JOCAR RENTALS</h1>
</header>
<nav><h3 style="text-align: center">회원 정보 입력</h3></nav>
	<section>
	<form method="POST" action="../service">
	<input type="hidden" name="command" value="join">
		<table>
			<tr>
				<td>ID</td>
				<td><input type="text" id="clientId" name="clientId" value="<%=clientId != null ? clientId : ""%>"
				<%=clientId == null ? "autofocus" : ""%>></td>
			</tr>
			<tr>
				<td>PASSWORD</td>
				<td><input type="password" id="clientPassword" name="clientPassword" value="<%=clientPassword != null ? clientPassword : ""%>"
				<%=clientPassword == null ? "autofocus" : ""%>></td>
			</tr>
			<tr>
				<td>NAME</td>
				<td><input type="text" id="clientName" name="clientName" value="<%=clientName != null ? clientName : ""%>"
				<%=clientName == null ? "autofocus" : ""%>></td>
			</tr>
			<tr>
				<td>가입일자</td>
				<td><input type="date" id="dateTime" name="dateTime" value="<%=dateTime %>"></td>
			</tr>
			
		</table>
		<input type="button" value="가입" onclick="checkValues(form)">
	</form>
	</section>
	<script src="../resources/validation.js"></script>
	<footer><p>우리집 강아지는 복슬 강아지~</p></footer>
</body>
</html>