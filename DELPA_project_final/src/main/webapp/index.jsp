<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html> 
<html lang="ko">
<head> 
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DELPA</title>
    <link rel="stylesheet" href="./index.css">
    <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-2883022056987736"
    crossorigin="anonymous"></script>
    <link rel="stylesheet" href=".https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css"
        integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head> 
<style> 
    body {
        width: 80rem; 
        margin: 0 auto; 
      }
</style> 
<body style="position: relative; top: -60px;">
    <header>
        <nav>       
            <ul type="none" style="justify-content: flex-start; opacity:0.7; position: relative; top:70px;"> 
                <li class="hed">당신의 맞춤형 검색엔진 DELPA</li>  
                <li class="hedled" style="position: relative; top: -20px;">DELPA를 시작엔진으로</li> 
            </ul>
        </nav>
    </header> 
    <main>
<form action="index_ok.jsp" method="post">
    <nav> 
        <ul type="none">
            <li>
                <div class="search mt-5 mx-auto" style="float: center; position: relative; margin-top: 180px; margin-left: 100px;"> 
                    <input type="image" src="./img/DELPA%20LOGO(수정본).png" width="200px" align="absmiddle">
                    <input type="text" name=title itemname="검색어" required value="" size="33" placeholder="검색어를 입력해주세요" class="rounded-input" style="width: 450px; ">
                    <input type="submit" value="Submit">
                </div>
            </li>
        </ul>
    </nav>
</form>
    </main>
	    <hr width="1280px;" style="position: relative; left: 50px;">
	    <nav>
	        <ul type="none" class="menu1" style="margin-left: 100px; justify-content: flex-start;"> 
	        
	            <div>   
	            	<a href="whatdelpa.jsp" style="text-decoration-line: none; opacity:0.7;">DELPA가 무엇인가요?</a>&nbsp;&nbsp;&nbsp; 
	            </div> 
	            
	            <div>
	            	<a style="text-decoration-line: none; opacity:0.7;">도움말 및 QNA</a>&nbsp;&nbsp;&nbsp;
	            </div> 
	            
	            <div>
	            	<a href="developer.jsp" style="text-decoration-line: none; opacity:0.7;">개발진 정보</a>&nbsp;&nbsp;&nbsp; 
	            </div>
	            
	            <div>
	            	<a href="login.jsp" style="text-decoration-line: none; opacity:0.7;">로그인</a>&nbsp;&nbsp;&nbsp;
	            </div>
	            
	            <div>
	            	<a href="signin.jsp" style="text-decoration-line: none; opacity:0.7;">회원가입</a>&nbsp;&nbsp;&nbsp; 
	            </div>
	        </ul>
	    </nav> 
	    <hr width="1000px" style="position: relative; right: 90px;"> 
	     <form action="" style="float: right; text-align: left; margin-top: -30px; position: relative; left: 200px;">
		        <div class="loginbox">
		            <p style="opacity:0.7; position: relative; right: -15px; top: -5px;">로그인</p>  
		                <label for="u_id" style="position: relative; right: -15px; top: -20px; opacity:0.7;">아이디</label>  
		                <input type="text" name="userid" id="userid" size="10" class="rounded-input" style="position: relative; left: -40px; top: 15px;">
		                <label for="u_pw" style="position: relative; right: -15px; top: 20px; opacity:0.7;">비밀번호</label> 
		                <input type="password" name="password" id="password" size="10" class="rounded-input" style=" position: relative; left:10px; top: 20px;">
		            	<input type="submit" value="로그인" class="submit-input2" style="position: relative; left: 125px; top: 20px;"> 
		            	<a href="signin.jsp"><p>회원가입</p></a>
		        </div>
		    </form>
	        <form action="">
	            <section style="margin-left: 50px; text-decoration-line: none; opacity:0.7;"> 
	                <article style="margin-top: 50px;">
	                    <p>DELPA가 추천합니다!(여러 검색기록을 바탕으로 맞춤형 광고를 띄워줍니다.)</p>
	                    <div class="adbox">
	                    	<script>
		                            {% if ad_targeting %}
		                            <ul>
		                                {% for targeting in ad_targeting %}
		                                    <li>{{ targeting }}</li>
		                                {% endfor %}
		                            </ul>
		                        {% else %}
		                            <p>No ad targeting results available.</p>
		                        {% endif %}
	                        </script>
	                    </div>
	                </article>
	            </section>
	            <section style="margin-left: 50px; text-decoration-line: none; opacity:0.7;">
	                <article style="margin-top: 50px;">
	                    <p>이건 어떠실까요?</p>
	                    <div class="adbox">
	                    	<script>
		                            {% if ad_targeting %}
		                            <ul>
		                                {% for targeting in ad_targeting %}
		                                    <li>{{ targeting }}</li>
		                                {% endfor %}
		                            </ul>
		                        {% else %}
		                            <p>No ad targeting results available.</p>
		                        {% endif %}
		                     </script>
	                    </div>
	                </article>
	            </section>
    		</form>
    <footer> 	
        <div>
            <div style="padding-top:80px">
            </div>
            <div class="footeer">
            	<br>
                <br>
                <br>
                <p style="text-align: center;">Copyright 2023 All rights reserved by team DEBUGGER</p>
                <br>
                <br>
                <br>
                <br>
            </div>
        </div>
    </footer>
</body>
</html>