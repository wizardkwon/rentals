<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.Timestamp"%>
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

String clientId = request.getParameter("clientId");
String clientPassword = request.getParameter("clientPassword");
String clientName = request.getParameter("clientName");
%>

	<section>
	<h3 style="text-align: center">회원 정보 입력</h3>
	<form method="POST" action="../service">
	<input type="hidden" name="command" value="join">
		<table class="TEST">
			<tr>
				<td  class="KEY">ID</td>
				<td  class="VALUE"><input type="text" id="clientId" name="clientId" value="<%=clientId != null ? clientId : ""%>"
				<%=clientId == null ? "autofocus" : ""%> placeholder="아이디를 입력하시오"></td>
			</tr>
			<tr>
				<td  class="KEY">PASSWORD</td>
				<td  class="VALUE"><input type="password" id="clientPassword" name="clientPassword" value="<%=clientPassword != null ? clientPassword : ""%>"
				<%=clientPassword == null ? "autofocus" : ""%> placeholder="비밀번호를 입력하시오"></td>
			</tr>
			<tr>
				<td  class="KEY">NAME</td>
				<td  class="VALUE"><input type="text" id="clientName" name="clientName" value="<%=clientName != null ? clientName : ""%>"
				<%=clientName == null ? "autofocus" : ""%> placeholder="성명을 입력하시오"></td>
			</tr>
			<tr>
				<td  class="KEY">가입일자</td>
				<td  class="VALUE"><input type="date" id="dateTime" name="dateTime" value="<%=dateTime %>"></td>
			</tr>
			
		</table>
		<input type="button" value="가입" onclick="checkValues(form)">
	</form>
	</section>
	<script src="../resources/validation.js"></script>
	
</body>
<jsp:include page="footer"></jsp:include>
</html>