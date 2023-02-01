<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="DAO.copy2.dao" %>
<%@ page import="DAO.copy2.dto" %>
<%@ page import="java.util.*" %>
<%

String id = request.getParameter("id");
dao Dao = new dao();
ArrayList<dto> DTO = Dao.DBselectAdmin(id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
td, th{
	border:1px solid black;
}
table {
border-collapse : collapse;
}
</style>
<script>
$(function(){
	$('#edit').click(function(){
		let id = $(this).parent().siblings('#id').text();
		let pw = $(this).parent().siblings('#pw').text();
		let Name = $(this).parent().siblings('#Name').text();
		let Point = $(this).parent().siblings('#Point').text();
		location.href="editPage.jsp?id="+id+"&pw="+pw+"&Name="+Name+"&Point="+Point;
	})
	$('#delete').click(function(){
		let id = $(this).parent().siblings('#id').text();
		console.log(id);
		alert(id);
		
		location.href="deletePage.jsp?id="+id;
	})
})
</script>
</head>
<body>
<table>
	<thead>
		<tr>
			<th>ID</th>
			<th>PW</th>
			<th>Name</th>
			<th>Point</th>
			<th>수정</th>
			<th>삭제</th>
		</tr>
	</thead>
	<tbody>
		<%for(int i=0; i<DTO.size(); i++) {%>
		<tr>
			<td id="id"><%=DTO.get(i).getId()%></td>
			<td id="pw"><%=DTO.get(i).getPw()%></td>
			<td id="Name"><%=DTO.get(i).getName()%></td>
			<td id="Point"><%=DTO.get(i).getPoint()%></td>
			<td><button id="edit" type="button">수정</button></td>
			<td><button id="delete" type="button">삭제</button></td>
		</tr>
		<%}%>
	</tbody>
</table>
</body>
</html>