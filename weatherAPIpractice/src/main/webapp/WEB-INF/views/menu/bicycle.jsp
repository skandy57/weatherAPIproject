<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>

<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="https://kit.fontawesome.com/0af441d8aa.js"
	crossorigin="anonymous"></script>

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

<meta name="viewport" content="width=device-width, initial-scale=1.0"
	charset="UTF-8">
<link rel="stylesheet" href="${path}/resources/css/style1.css">
<title>지금 날씨는?</title>

</head>
<body>
	<%@include file="/WEB-INF/views/includes/header.jsp"%>

	<div class="container">
		<div class="score"></div>
		<div class="text"></div>
		<span class="weatherInfo"></span> <img class="weatherIcon">
	</div>
	<button id="scroll-top-btn" title="Scroll to top">
    <i class="fas fa-arrow-up"></i>
</button>
	
	<%@include file="/WEB-INF/views/includes/footer.jsp"%>
</body>

<script src="${path}/resources/js/bicycle.js">

const toggleBtn = document.querySelector('.navbar__toggleBtn');
const menu = document.querySelector('.navbar__menu');
const sns = document.querySelector('.navbar__sns');

toggleBtn.addEventListener('click', () => {
        menu.classList.toggle('active');
        sns.classList.toggle('active');
});
const btn = document.getElementById('scroll-top-btn');

//handle the click event for the button
btn.addEventListener('click', event => {
 // scroll to the top of the page
 window.scrollTo({
     top: 0,
     behavior: 'smooth'
 });
});

//handle the scroll event for the window
window.addEventListener('scroll', event => {
 // show or hide the button based on the scroll position
 if (window.pageYOffset > 300) {
     btn.style.display = 'block';
 } else {
     btn.style.display = 'none';
 }
});
</script>
</html>