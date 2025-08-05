<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>

		<meta charset="UTF-8">
		<title> 장바구니 상품 추가 </title>

	</head>

<!-- -------------------------------BODY-------------------------------------- -->	

	<body>
		<%
			
			request.setCharacterEncoding("UTF-8");
					
			
			String product = request.getParameter("product"); // 장바구니에 추가할 상품 이름
			Cookie[] cookies = request.getCookies(); // 기존 쿠키 가져오기
			
			String savedCart = "";
			String newCart = "";
			
			if (cookies != null) { // 쿠기가 null이 아닐때만
				for(Cookie cookie : cookies){
					if(cookie.getName().equals("cart")){ // 기존 쿠키에 저장된 상품 목록
						savedCart = cookie.getValue(); // 기존 장바구니에 있던 상품 목록
					}
				}
			}
			
			if(savedCart == ""){
				newCart = product;
			} else {
				newCart = savedCart + "/" + product;
			}
			
			Cookie cartCookie = new Cookie("cart", newCart);
			cartCookie.setMaxAge(60*60*24*7);
			response.addCookie(cartCookie);
			
		%>
		<a href="productList.jsp">상품추가하기</a>
		<a href="viewCart.jsp">장바구니 보기</a>
	</body>
	
</html>