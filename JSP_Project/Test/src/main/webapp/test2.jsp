<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상품등록</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 20px;
 }
        
        h1 {
            text-align: center;
            margin-bottom: 20px;
        }
        
        form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        
        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }
        
        input, textarea {
            width: 100%;
            margin-bottom: 20px;
        }
        
        button {
            background-color: blue;
            color: white;
            font-size: 16px;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
            margin-bottom: 10px;
        }
        
        button:hover {
            background-color: darkblue;
        }
    </style>
</head>
<body>
    <h1>상품등록</h1>
    <form id="item-form" method="post" action="process.jsp" >
        <div>
            <label for="item-title">상품명:</label>
            <input type="text" id="item-title" name="item-title" required>
        </div>
        <div>
            <label for="item-title">카테고리:</label>
            <select name="category" id="category">
            <option value="의류">의류</option>
            <option value="전자제품">전자제품</option>
            <option value="가구">가구</option>
            <option value="기타">기타</option>
        	</select><br><br>	
        </div>
        <div>
            <label for="item-price">가격:</label>
            <input type="number" id="item-price" name="item-price" required>
        </div>
        <div>
            <label for="item-description">상품 설명:</label>
            <textarea id="item-description" name="item-description" required rows="5" cols="50"></textarea>
        </div>
        <div>
            <label for="item-image">상품 이미지:</label>
            <select name="img">
            	<option value="uploads/1.jpeg">더니치 우드세이지 앤 씨솔트 탈취향수 50ml(여성용)</option>
            	<option value="uploads/2.jpeg">더니치 오롤라 오드퍼퓸 30ml(여성용)</option>
            	<option value="uploads/3.jpeg">더니치 더벨루스 산타마리아노벨라 프라지아</option>
            	<option value="uploads/4.jpeg">더니치 더커버센트 더 스니프 </option>
            </select>
            <!-- <input type="file"  accept="image/" id="item-image" name="item-image" required>-->
        </div>
        <br>
        <br>
        <button type="submit">상품 등록하기</button>
        <a href="index.jsp">돌아가기</a>
        <%@include file="footer.jsp" %>
    </form>
</body>
</html>