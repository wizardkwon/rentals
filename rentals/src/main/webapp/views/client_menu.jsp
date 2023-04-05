<%@page import="client.Client"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/grid.css">
</head>
<%
Client client = (Client)session.getAttribute("log");
%>

<header>
	<h1>JOCAR RENTALS</h1>
</header>
<nav>
	<h3 style="text-align: center"><%=client.getClinetName() %> 님 환영합니다.</h3>
</nav>
<body>

</body>
</html>