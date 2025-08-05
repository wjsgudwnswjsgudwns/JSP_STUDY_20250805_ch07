<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>

		<meta charset="UTF-8">
		<title>  </title>

	</head>

<!-- -------------------------------BODY-------------------------------------- -->	

	<body>
		
		<%
		
		session.invalidate();
		
		%>
		로그아웃 하셨습니다.<br>
		<a href="login.jsp">로그인</a>
	</body>
	
</html>