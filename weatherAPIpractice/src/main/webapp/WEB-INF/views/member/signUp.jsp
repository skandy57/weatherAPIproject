<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta charset="UTF-8">
<title>회원가입</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
	crossorigin="anonymous"></script>

<script>
	$(document).ready(function() {
		$('#checkIdBtn').click(function() {
			var id = $('#id').val(); // get the valu e of the ID input field

			// send an ajax request to the server
			$.ajax({
				type : 'POST',
				url : '/member/reduCheck',
				dataType : "json",
				data : $("#signUp").serializeArray(),
				success : function(data) {
					if (data == 0) {
						alert('사용 가능한 아이디입니다.');
					} else {
						alert('이미 사용 중인 아이디입니다.');
					}
				}
			});
		});

	});
</script>
</head>
<body>
	<div class="container mt-5">
		<h1>회원가입</h1>
		<form:form action="/member/signUp" method="post" id="signUp"
			modelAttribute="member">
			<div class="form-group">
				<label for="id">아이디</label>
				<form:input path="id" type="text" class="form-control" id="id"
					name="id" placeholder="아이디" />
				<form:errors path="id" />
				<button type="button" class="btn btn-secondary" id="checkIdBtn">중복
					확인</button>
			</div>
			<div class="form-group">
				<label for="password">비밀번호</label>
				<form:password path="pw" class="form-control" id="pw" name="pw"
					placeholder="비밀번호" />
				<form:errors path="pw" />
			</div>
			<div class="form-group">
				<label for="nickname">닉네임</label>
				<form:input path="nickname" type="text" class="form-control"
					id="nickname" name="nickname" placeholder="닉네임" />
				<form:errors path="nickname" />
			</div>
			<button type="submit" class="btn btn-primary">회원가입</button>
		</form:form>
	</div>
</body>
</body>
</html>