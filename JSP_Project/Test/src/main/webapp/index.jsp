<%@page import="java.util.List"%>
<%@page import="java.util.Enumeration"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*, org.apache.commons.fileupload.*, org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Shop Homepage - Start Bootstrap Template</title>
<!-- Favicon -->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap icons -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/styles.css" rel="stylesheet" />
</head>
<body>
    <!-- Navigation-->
       <%@include file = "header.jsp" %>
       <!-- Header-->
       
       <!-- Section-->
       <section class="py-5">
           <div class="container px-4 px-lg-5 mt-5">
               <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
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
      				String ca = rs.getString(2);
      				String price = rs.getString(3);
      				String ex = rs.getString(4);
      				String img = rs.getString(5);
               %>
               
               <div class="col mb-5">
                       <div class="card h-100">
                           <!-- Product image-->
                         
                           <img class="card-img-top" src="<%=img %>" alt="..." />
                           <!-- Product details-->
                           <div class="card-body p-4">
                               <div class="text-center">
                                   <!-- Product name-->
                                   <h5 class="fw-bolder"><%=name %></h5>
                                   <!-- Product price-->
                                   
                                   <%=price %>원 <br>
                                   <%=ca%> <br>
                                   <%=ex %> <br>
                               </div>
                           </div>
                           <!-- Product actions-->
                           <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                               <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#!">View options</a></div>
                           </div>
                       </div>
                   </div>
		           <%
		      		}
		           stmt.close(); 
		           conn.close(); 
		           %>
                   <div class="col mb-5">
                       <div class="card h-100">
                           <!-- Product image-->
                           <img class="card-img-top" src="https://theniche.co.kr/web/product/medium/202301/9f263540c54e43e6de19796ae3972a6c.jpg" alt="..." />
                           <!-- Product details-->
                           <div class="card-body p-4">
                               <div class="text-center">
                                   <!-- Product name-->
                                   <h5 class="fw-bolder">더니치 에어퍼퓸 드레스퍼퓸 섬유향수 17종 30ml</h5>
                                   <!-- Product price-->
                                   $40.00
                               </div>
                           </div>
                           <!-- Product actions-->
                           <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                               <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="https://smartstore.naver.com/mimicompany0817/products/6532274004?NaPm=ct%3Dlislbx2g%7Cci%3D372463ba4eba19de5ce366c48d8040879d1dd95a%7Ctr%3Dslsl%7Csn%3D4443121%7Chk%3D5250a2fb6b28a2cf68c908c6902eea044334fb70">View options</a></div>
                           </div>
                       </div>
                   </div>
                   <div class="col mb-5">
                       <div class="card h-100">
                           <!-- Sale badge-->
                           <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                           <!-- Product image-->
                           <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                           <!-- Product details-->
                           <div class="card-body p-4">
                               <div class="text-center">
                                   <!-- Product name-->
                                   <h5 class="fw-bolder">Special Item</h5>
                                   <!-- Product reviews-->
                                   <div class="d-flex justify-content-center small text-warning mb-2">
                                       <div class="bi-star-fill"></div>
                                       <div class="bi-star-fill"></div>
                                       <div class="bi-star-fill"></div>
                                       <div class="bi-star-fill"></div>
                                       <div class="bi-star-fill"></div>
                                   </div>
                                   <!-- Product price-->
                                   <span class="text-muted text-decoration-line-through">$20.00</span>
                                   $18.00
                               </div>
                           </div>
                           <!-- Product actions-->
                           <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                               <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a></div>
                           </div>
                       </div>
                   </div>
                   <div class="col mb-5">
                       <div class="card h-100">
                           <!-- Sale badge-->
                           <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                           <!-- Product image-->
                           <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                           <!-- Product details-->
                           <div class="card-body p-4">
                               <div class="text-center">
                                   <!-- Product name-->
                                   <h5 class="fw-bolder">Sale Item</h5>
                                   <!-- Product price-->
                                   <span class="text-muted text-decoration-line-through">$50.00</span>
                                   $25.00
                               </div>
                           </div>
                           <!-- Product actions-->
                           <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                               <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a></div>
                           </div>
                       </div>
                   </div>
                   <div class="col mb-5">
                       <div class="card h-100">
                           <!-- Product image-->
                           <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                           <!-- Product details-->
                           <div class="card-body p-4">
                               <div class="text-center">
                                   <!-- Product name-->
                                   <h5 class="fw-bolder">Popular Item</h5>
                                   <!-- Product reviews-->
                                   <div class="d-flex justify-content-center small text-warning mb-2">
                                       <div class="bi-star-fill"></div>
                                       <div class="bi-star-fill"></div>
                                       <div class="bi-star-fill"></div>
                                       <div class="bi-star-fill"></div>
                                       <div class="bi-star-fill"></div>
                                   </div>
                                   <!-- Product price-->
                                   $40.00
                               </div>
                           </div>
                           <!-- Product actions-->
                           <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                               <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a></div>
                           </div>
                       </div>
                   </div>
                   <div class="col mb-5">
                       <div class="card h-100">
                           <!-- Sale badge-->
                           <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                           <!-- Product image-->
                           <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                           <!-- Product details-->
                           <div class="card-body p-4">
                               <div class="text-center">
                                   <!-- Product name-->
                                   <h5 class="fw-bolder">Sale Item</h5>
                                   <!-- Product price-->
                                   <span class="text-muted text-decoration-line-through">$50.00</span>
                                   $25.00
                               </div>
                           </div>
                           <!-- Product actions-->
                           <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                               <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a></div>
                           </div>
                       </div>
                   </div>
                   <div class="col mb-5">
                       <div class="card h-100">
                           <!-- Product image-->
                           <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                           <!-- Product details-->
                           <div class="card-body p-4">
                               <div class="text-center">
                                   <!-- Product name-->
                                   <h5 class="fw-bolder">Fancy Product</h5>
                                   <!-- Product price-->
                                   $120.00 - $280.00
                               </div>
                           </div>
                           <!-- Product actions-->
                           <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                               <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">View options</a></div>
                           </div>
                       </div>
                   </div>
                   <div class="col mb-5">
                       <div class="card h-100">
                           <!-- Sale badge-->
                           <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                           <!-- Product image-->
                           <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                           <!-- Product details-->
                           <div class="card-body p-4">
                               <div class="text-center">
                                   <!-- Product name-->
                                   <h5 class="fw-bolder">Special Item</h5>
                                   <!-- Product reviews-->
                                   <div class="d-flex justify-content-center small text-warning mb-2">
                                       <div class="bi-star-fill"></div>
                                       <div class="bi-star-fill"></div>
                                       <div class="bi-star-fill"></div>
                                       <div class="bi-star-fill"></div>
                                       <div class="bi-star-fill"></div>
                                   </div>
                                   <!-- Product price-->
                                   <span class="text-muted text-decoration-line-through">$20.00</span>
                                   $18.00
                               </div>
                           </div>
                           <!-- Product actions-->
                           <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                               <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a></div>
                           </div>
                       </div>
                   </div>
                   <div class="col mb-5">
                       <div class="card h-100">
                           <!-- Product image-->
                           <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                           <!-- Product details-->
                           <div class="card-body p-4">
                               <div class="text-center">
                                   <!-- Product name-->
                                   <h5 class="fw-bolder">Popular Item</h5>
                                   <!-- Product reviews-->
                                   <div class="d-flex justify-content-center small text-warning mb-2">
                                       <div class="bi-star-fill"></div>
                                       <div class="bi-star-fill"></div>
                                       <div class="bi-star-fill"></div>
                                       <div class="bi-star-fill"></div>
                                       <div class="bi-star-fill"></div>
                                   </div>
                                   <!-- Product price-->
                                   $40.00
                               </div>
                           </div>
                           <!-- Product actions-->
                           <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                               <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a></div>
                           </div>
                       </div>
                   </div>
               </div>
           </div>
       </section>
       <!-- Footer-->
       <%@ include file="footer.jsp" %>
       <!-- Bootstrap core JS-->
       <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
       <!-- Core theme JS-->
  <script src="js/scripts.js"></script>
</body>
</html>
