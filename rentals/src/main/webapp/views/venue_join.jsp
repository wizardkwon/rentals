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

String venueId = request.getParameter("venueId");
String venueName = request.getParameter("venueName");
%>
	<section>
<h3 style="text-align: center">차량위치 정보 입력</h3>
	<form method="POST" action="../service">
	<input type="hidden" name="command" value="venue_join">
		<table class="TEST">
			<tr>
				<td class="KEY">차량위치번호</td>
				<td class="VALUE"><input type="text" id="venueId" name="venueId" value="<%=venueId != null ? venueId : ""%>"
				<%=venueId == null ? "autofocus" : ""%> placeholder="위치번호 네자리(0000)"></td>
			</tr>
			<tr>
				<td class="KEY">차량위치명</td>
				<td class="VALUE"><input type="text" id="venueName" name="venueName" value="<%=venueName != null ? venueName : ""%>"
				<%=venueName == null ? "autofocus" : ""%> placeholder="위치명을 입력하시오"></td>
			</tr>
			<tr>
				<td class="KEY">등록일자</td>
				<td class="VALUE"><input type="date" id="dateTime" name="dateTime" value="<%=dateTime %>"></td>
			</tr>
			
		</table>
		<input type="button" value="등록" onclick="checkVenue(form)">
	</form>
	</section>
	<script src="../resources/venue_join.js"></script>
</body>
<jsp:include page="footer"></jsp:include>
</html>