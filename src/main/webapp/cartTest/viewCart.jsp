<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>

		<meta charset="UTF-8">
		<title> 장바구니 </title>

	</head>

<!-- -------------------------------BODY-------------------------------------- -->	

	<body>
		
		<%
		
		request.setCharacterEncoding("UTF-8");
		
		Cookie[] cookies = request.getCookies(); // 기존 쿠키 가져오기
		String savedCart = "";
		
		if (cookies != null) { // 쿠기가 null이 아닐때만
			for(Cookie cookie : cookies){
				if(cookie.getName().equals("cart")){ // 기존 쿠키에 저장된 상품 목록
					savedCart = cookie.getValue(); // 기존 장바구니에 있던 상품 목록
				}
			}
		}
		
		if(savedCart == null) {
			out.println("장바구니가 비어있습니다.");
		} else {
//			out.println(savedCart); // 상품 목록 출력
			String[] carts = savedCart.split("/"); //  "/"를 기준으로 문자열을 분리 -> 문자열 배열
			for(String cart : carts){
				out.println("* "+ cart + "<br>");
			}
		}
		
		%>
		
		<a href="removeCart.jsp">장바구니 비우기</a>
		
	</body>
	
</html>