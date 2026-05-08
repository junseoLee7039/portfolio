<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- 아래 2행 부트스트랩을 위해 반드시 필요한 행 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>

</head>
<body>
<%-- header.jsp 포함 --%>
<%@ include file="header.jsp" %>

<main>
    <h2>회원가입</h2>
    <form action="guest-join_ok.jsp" method="post" name="frm1">
    	<p><label>아이디: <input type="text" name="id" required></label></p>
        <p><label>비밀번호: <input type="password" name="password" required></label></p>
        <p><label>비밀번호 확인: <input type="password" name="password2" required></label></p>
        <p><label>이름: <input type="text" name="name" required></label></p>
        <p><label>이메일: <input type="email" name="email" required></label></p>
        <p><label>전화번호: <input type="tel" name="phone" required></label></p>
        <p><label>주소: <input type="text" name="address" required></label></p>
        <input type="submit" value="회원가입" onclick="valid_check()">
    </form>
</main>

<%-- footer.jsp 포함 --%>
<%@ include file="footer.jsp" %>

</body>

<script type="text/javascript">
function valid_check(){
	if(document.frm1.id.value==""){
		alert("아이디를 입력하세요.");
		document.frm1.userid.focus();
		return false;
	}else if (document.frm1.password.value == "") {
		alert("비밀번호를 입력하세요.");
		document.frm1.usernm.focus();
		return false;
		} else if (document.frm1.password2.value == "") {
		alert("비밀번호를 확인을 입력하세요.");
		document.frm1.passwd.focus();
		return false;
		} else if (document.frm1.name.value == "") {
		alert("이름을 입력하세요.");
		document.frm1.passwd2.focus();
		return false;
		} else if (document.frm1.email.value == "") {
		alert("이메일을 입력하세요.");
		document.frm1.jumin1.focus();
		return false;
		} else if (document.frm1.phone.value == "") {
		alert("연락처를 입력하세요.");
		document.frm1.phone2.focus();
		return false;
		} else if (document.frm1.address.value == "") {
		alert("주소를 입력하세요.");
		document.frm1.phone3.focus();
		return false;
		}
	document.frm1.submit();
	
}</script>
</html>