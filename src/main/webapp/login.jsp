<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>

		<meta charset="UTF-8">
		<title> 로그인 </title>

	</head>

<!-- -------------------------------BODY-------------------------------------- -->	

	<body>
		
		<h2>로그인</h2>
		<hr>
		
		<form action="loginOk.jsp" method="post">
		
			아이디 : <input type="text" name="loginId"><br><br>
			비밀번호 : <input type="text" name="loginPw"><br><br>
			<input type="submit" value="로그인">
		
		</form>
		
	</body>
	
</html>