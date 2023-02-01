<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="DAO.copy2.dao" %>
<%@ page import="DAO.copy2.dto" %>
<%
String id = request.getParameter("id");
String password = request.getParameter("password");
System.out.println(id);
dao Dao = new dao();
dto DTO = Dao.DBselect(id);
System.out.println(DTO.getPw());
%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
$(function(){
	if(<%="'"+password+"'"%> == <%="'"+DTO.getPw()+"'"%>){
		let adminId = <%="'"+id+"'"%>;
		if(adminId == 'admin'){
			alert('관리자모드');
			location.href="adminPage.jsp";
		}else{
			alert('로그인 되었습니다.');
			location.href="mainPage.jsp?id=<%=id%>";
		}
	}else{
		alert('로그인정보 불일치.');
		location.href="loginPage.jsp";
	}
})
</script>
</body>
</html>