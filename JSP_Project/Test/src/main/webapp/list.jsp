<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" 
 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>전체 주문 목록</title>
	</head>
	<body>
		
		<section style="position:fixed; top: 150px; width: 100%; height:100%; overflow: auto">
		<h3 align="center">전체 주문 목록</h3>
		<table width="900" border="1" align="center">
			<tr>
				<td>상품명</td>
				<td>카테고리</td>
				<td>가격</td>				
				<td>상품설명</td>
				<td>이미지</td>
			</tr>
			<tr>
			<%
			Class.forName("oracle.jdbc.OracleDriver");
			//Connection conn = Driver.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "1234");
			Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "1234");
			Statement stmt = conn.createStatement();
			ResultSet rs = null;
			String SQL = "select * from prize";
			rs = stmt.executeQuery(SQL);
			while (rs.next()) {
				String name = rs.getString(1);
				String ca  = rs.getString(2);
				String price  = rs.getString(3);
				String ex  = rs.getString(4);
				String img  = rs.getString(5);
				%>
				<tr>
				<td><%=name%></td>
				<td><%=ca%></td>
				<td><%=price%></td>
				<td><%=ex%></td>
				<td><img alt="" src="<%=img%>"></td>
				</tr>
			<%
		}
		stmt.close();
		conn.close();
		%>
		</table>	
		</section>	
		
	<%@ include file="footer.jsp"%>
	</body>
</html>
