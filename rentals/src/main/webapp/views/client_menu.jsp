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
		<div class="client_menu">
		<h4>
				<a href="car_res"><img src="../resources/images/res_car.png"><br>단기랜트(차량예약)</a>
			</h4>

			<h4>
				<a href="notice"><img src="../resources/images/notices.png"><br>이용후기/공지사항</a>
			</h4>

			<h4>
				<a href="my_page"><img src="../resources/images/my_page.png"><br>MY PAGE</a>
			</h4>
		
		</div>
		<br>

	</section>
</body>
<jsp:include page="footer"></jsp:include>

</html>