<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	

if(session.getAttribute("empno") == null) {
    response.sendRedirect("login.jsp");
}
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>메인 페이지	</title>
	
	<style>
		.container {
			width: 800px;
			margin: 50px auto;
			paddinf: 20px;
		}
		.header {
			display: flex;
			justify-content: space-between;
			align-items: center;
			margin-bottom: 20px;
		}
	</style>
</head>
<body>
	<div class="container">
		<div class="header">
			<h2>환영합니다!</h2>
			<p>사원번호:<%= session.getAttribute("empno") %></p>
			<p>이름:<%= session.getAttribute("ename") %></p>
			<a href="logout.jsp">로그아웃</a>
		</div>
		
	</div>
</body>
</html>