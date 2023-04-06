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
Client client = (Client) session.getAttribute("log");
%>

<jsp:include page="header"></jsp:include>
<body>
	<section>
		<h2><%=client.getClinetName()%>님 환영합니다.
		</h2>
		<div class="admin_menu">
			<h4>
				<a href="vehicle_info"><img src="../resources/images/car.png"><br>차량정보</a>
			</h4>

			<h4>
				<a href="venue_info"><img src="../resources/images/car_nav.png"><br>차량위치등록</a>
			</h4>

			<h4>
				<a href="notice"><img src="../resources/images/notice.png"><br>공지사항
					등록</a>
			</h4>
		</div>
	</section>

</body>
<jsp:include page="footer"></jsp:include>
</html>