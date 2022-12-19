<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>

<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="https://kit.fontawesome.com/0af441d8aa.js" crossorigin="anonymous"></script>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
	integrity="폰트어썸 본인 CDN" crossorigin="anonymous">
<link
	href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@200&display=swap"
	rel="stylesheet">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1.0" charset="UTF-8">
<link rel="stylesheet" href="${path}/resources/css/style1.css">
<title>지금 날씨는?</title>
<script>

const toggleBtn = document.querySelector('.navbar__toggleBtn');
const menu = document.querySelector('.navbar__menu');
const sns = document.querySelector('.navbar__sns');

toggleBtn.addEventListener('click', () => {
        menu.classList.toggle('active');
        sns.classList.toggle('active');
});
</script>
</head>
<body>
	<!-- nav 상단 고정-->
	 <nav class="navbar">
                <div class="navbar__logo">
                       <svg width="64" height="64" viewBox="0 0 64 64" fill="none" xmlns="http://www.w3.org/2000/svg">
  <path d="M22 10C22 5.58172 18.4183 2 14 2C9.58172 2 6 5.58172 6 10C6 14.4183 9.58172 18 14 18C18.4183 18 22 14.4183 22 10Z" fill="white"/>
  <path d="M53 10C53 5.58172 49.4183 2 45 2C40.5817 2 37 5.58172 37 10C37 14.4183 40.5817 18 45 18C49.4183 18 53 14.4183 53 10Z" fill="white"/>
  <rect x="14" y="34" width="36" height="8" rx="2" fill="white"/>
  <rect x="22" y="52" width="20" height="4" rx="2" fill="white"/>
  <rect x="24" y="58" width="16" height="4" rx="2" fill="white"/>
  <rect x="14" y="42" width="14" height="8" rx="2" fill="white"/>
  <rect x="40" y="42" width="14" height="8" rx="2" fill="white"/>
  <rect x="14" y="26" width="36" height="8" rx="2" fill="white"/>
</svg>
                        <a href="/">따릉쓰</a>
                </div>
                <ul class="navbar__menu">
                        <li><a href="/bicycle">자전거</a></li>
                        <li><a href="#">Menu</a></li>
                        <li><a href="#">Menu</a></li>
                        <li><a href="#">Menu</a></li>
                        <c:if test="${mem==null }">
                        <li><a href="/login/login">로그인</a></li>
                        </c:if>
                        <c:if test="${mem!=null }">
                        <li><form method="post"><input type="hidden" id="session_member_num" value="${mem.member_num }"></form></li>
                        </c:if>
                </ul>
                <ul class="navbar__sns">
                        <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                </ul>
                <a href="#" class="navbar__toggleBtn"> <i class="fas fa-bars"></i> </a>
        </nav>
</body>
</html>