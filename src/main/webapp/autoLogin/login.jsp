<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>

		<meta charset="UTF-8">
		<title> 회원 로그인 </title>

	</head>

<!-- -------------------------------BODY-------------------------------------- -->	

	<body>
		<%
		
			Cookie[] cookies = request.getCookies(); // 기존에 쿠키 가져오기
			// 처음 사이트 방문인 경우 & 쿠키 유효 시간 경과후 방문 -> null
			
			String savedId = "";
			String savedPw = "";
			
			if(cookies != null) { // 쿠키가 존재 할 경우에만 쿠키 추출
				for(Cookie cookie : cookies){
					if(cookie.getName().equals("saveId")){ // 쿠키 중 이름이 saveId 를 추출
						savedId = cookie.getValue(); // 쿠키의 saveId 이름으로 저장된 실제 아이디 값 가져오기 (tiger)
					}
					if(cookie.getName().equals("savePw")){ // 쿠키 중 이름이 savePw 를 추출
						savedPw = cookie.getValue(); // 쿠키의 savePw 이름으로 저장된 실제 비밀번호 값 가져오기 (12345)
					}
				}
			}
			
		%>
		<h2>회원 로그인</h2>
		<hr>
		
		<form action="loginOk.jsp" method="post">
			아이디 : <input type="text" name="loginId" value="<%= savedId %>"><br>
			패스워드 : <input type="password" name="loginPw" value="<%= savedPw %>"><br>
			<input type="checkbox" name="rememberId" <%= (savedId.isEmpty() ? "": "checked") %>> 아이디 저장<br>
			<input type="submit" value="로그인">
		</form>
		
	</body>
	
</html>