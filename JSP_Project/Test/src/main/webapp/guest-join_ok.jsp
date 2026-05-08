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
Class.forName("oracle.jdbc.OracleDriver");
Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "1234");
PreparedStatement pstmt = null;
String SQL = "INSERT INTO stu_op VALUES(?,?,?,?)";
pstmt = conn.prepareStatement(SQL);

String id = request.getParameter("id");
String password = request.getParameter("password");
String name = request.getParameter("name");
String tel = request.getParameter("phone");

pstmt.setString(1, id);
pstmt.setString(2, password);
pstmt.setString(3, name);
pstmt.setString(4, tel);

pstmt.executeUpdate();
pstmt.close();
conn.close();

%>
<section style="position:fixed; top: 150px; width: 100%; height:100%; ">
<h2><%=name%>님의 회원가입이 완료되었습니다. </h2>
</section>
<main>
  <h2>회원가입 완료</h2>
  <p>축하합니다! 성공적으로 회원가입이 되었습니다.</p>
  <!-- 연결 코드 작성 -->
  
  <a href="login.jsp">로그인 페이지로 이동하기</a>
  <%-- 필요한 경우, 추가적인 설명 또는 사용자 안내 메시지를 입력하세요. --%>
</main>

<%-- footer.jsp 포함 --%>
<%@ include file="footer.jsp" %>



</body>
</html>