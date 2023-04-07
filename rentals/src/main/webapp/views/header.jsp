<%@page import="client.Client"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/grid.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
</head>
<%
Client client = (Client) session.getAttribute("log");
%>
<body>
	<header>
		<h1>
			<a href="index">THIS IS JOCAR RENTAL</a>
		</h1>
	</header>
	<nav>
		<div class="nav_menu">
			<ul>
				<li><a href="vehicle_info">차량정보</a></li>
				<li><a href="notice">공지사항</a></li>
			</ul>
			<%
			if (client == null) {
			%>
			<ul>
				<li><a href="join">회원가입</a></li>
				<li><a href="login">로그인</a></li>
			</ul>

			<%
			} else {
			%>
			<ul>
				<li><%=client.getClinetName()%></li>
				<li><a href="http://localhost:8081/service?command=logout">로그아웃</a></li>
			</ul>
			<%
			}
			%>

		</div>
	</nav>
</body>
</html>