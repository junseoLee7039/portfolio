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
<nav class="navbar navbar-expand-lg navbar-light bg-light">
           <div class="container px-4 px-lg-5">
               <a class="navbar-brand" href="http://bootstrapk.com/getting-started/" target="block">Start Bootstrap</a>
               <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
               <div class="collapse navbar-collapse" id="navbarSupportedContent">
                   <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                       <li class="nav-item"><a class="nav-link active" aria-current="page" href="index.jsp">Home</a></li>
                       <li class="nav-item"><a class="nav-link" href="#!">About</a></li>
                       <li class="nav-item"><a class="nav-link" href="test2.jsp">상품등록</a></li>
                       <li class="nav-item dropdown">
                           <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Shop</a>
                           <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                               <li><a class="dropdown-item" href="#!">All Products</a></li> <!-- 모든 상품 -->
                               <li><hr class="dropdown-divider" /></li>
                               <li><a class="dropdown-item" href="#!">Popular Items</a></li>
                               <li><a class="dropdown-item" href="#!">New Arrivals</a></li>
                           </ul>
                       </li>
                       <li class="nav-item"><a class="nav-link" href="guest_insert.jsp">회원가입</a></li>
                       <li class="nav-item"><a class="nav-link" href="login.jsp">로그인</a></li>
                   </ul>
                   <form class="d-flex">
                       <button class="btn btn-outline-dark" type="submit">
                           <i class="bi-cart-fill me-1"></i>
                           Cart
                           <span class="badge bg-dark text-white ms-1 rounded-pill">0</span>
                       </button>
                   </form>
               </div>
           </div>
       </nav>
       <header class="bg-dark py-5">
           <div class="container px-4 px-lg-5 my-5">
               <div class="text-center text-white">
                   <h1 class="display-4 fw-bolder">Shop in style란??</h1>
                   <p class="lead fw-normal text-white-50 mb-0">With this shop hompeage template</p>
               </div>
           </div>
       </header>
       <div>
       <h4>"Shop in Style"은 다양한 측면에서 탁월한 경험을 제공합니다. 첫째로, 쇼핑 환경 자체가 아름답고 편안한 분위기를 조성합니다. <br>
       고급스러운 디자인과 인테리어, 현대적인 조명, 공간 배치 등이 조화롭게 결합되어 쇼핑을 하는 동안 손님들에게 아늑하고 멋진 분위기를 선사합니다.</h4>
       </div>
       <a href="index.jsp"><p align="center">돌아가기</p></a>
       <%@include file="footer.jsp" %>
</body>
</html>