<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Statement"%> 
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf8">
<link rel="stylesheet" href="css/index1.css?ver=4">
<title>DELPA 회원가입</title> 
</head>
<script>
    function validateForm() {
        var password = document.getElementById("password").value;
        var confirmPassword = document.getElementById("passwdcheck").value;
        if (password != confirmPassword) {
            document.getElementById("error-message").innerText = "Passwords do not match."; 
            return false;
        } else {
            document.getElementById("error-message").innerText = "";
            return true;
        }
    }
</script>
    <style>
    
      body {
        width: 30rem;
        margin: 0 auto;
        margin-top: 100px; 
      }

      h2 {
        margin-bottom: 1rem;
        border-bottom: 1px solid #888;
      }

      .center {
        padding: 0.3rem;
        border: 1px solid #888;
      }

      .item {
        margin: 0.2rem;
        padding: 0.3rem;
      }

      label {
        display: inline-block;
        width: 8rem;
        margin-right: 1rem;
        vertical-align: top;
      }
      
      select, input {
        padding: 0.3rem;
      }

      textarea {
        margin-left: 9rem;
        width: 10rem;
      }

      span {
        font-size: 0.7rem;
        color: #444;
      }
      .rounded-input {
        border-radius: 30px;
        padding: 15px;
        font-size: 16px;
      }
      .submit-input2 {
        border-radius: 30px;
        padding: 15px;
        font-size: 10px;
          width:100px;
        border: 1px solid #00C7B0;
      }
      input {
       border: 1px solid #00C7B0; 
       margin-top:20px;
       margin-right: 10px;
       width:60%;
       box-shadow: 0px 0.5px 0.5px 0.5px gray;
       }
       .circle{
          border:1px solid #00C7B0;
          font-size:1px;
       }
     fieldset {
       width: 100%;
       border: 1px solid #00C7B0;
       box-shadow: 0px 2px 2px 2px gray;
       }
       div.radio-wrap {
        display: inline-flex;
         align-items: center;   
     }    
     .error{
     	text-align:center;
     }

    </style>
    
<body>
   <div>
      <div style="display: inline-block; vertical-align: top; position: relative; top: 20px;"> 
       <a href="index.jsp"><img src="./img/DELPA%20LOGO(수정본).png" height="62.9px" width="215px" /></a>
   </div>
   <div style="display: inline-block; opacity: 0.5; position: relative; top: 15px;">
       <h1>회원가입</h1>
     </div>
   </div>
   <form action="sign-insert.jsp" method = "post" onsubmit="return validateForm()">
      <fieldset  class="rounded-input">      
      <div style="position: relative; left: 30px; top: 30px;">
         <label>이름/닉네임</label>  
         <br>
         <input type="text" class="rounded-input" name ="usernm" placeholder="이름/닉네임 입력" required>
         <a style="font-size: 0.7rem;"></a>
      </div>
      <br>
      <div style="position: relative; left: 30px; top: 30px;">
         <label>아이디 ID</label>
         <br>
          <input type="text" class="rounded-input" name="userid" placeholder="아이디 입력" required>
      </div>
      <br>
      <div style="position: relative; left: 30px; top: 30px;"> 
         <label>비번 PW</label> 
         <br>
          <input type="password" class="rounded-input" name="password" id="password" placeholder="비밀번호 (8~20자 까지)"  minlength="8" maxlength="20" required>
      </div>
      <br>
      <div style="position: relative; left: 30px; top: 30px;"> 
         <label>비밀번호 확인</label>
         <br>
         <input type="password" class="rounded-input" name="passwdcheck" id="passwdcheck" placeholder="비밀번호 확인"  minlength="8" maxlength="20" required >
      </div>
      <br>
      <br>
      <p id="error-message" class="error"></p>
      <br>
      <div style="text-align:right;">
         <input type="submit" value="SIGN UP" class="submit-input2">
      </div>
      </fieldset>
     
   </form>
</body>
</html>