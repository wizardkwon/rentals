<%@page import="venue.Venue"%>
<%@page import="java.util.ArrayList"%>
<%@page import="venue.controller.VenueDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<jsp:include page="header"></jsp:include>
<body>

	<section>
		<div class="venuejoin">
			<button type="button" onclick="location.href='venue_join.jsp'">위치등록</button>
			<button type="button" onclick="location.href='admin_menu.jsp'">홈으로</button>
		</div>
		<h1>차량 위치 등록 리스트</h1>
		<%
		VenueDao venueDao = VenueDao.getInstance();
		ArrayList<Venue> list = venueDao.getVenueAll();
		for (int i = 0; i < list.size(); i++) {
		%>

		<table border=1>
			<thead>
				<tr>
					<td>위치 코드</td>
					<td>위치명</td>
					<td>등록일자</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><%=list.get(i).getVenueId()%></td>
					<td><%=list.get(i).getVenueName()%></td>
					<td><%=list.get(i).getDateTime()%></td>
				</tr>
			</tbody>
			<%
			}
			%>
		</table>
	</section>

</body>
<jsp:include page="footer"></jsp:include>
</html>