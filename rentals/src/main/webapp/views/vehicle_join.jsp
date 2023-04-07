
<%@page import="java.util.ArrayList"%>
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
ArrayList<Venue> list = venue.getVenueSearch("");

String vehicleId = request.getParameter("vehicleId");
String venueId = request.getParameter("venueId");
String vehicleName = request.getParameter("vehicleName");
String hourRate = request.getParameter("hourRate");
String vehicleType = request.getParameter("vehicleType");

%>
<section>
<h3 style="text-align: center">차량 정보 입력</h3>
	<form method="POST" action="../service">
	<input type="hidden" name="command" value="vehicle_join">
		<table class="TEST">
			<tr>
				<td class="KEY">차량번호</td>
				<td class="VALUE"><input type="text" id="vehicleId" name="vehicleId" value="<%=vehicleId != null ? vehicleId : ""%>"
				<%=vehicleId == null ? "autofocus" : ""%> placeholder="차량번호 네자리(0000)"></td>
			</tr>
			<tr>
				<td class="KEY">차량위치</td>
				<td class="VALUE">
				<select id="venueId" name="venueId" style="width:80%">
				<%for(Venue venues : list) {%>
					<option value="<%=venues.getVenueId() %>"><%=venues.getVenueName() %></option>
					
				<%}%>
				
				</select> 
				</td>
			</tr>
			<tr>
				<td class="KEY">차량명</td>
				<td class="VALUE"><input type="text" id="vehicleName" name="vehicleName" value="<%=vehicleName != null ? vehicleName : ""%>"
				<%=vehicleName == null ? "autofocus" : ""%> placeholder="차량명을 입력하시오"></td>
			</tr>
			<tr>
				<td class="KEY">시간강 가격</td>
				<td class="VALUE"><input type="text" id="hourRate" name="hourRate" value="<%=hourRate != null ? hourRate : ""%>"
				<%=hourRate == null ? "autofocus" : ""%> placeholder="시간당비용을 입력하시오"></td>
			</tr>
			<tr>
				<td class="KEY">등록일자</td>
				<td class="VALUE"><input type="date" id="dateTime" name="dateTime" value="<%=dateTime %>"></td>
			</tr>
			<tr>
				<td class="KEY">차종</td>
				<td class="VALUE">
				<select id="vehicleType" name="vehicleType">
					<option value="1" selected>세단</option>
					<option value="2">경차</option>
					<option value="3">SUV</option>
					<option value="4">외제차</option>
				</select>
				</td>
			</tr>
			
		</table>
		<input type="button" value="등록" onclick="checkVehicle(form)">
	</form>
	</section>
		<script src="../resources/vehicle_join.js"></script>
</body>
<jsp:include page="footer"></jsp:include>
</html>