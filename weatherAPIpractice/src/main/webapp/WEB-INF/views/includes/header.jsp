<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<link rel="stylesheet" href="${path}/resources/css/style.css">
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
                        <i class="fab fa-amazon" href="/"></i>
                        <a href="/">따릉쓰</a>
                </div>
                <ul class="navbar__menu">
                        <li><a href="#">Menu</a></li>
                        <li><a href="#">Menu</a></li>
                        <li><a href="#">Menu</a></li>
                        <li><a href="#">Menu</a></li>
                        <li><a href="#">Menu</a></li>
                </ul>
                <ul class="navbar__sns">
                        <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                </ul>
                <a href="#" class="navbar__toggleBtn"> <i class="fas fa-bars"></i> </a>
        </nav>
</body>
</html>