<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<%
	String empno = request.getParameter("empno");
	String ename = request.getParameter("ename");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/spring5fs","root","1234");
		
		String sql = "select * from emp where empno=? and ename=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, empno);
		pstmt.setString(2, ename); 
		
		rs = pstmt.executeQuery();
	
		if(rs.next()){
			session.setAttribute("empno", empno);
			session.setAttribute("ename", ename);
			response.sendRedirect("main.jsp");
		}else{
			response.sendRedirect("login.jsp");
		}} catch(Exception e) {
			e.printStackTrace();
		}	
		
%>
