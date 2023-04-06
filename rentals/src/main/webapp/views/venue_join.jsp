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

<h3 style="text-align: center">차량위치 정보 입력</h3>

<% 
SimpleDateFormat s = new SimpleDateFormat("yyyy-MM-dd");
Date date = new Date();
String dateTime = s.format(date);

String venueId = request.getParameter("venueId");
String venueName = request.getParameter("venueName");
%>
	<section>
	<form method="POST" action="../service">
	<input type="hidden" name="command" value="venue_join">
		<table>
			<tr>
				<td>차량위치 code</td>
				<td><input type="text" id="venueId" name="venueId" value="<%=venueId != null ? venueId : ""%>"
				<%=venueId == null ? "autofocus" : ""%>></td>
			</tr>
			<tr>
				<td>차량위치명</td>
				<td><input type="password" id="clientPassword" name="clientPassword" value="<%=venueName != null ? venueName : ""%>"
				<%=venueName == null ? "autofocus" : ""%>></td>
			</tr>
			<tr>
				<td>등록일자</td>
				<td><input type="date" id="dateTime" name="dateTime" value="<%=dateTime %>"></td>
			</tr>
			
		</table>
		<input type="button" value="등록" onclick="checkVenue(form)">
	</form>
	</section>
	<script src="../resources/validation.js"></script>
</body>
<jsp:include page="footer"></jsp:include>
</html>