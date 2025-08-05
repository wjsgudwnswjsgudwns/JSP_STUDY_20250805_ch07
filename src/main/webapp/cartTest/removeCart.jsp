<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>

		<meta charset="UTF-8">
		<title> 장바구니 초기화 </title>

	</head>

<!-- -------------------------------BODY-------------------------------------- -->	

	<body>
		
		<%
		
		//session.invalidate();
		
		Cookie cookie = new Cookie("cart","");
		cookie.setMaxAge(0); // 쿠키 유효 시간 (초 단위)
		response.addCookie(cookie); // 클라이언트에게 보내기
		
		
		%>
		<a href="viewCart.jsp">장바구니 보기</a>
		<a href="product.jsp">홈으로</a>
	</body>
	
</html>