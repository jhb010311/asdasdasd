<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String Name = request.getParameter("Name");
String Point = request.getParameter("Point");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
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
<body>
<div style="padding:20px;">
	<div style="font-size:50px; font-weight:600; margin-bottom:20px;">
		회원관리-수정관리자
	</div>
	<div>
		<form action="editAction.jsp">
			<div class="container">
				<span>ID</span>
				<input type="text" name="id" value="<%=id%>">
				<input type="hidden" name="id_before" value="<%=id%>">
			</div>
			<div class="container">
				<span>PW</span>
				<input type="text" name="pw" value="<%=pw%>">
			</div>
			<div class="container">
				<span>Name</span>
				<input type="text" name="Name" value="<%=Name%>">
			</div>
			<div class="container">
				<span>Point</span>
				<input type="text" name="Point" value="<%=Point%>">
			</div>
			<button id="submit">제출</button>
		</form>
	</div>
</div>
</body>
</html>