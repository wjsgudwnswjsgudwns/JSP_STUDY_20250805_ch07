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
		
		request.setCharacterEncoding("UTF-8");
		
		String sid = (String) session.getAttribute("user");
		
		if (sid == null) { // 로그인 하지 않은 상태로 접근시 로그인 페이지로 이동
			response.sendRedirect("login.jsp");
		}
		%>
		<h2> <%=sid %>님 환영합니다. </h2>
		<hr>
		<a href="logout.jsp">로그아웃</a>
		
	</body>
	
</html>