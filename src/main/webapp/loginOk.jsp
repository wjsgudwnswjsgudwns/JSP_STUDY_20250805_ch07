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
		
		<%!
				
			String mid;
			String mpw;
		
		%>
		
		<%
		
			request.setCharacterEncoding("UTF-8");
			
			mid = request.getParameter("loginId");
			mpw = request.getParameter("loginPw");
		
			if(mid.equals("tiger") && mpw.equals("12345")) {
				session.setAttribute("sid", mid); // 세션에 아이디 저장 -> 로그인 성공
				
				Cookie cookie = new Cookie("cid", mid); // 쿠키 생성
				response.addCookie(cookie); // 생성한 쿠키를 클라이언트에게 전송
				response.sendRedirect("welcome.jsp");
			} else {
				response.sendRedirect("login.jsp");
			}
		%>
		
	</body>
	
</html>