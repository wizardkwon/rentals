<%@page import="vehicle.Vehicle"%>
<%@page import="vehicle.controller.VehicleDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<jsp:include page="/header"></jsp:include>
<body>
	<%
	String code = request.getParameter("vehicleId");
	VehicleDao vehicleDao = VehicleDao.getInstance();
	Vehicle vehicle = vehicleDao.getVehicleById(code);
	String name = "";
	String resCheck = "";
	System.out.println("res: "+vehicle.getCheckRes());
	if(vehicle.getCheckRes().equals("y")){
		resCheck = "예약가능";
	}else {
		resCheck = "예약불가";
	}
	
	if(vehicle.getVehicleType() == 1){
		name = "세단";
	}else if(vehicle.getVehicleType() == 2){
		name = "경차";
	}else if(vehicle.getVehicleType() == 3){
		name = "SUV";
	}else if(vehicle.getVehicleType() == 4){
		name = "외제차";
	}
	%>
	<section>
			<h1>차량 정보</h1>
		<table border=1>
			<thead>
				<tr>
					<td class="KEY">차종</td>
					<td class="KEY">차량 번호</td>
					<td class="KEY">차량명</td>
					<td class="KEY">위치번호</td>
					<td class="KEY">차량위치명</td>
					<td class="KEY">시간당 가격(원)</td>
					<td class="KEY">등록일자</td>
					<td class="KEY">예약가능여부(y/n)</td>
				</tr>
				<tr>
					<td class="VALUE"><%=name %></td>
					<td class="VALUE"><%=vehicle.getVehicleId() %></td>
					<td class="VALUE"><%=vehicle.getVehicleName() %></td>
					<td class="VALUE"><%=vehicle.getVenueId() %></td>
					<td class="VALUE"><%=vehicle.getVenueName() %></td>
					<td class="VALUE"><%=vehicle.getHourRate() %></td>
					<td class="VALUE"><%=vehicle.getDateTime() %></td>
					<td class="VALUE"><%=resCheck %></td>
				</tr>
			</thead>
			<tbody>

			</tbody>
		</table>
	</section>
</body>
<jsp:include page="/footer"></jsp:include>
</html>