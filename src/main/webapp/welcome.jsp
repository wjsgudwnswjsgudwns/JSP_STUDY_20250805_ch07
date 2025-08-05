<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>

		<meta charset="UTF-8">
		<title> 로그인 성공 </title>

	</head>

<!-- -------------------------------BODY-------------------------------------- -->	

	<body>
		
		<%
		
			//쿠키에 저장된 값 가져오기
			Cookie[] cookies = request.getCookies(); // 반환 타입 -> 쿠키의 배열
			
			for(Cookie cookie : cookies) {
				String cValue = cookie.getValue(); // 쿠키의 값 가져오기
				cookie.setMaxAge(60);
				if (cValue.equals("tiger")){
					out.println("[" + cValue + "]님 어서오세요");	
				}
				
			}
		
		%>
		
	</body>
	
</html>