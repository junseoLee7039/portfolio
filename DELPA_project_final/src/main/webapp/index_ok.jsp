<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="Hotel Sample">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <link rel="shortcut icon" type="image/png" href="favicon.png?546">
    
	<link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css?1108">
	<link rel="stylesheet" type="text/css" href="style.css?5642">
	<link rel="stylesheet" type="text/css" href="./css/animate.min.css?3061">
	<link rel="stylesheet" type="text/css" href="./css/ionicons.min.css">
	<link rel="stylesheet" type="text/css" href="./css/all.min.css">
	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,800,300&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Lato:100,300,400,700,900&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
<body>
	<%
	try{
	String title = request.getParameter("title");
	
	Class.forName("oracle.jdbc.OracleDriver");
	String SQL = "insert into search_table(title) values(?)";
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system", "1234");
	PreparedStatement pstmt = conn.prepareStatement(SQL);
	pstmt.setString(1,title);
	pstmt.executeUpdate();
	pstmt.close();
	conn.close();	
    %>
    <script type="text/javascript">
         self.location.href="index.jsp";
      </script>
      <%
   }catch(Exception e){
      %>
      <script type="text/javascript">
         self.location.href="index.jsp";
      </script>
      <%
   }
      %>
	

</body>
</html>

