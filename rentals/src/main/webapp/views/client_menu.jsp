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
			<ul>
				<li><a href="car_res">단기랜트(차량예약)</a></li>
				<li><a href="reviews">이용후기</a></li>
				<li><a href="my_page">MY PAGE</a></li>
			</ul>
			<ul>
				<li style="color:blue;"><%=client.getClinetName()%>님
					환영합니다.</li>
				<li style="margin:auto;">
					<form method="POST" action="../service">
						<input type="hidden" name="command" value="logout"> 
						<input type="submit" value="로그아웃">
					</form>
				</li>
			</ul>
		</div>
		<br>



		<div class="user_page"></div>
	</section>
</body>
<jsp:include page="footer"></jsp:include>

</html>