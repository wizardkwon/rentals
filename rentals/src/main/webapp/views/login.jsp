<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/grid.css">
</head>
<jsp:include page="/header"></jsp:include>
<body>
	<section>
		<h1 style="text-align: center">JOCAR에 로그인하세요</h1>
	<div class="login_box">
		<form method="POST" action="../service">
			<input type="hidden" name="command" value="login">
			<table class="TEST">
				<tr>
					<td class="KEY"><h3>ID</h3></td>
					<td class="VALUE"><input type="text" id="clientId" name="clientId" placeholder="아이디를 입력하시오"></td>
				</tr>
				<tr>
					<td class="KEY"><h3>PASSWORD</h3></td>
					<td  class="VALUE"><input type="password" id="clientPassword" name="clientPassword"  placeholder="비밀번호를 입력하시오"></td>
				</tr>
			</table>
			<input type="button" value="로그인" onclick="checkLogin(form)">
		</form>
	</div>
	</section>
	<script src="../resources/client_login.js"></script>
</body>
<jsp:include page="/footer"></jsp:include>
</html>