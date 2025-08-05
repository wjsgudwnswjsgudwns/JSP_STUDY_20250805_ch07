<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>

		<meta charset="UTF-8">
		<title> 로그인 확인 </title>

	</head>

<!-- -------------------------------BODY-------------------------------------- -->	

	<body>
		
		<%
		
		request.setCharacterEncoding("UTF-8");
		
		String mid = request.getParameter("loginId");
		String mpw = request.getParameter("loginPw");
		String rememberId = request.getParameter("rememberId"); // 아이디 저장 체크 박스 값 (on)
		
		if(mid.equals("tiger") && mpw.equals("12345")){
			if(rememberId != null){ // 참이면 체크 박스에 체크가 된 상태로 넘어옴
				Cookie cookie = new Cookie("saveId", mid); // 쿠키에 saveId ->tiger 값 생성
				cookie.setMaxAge(60*60*24*7); // 쿠키 유효시간 7일
				response.addCookie(cookie); // 쿠키를 클라이언트에게 보내기	
				
			} else { // 체크박스를 체크가 안 한 상태로 넘어옴 -> 쿠키 삭제 
				Cookie cookie = new Cookie("saveId", mid); // 쿠키에 saveId ->tiger 값 생성
				cookie.setMaxAge(0); // 쿠키 유효시간 0일
				response.addCookie(cookie); // 쿠키를 클라이언트에게 보내기
			}
			
			
			session.setAttribute("user", mid);
			response.sendRedirect("welcome.jsp"); // 로그인 성공시 welcome.jsp 강제 이동
			
		} else {
			response.sendRedirect("login.jsp"); // 로그인 실패시 login.jsp 강제 이동
		}
		
		%>
		
	</body>
	
</html>