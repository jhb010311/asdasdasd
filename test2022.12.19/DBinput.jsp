<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="DAO.copy2.dao" %>
<%
	String ID = request.getParameter("id");
	String PW = request.getParameter("password");
	String NAME = request.getParameter("name");
	System.out.println(ID);
	System.out.println(PW);
	System.out.println(NAME);
	dao Dao = new dao();
	Dao.DBinput(ID,PW,NAME);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>location.href="loginPage.jsp"</script>
</body>
</html>