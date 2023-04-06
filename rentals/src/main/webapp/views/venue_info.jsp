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
			<button type="button" onclick="location.href='venue_join'">위치등록</button>
			<button type="button" onclick="location.href='admin_menu'">홈으로</button>
		</div>
		<div class="searchBox">
			<span style="font-size: x-large; padding-top: 5%;">위치 검색</span>
		</div>
			<input style="margin-top: 2%;" type="search" id="search" name="search"> 
			<input type="hidden" name="command" value="search"> 
			<input type="button" value="검색" onclick="searchVenue()">
		<table border=1>
			<thead>
				<tr>
					<td class="KEY">위치 코드</td>
					<td class="KEY">위치명</td>
					<td class="KEY">등록일자</td>
				</tr>
			</thead>
			<tbody>
				<h1>차량 위치 등록 리스트</h1>
				<%
				String search = request.getParameter("search");
				System.out.println("amlsdasda: "+search);
				if(search == null){
					search = "";
				}
				VenueDao venueDao = VenueDao.getInstance();
				ArrayList<Venue> list = venueDao.getVenueSearch(search);
				for (int i = 0; i < list.size(); i++) {
				%>
				<tr>
					<td class="VALUE"><%=list.get(i).getVenueId()%></td>
					<td class="VALUE"><%=list.get(i).getVenueName()%></td>
					<td class="VALUE"><%=list.get(i).getDateTime()%></td>
				</tr>
				<%
				}
				%>
			</tbody>
		</table>
	</section>
	<script src="../resources/search.js"></script>
</body>
<jsp:include page="footer"></jsp:include>
</html>