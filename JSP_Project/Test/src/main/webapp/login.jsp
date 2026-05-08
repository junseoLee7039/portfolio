<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap icons-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/styles.css" rel="stylesheet" />
</head>
<body>
<%-- header.jsp 포함 --%>
<%@ include file="header.jsp" %>

<main>
  <h2>로그인</h2>
  <form action="index.jsp" method="post">
    <p><label>아이디: <input type="text" name="id" required></label></p>
    <p><label>비밀번호: <input type="password" name="password" required></label></p>
    <input type="submit" value="로그인">
  </form>
  <p>회원이 아니신가요? <a href="guest_insert.jsp">회원가입</a></p>
</main>

<%-- footer.jsp 포함 --%>
<%@ include file="footer.jsp" %>

</body>
</html>