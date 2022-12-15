<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
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
	<%@include file="/WEB-INF/views/includes/header.jsp"%>

	<div class="container">
		<h1>지금 날씨는</h1>
		<span class="weatherInfo"></span> <img class="weatherIcon">
	</div>
	<%@include file="/WEB-INF/views/includes/footer.jsp"%>
</body>
<script src="${path}/resources/js/app.js"></script>
</html>
