<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="DAO.copy2.dao" %>
<%@ page import="DAO.copy2.dto" %>
<%
String id = request.getParameter("id");
System.out.println(id);
dao Dao = new dao();
Dao.deleteDB(id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
location.href="adminPage.jsp";
</script>
</body>
</html>