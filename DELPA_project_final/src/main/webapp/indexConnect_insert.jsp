<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Statement"%> 
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String usernm = request.getParameter("usernm");
	String userid = request.getParameter("userid");
	String password = request.getParameter("password");
	String passwdcheck = request.getParameter("passwdcheck"); 
	
	Class.forName("oracle.jdbc.OracleDriver"); 
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "1234"); 
	out.print("DB 연결 성공! <br>"); 
	
	String SQL = "INSERT INTO Search_table(usernm, userid, password, passwdcheck) VALUES(?,?,?,?)";	
	PreparedStatement pstmt = conn.prepareStatement(SQL);
	pstmt.setString(1,usernm);
	pstmt.setString(2,userid);
	pstmt.setString(3,password);
	pstmt.setString(4,passwdcheck); 
	pstmt.executeUpdate(); 
	
	pstmt.close();
	conn.close(); 	
%>
</body>
</html>