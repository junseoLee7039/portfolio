<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.Calendar" %>
<%! Calendar cal = Calendar.getInstance(); %>
<%
	int year = cal.get(Calendar.YEAR);
	int month = cal.get(Calendar.MONTH) + 1; 
	int date = cal.get(Calendar.DATE);
	int hour12 = cal.get(Calendar.HOUR);
	int minute = cal.get(Calendar.MINUTE);
	int second = cal.get(Calendar.SECOND); 
%>
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
    * { 
        padding-right: 50px; 
        padding-left: 50px; 
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
        
        <form action="index_insert.jsp" method = "post"style="display: block;">
	        <nav> 
		        <ul type="none">
		            <li>
			            <div class="search mt-5 mx-auto" style="float: left; position: relative; bottom: -160px;"> 
						    <form name=fsearch method=get action="http://search.naver.com/search.naver">
						    	<input type=image src="./img/DELPA%20LOGO(수정본).png" width="200px" align=absmiddle>
						        <input type=text name="query" itemname="검색어" required value="" size="33" placeholder="검색어를 입력해주세요" class="rounded-input" style="width: 450px; ">
						        <input type=image name="search" value="search" src="./img/DELPA프로젝트돋보기.png" style="width: 30px; position: relative; top: 10px; right: 120px;">
						        <div style="float: right;position: relative; top: -150px; left: 20px; opacity:0.6; text-align: center;" >
						        	<p style="font-size: 40px; position: relative; bottom: -30px;"><%=hour12%>시<%=minute%>분</p>
					       			<p style="font-size: 30px;"><%= month %>월<%= date %>일</p>
						        </div>
						    </form>
						</div>
			        </li>
		         </ul>
	      	</nav>
        </form>
    </main>
    <hr width="1200px;">
    <nav>
        <ul type="none" class="menu1" style="margin-left: 100px; justify-content: flex-start;">
            <a href="whatdelpa.jsp" style="text-decoration-line: none; opacity:0.7;">DELPA가 무엇인가요?</a> 
            <li>도움말 및 QNA</li>
            <a href="developer.jsp" style="text-decoration-line: none; opacity:0.7;">개발진 정보</a> 
            <li>의견보내기</li>
            <li>방문 기록</li>
        </ul>
    </nav> 
    <hr width="910px" align="left" style="margin-left: 193px;"> 
    <form action="" style="float: right; text-align: left; margin-top: -30px;">
        <div class="loginbox">
            <p style="opacity:0.7; position: relative; right: 30px; top: -5px;"></p>  
        </div>
    </form>
        <form action="">
            <section style="margin-left: 50px;">
                <article style="margin-top: 50px;">
                    <p>DELPA가 추천합니다!(여러 검색기록을 바탕으로 맞춤형 광고를 띄워줍니다.)</p>
                    <div class="adbox">
                            {% if ad_targeting %}
                            <ul>
                                {% for targeting in ad_targeting %}
                                    <li>{{ targeting }}</li>
                                {% endfor %}
                            </ul>
                        {% else %}
                            <p>No ad targeting results available.</p>
                        {% endif %}
                    </div>
                </article>
            </section>
            <form action="">
                <div class="loginbox" style="float: right; position: relative; top: -165px;">
                    <p>인기트랜드</p>
                    <ol type="1"> 
                        <li></li>

                        <li></li>

                        <li></li>

                        <li></li>
                        
                        <li></li> 
                    </ol>
                </div>
            </form>
            <article style="margin-top: 35px; margin-left: 150px;">
                <p>이건 어떠실까요?</p> 
                <div class="adbox">
                        {% if ad_targeting %}
                        <ul>
                            {% for targeting in ad_targeting %}
                                <li>{{ targeting }}</li>
                            {% endfor %}
                        </ul>
                    {% else %}
                        <p>No ad targeting results available.</p>
                    {% endif %}
                </div>
            </article>
        </section>
        <aside>
            <form action="">
                <div class="loginbox" style="float: right; position: relative; top: -300px; right: 100px;">  
                    <p style="text-align: left;">오늘 날씨는?</p> 
                    <!--봉양면 
                    그외 날씨 아이콘 표시--> 
                </div>
            </form>
        </aside>
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