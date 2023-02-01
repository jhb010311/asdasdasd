<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
.container {
	display:flex;
	justify-content:space-between;
    width: 300px;
}
#loginsubmit,#signup {
	width:300px;
}
</style>
<script>
function check() {
	if($('#id').val().length == 0) {
		alert('아이디 입력하세요');
		return false;
	}else if($('#password').val().length == 0) {
		alert('비밀번호 입력하세요');
		return false;
	}else {
		return true;
	}
}
</script>
</head>
<body>
	<form action="logincheck.jsp" onsubmit="return check()" id="fteg">
		<div class="container">
			<span>ID :</span>
			<input type="text" name="id" class="input" id="id">
		</div>
		<div class="container">
			<span>PW :</span>
			<input type="password" name="password" class="input" id="password">
		</div>
		<button id="loginsubmit">로그인</button>
	</form>
	<a href="signUpPage.jsp"><button id="signup">작성완료</button></a>
</body>
</html>