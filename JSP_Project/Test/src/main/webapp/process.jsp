<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- header.jsp 포함 --%>
<%@ include file="header.jsp" %>
<%
String title = request.getParameter("item-title");
String ca = request.getParameter("category");
String price = request.getParameter("item-price");
String des = request.getParameter("item-description");
String img = request.getParameter("img");


Class.forName("oracle.jdbc.OracleDriver");
Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "1234");
PreparedStatement pstmt = null;
String SQL = "INSERT INTO prize VALUES(?,?,?,?,?)";
pstmt = conn.prepareStatement(SQL);


pstmt.setString(1, title);
pstmt.setString(2, ca);
pstmt.setString(3, price);
pstmt.setString(4, des);
pstmt.setString(5, img);

pstmt.executeUpdate();
pstmt.close();
conn.close();
%>
<jsp:forward page="index.jsp"></jsp:forward>

</body>
</html>