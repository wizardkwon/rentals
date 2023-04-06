
<%@page import="venue.controller.VenueDao"%>
<%@page import="venue.Venue"%>
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
VenueDao venue = VenueDao.getInstance();

String vehicleId = request.getParameter("vehicleId");
String venueId = request.getParameter("venueId");
String vehicleName = request.getParameter("vehicleName");
String hourRate = request.getParameter("hourRate");
String vehicleType = request.getParameter("vehicleType");

%>
<h3 style="text-align: center">차량 정보 입력</h3>
	<form method="POST" action="../service">
	<input type="hidden" name="command" value="vehicle_join">
		<table class="TEST">
			<tr>
				<td class="KEY">차량번호</td>
				<td class="VALUE"><input type="text" id="vehicleId" name="vehicleId" value="<%=vehicleId != null ? vehicleId : ""%>"
				<%=vehicleId == null ? "autofocus" : ""%> placeholder="위치번호 네자리(0000)"></td>
			</tr>
			<tr>
				<td class="KEY">차량위치</td>
				<td class="VALUE"><input type="text" id="venueId" name="venueId" value="<%=venueId != null ? venueId : ""%>"
				<%=venueId == null ? "autofocus" : ""%> placeholder="위치번호 네자리(0000)"></td>
			</tr>
			<tr>
				<td class="KEY">차량명</td>
				<td class="VALUE"><input type="text" id="vehicleName" name="vehicleName" value="<%=vehicleName != null ? vehicleName : ""%>"
				<%=vehicleName == null ? "autofocus" : ""%> placeholder="위치명을 입력하시오"></td>
			</tr>
			<tr>
				<td class="KEY">시간강 가격</td>
				<td class="VALUE"><input type="text" id="hourRate" name="hourRate" value="<%=hourRate != null ? hourRate : ""%>"
				<%=hourRate == null ? "autofocus" : ""%> placeholder="위치명을 입력하시오"></td>
			</tr>
			<tr>
				<td class="KEY">등록일자</td>
				<td class="VALUE"><input type="date" id="dateTime" name="dateTime" value="<%=dateTime %>"></td>
			</tr>
			<tr>
				<td class="KEY">차종</td>
				<td class="VALUE"><input type="text" id="vehicleType" name="vehicleType" value="<%=vehicleType != null ? vehicleType : ""%>"
				<%=vehicleType == null ? "autofocus" : ""%> placeholder="위치명을 입력하시오"></td>
			</tr>
			
		</table>
		<input type="button" value="등록" onclick="checkVehicle(form)">
	</form>
</body>
<jsp:include page="footer"></jsp:include>
</html>