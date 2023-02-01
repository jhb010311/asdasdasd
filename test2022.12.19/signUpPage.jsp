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
    width: 240px;
}



#submit {
	width:240px;
}
</style>
<script>
	function check() {
		if($('#id').val().length == 0){
			alert('아이디 입력하세요.');
			return false;
		}
		else if($('#password').val().length == 0){
			alert('비밀번호 입력하세요.');
			return false;
		}
		else if($('#name').val().length == 0){
			alert('네임 입력하세요.');
			return false;
		}else {
			alert('가입되었습니다. 로그인해주세요');
			return true;
			
		}
		
	}
</script>
</head>
<body>
	<form action="DBinput.jsp" onsubmit="return check()" id="fteg">
		<div class="container">
			<span>ID :</span>
			<input type="text" name="id" class="input" id="id">
		</div>
		<div class="container">
			<span>PW :</span>
			<input type="password" name="password" class="input" id="password">
		</div>
		<div class="container">
			<span>NAME :</span>
			<input type="text" name="name" class="input" id="name">
		</div>
		<button id="submit">작성완료</button>
	</form>
</body>
</html>