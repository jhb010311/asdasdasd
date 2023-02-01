<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="DAO.copy2.dao" %>
<%@ page import="DAO.copy2.dto" %>
<%

System.out.println("hello");
String id = request.getParameter("id");
System.out.println(id);
dao Dao = new dao();
dto DTO = Dao.DBselect(id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<style>
.container {
border:1px solid gray;
	width:1050px;
    height: 700px;
    padding: 30px 10px;
}
.main {

	margin-bottom: 20px;
}
.header {
	display:flex;
	justify-content:space-between;
	margin-bottom: 20px;
}
.point {
	text-align: center;
}
#it_imgbox {
	border:1px solid gray;
	float:right;
}
#title {
	font-size:35px;
	font-weight:600;
}
</style>
<script>
$(function(){
	$('#logout').click(function(){
		alert('로그아웃 되었습니다.');
		location.href="loginPage.jsp";
	})
	$('.buy').on('click',function(){
		let idx = $('.buy').index(this);
		if(idx == 0){
			if(<%=DTO.getPoint()%> < 100000){
				alert('포인트가 부족합니다. 광고를 클릭하세요.');
			}else{
				alert('컨텐츠(intro)구입하였습니다.');
			}
		}else if(idx == 1){
			if(<%=DTO.getPoint()%> < 100000){
				alert('포인트가 부족합니다. 광고를 클릭하세요.');
			}else{
				alert('컨텐츠(java)구입하였습니다.');
			}
		}else{
			if(<%=DTO.getPoint()%> < 100000){
				alert('포인트가 부족합니다. 광고를 클릭하세요.');
			}else{
				alert('컨텐츠(c++)구입하였습니다.');
			}
		}
	})
})
</script>
<body>
<div class="container">
	<div class="main">
		<div class="header">
			<div id="title">메인페이지</div>
			<div style="display:flex;">
				<div id="info" style="text-align:left; font-weight:600; margin-right:10px;">
					<span><%=DTO.getName()%>님 안녕하세요.</span><br/>
					<span>포인트 <%=DTO.getPoint()%>점</span>
				</div>
				<input id="logout" type="button" value="로그아웃" style="height: 24px;">
			</div>
		</div>
		<div id="second_title">구입할 컨텐츠를 선택하세요</div>
	</div>
	<div class="main" style="display:flex;">
		<div class="point">
			<img class="buy" src="img/2.png"><br>
			<span>100000 포인트</span>
		</div>
		<div class="point">
			<img class="buy" src="img/3.png"><br>
			<span>500000 포인트</span>
		</div>
		<div class="point">
			<img class="buy" src="img/1.png"><br>
			<span>300000 포인트</span>
		</div>
		
	</div>
	<div class="main">
		<div id="it_imgbox">
			<span>광고</span><br/>
			<img src="img/korea_it.png">
		</div>
	</div>
</div>
</body>
</html>