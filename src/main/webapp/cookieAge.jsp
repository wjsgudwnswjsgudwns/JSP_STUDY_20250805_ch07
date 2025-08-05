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
		
		Cookie[] cookies = request.getCookies();
		for(Cookie cookie : cookies) {
			cookie.setMaxAge(60); // 쿠키 유효 시간 (초 단위)
			response.addCookie(cookie); // 클라이언트에게 보내기
		}
		
		for(Cookie cookie : cookies) { // 모든 쿠키 삭제
			cookie.setMaxAge(0); // 쿠키 유효 시간을 0으로 하면 쿠키 삭제
			response.addCookie(cookie); // 클라이언트에게 보내기
		}
		
		
		%>
		
	</body>
	
</html>