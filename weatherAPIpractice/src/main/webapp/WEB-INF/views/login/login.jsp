<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/login/login" method="post">
  <label for="username">아이디:</label><br>
  <input type="text" id="id" name="id"><br>
  <label for="password">비밀번호:</label><br>
  <input type="password" id="pw" name="pw"><br><br>
  <input type="submit" value="login" onmouseover="this.style.boxShadow='0 0 10px #ffffff';" onmouseout="this.style.boxShadow='none';">
</form> 
</body>
</html>