<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/grid.css">
</head>
<body>

<header>
	<h1>JOCAR RENTALS</h1>
</header>
<nav><h3 style="text-align: center">JOCAR에 로그인하세요</h3></nav>
	<section>
		<form method="POST" action="../service">
			<input type="hidden" name="command" value="login">
			<table>
				<tr>
					<td><h3>ID</h3></td>
					<td><input type="text" id="clientId" name="clientId" placeholder="아이디를 입력하시오"></td>
				</tr>
				<tr>
					<td><h3>PASSWORD</h3></td>
					<td><input type="password" id="clientPassword" name="clientPassword"  placeholder="비밀번호를 입력하시오"></td>
				</tr>
			</table>
			<input type="button" value="로그인" onclick="checkLogin(form)">
		</form>
	</section>
	<script src="../resources/validation.js"></script>
	<footer><p>우리집 강아지는 복슬 강아지~</p></footer>
</body>
</html>