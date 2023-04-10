<%@page import="client.Client"%>
<%@page import="venue.Venue"%>
<%@page import="java.util.ArrayList"%>
<%@page import="venue.controller.VenueDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
Client client = (Client) session.getAttribute("log");
%>
<jsp:include page="/header"></jsp:include>
<body>

	<section>
	<h2><%=client.getClientName()%>님 환영합니다.
		<div class="venuejoin">
			<button type="button" onclick="location.href='venue_join'">위치등록</button>
			<button type="button" onclick="location.href='admin_menu'">홈으로</button>
		</div>
		<span>
		<div class="searchBox" style="text-align:center">
			<span style="font-size: x-large; padding-top: 5%;">위치 검색</span>
		</div>
		</span>
		<span>
		<div  style="text-align: center;">
			<input type="search" id="search" name="search"> 
			<input type="hidden" name="command" value="search"> 
			<input type="button" value="검색" onclick="searchVenue()">
		</div>
		</span>
				<h1>차량 위치 등록 리스트</h1>
		<table border=1>
			<thead>
				<tr>
					<td class="KEY">번호</td>
					<td class="KEY">위치 코드</td>
					<td class="KEY">위치명</td>
					<td class="KEY">등록일자</td>
				</tr>
			</thead>
			<tbody>

			</tbody>
		</table>
	</section>
	<script src="../resources/search.js"></script>
</body>
<jsp:include page="/footer"></jsp:include>
</html>