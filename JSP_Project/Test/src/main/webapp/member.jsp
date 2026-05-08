<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>회원 목록</title>
    <!-- Bootstrap CSS -->
    <link href="css/styles.css" rel="stylesheet" />
</head>
<body>
    <%@include file = "header.jsp" %>
    
    <div class="container mt-4">
        <h1 class="mb-4">회원 목록</h1>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">아이디</th>
                    <th scope="col">비밀번호</th>
                    <th scope="col">이름</th>
                    <th scope="col">전화번호</th>
                </tr>
            </thead>
            <tbody>
                <% 
                    try {
                        // 데이터베이스 연결 설정 (여기서는 예시용 연결 정보를 사용하므로 실제 연결 정보로 변경해야 함)
                        Class.forName("oracle.jdbc.driver.OracleDriver");
                        Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xe", "system", "1234");

                        // 회원 목록 가져오기
                        String sql = "SELECT * FROM stu_op"; // 사용자 테이블 및 열 이름을 실제 테이블 및 열 이름으로 변경해야 함
                        Statement stmt = conn.createStatement();
                        ResultSet rs = stmt.executeQuery(sql);

                        int index = 1;
                        while (rs.next()) {
                        	String id = rs.getString("id");
                        	String passwd = rs.getString("passwd");
                            String name = rs.getString("name"); // 열 이름을 실제 이름으로 변경해야 함
                            String tel = rs.getString("tel");
                %>
                <tr>
                    <td><%= id %></td>
                    <td><%= passwd %></td>
                    <td><%= name %></td>
                    <td><%= tel %></td>
                </tr>
                <% 
                        }

                        // 연결 닫기
                        rs.close();
                        stmt.close();
                        conn.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                %>                   
            </tbody>
        </table>
    </div>
    
    <%@include file="footer.jsp" %>
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>
</body>
</html>
