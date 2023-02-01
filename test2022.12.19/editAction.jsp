<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="DAO.copy2.dao" %>
<%@ page import="DAO.copy2.dto" %>
<%@ page import="java.util.*" %>
<%

String id = request.getParameter("id");
String pw = request.getParameter("pw");
String Name = request.getParameter("Name");
String Point = request.getParameter("Point");
String idBefore = request.getParameter("id_before");
dao Dao = new dao();
Dao.updateDB(id,pw,Name,Point,idBefore);
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