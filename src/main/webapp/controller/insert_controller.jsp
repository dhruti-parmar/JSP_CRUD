<%@page import="CRUD.InsertValues"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	String user_name = request.getParameter("user_name");
	String mobile = request.getParameter("mobile");
	String email = request.getParameter("email");
	
	InsertValues iv = new InsertValues();
	
	iv.insertValues(user_name,email,mobile);
%>
<script type="text/javascript">
window.location.href="http://localhost:9999/JSP_CRUD/insert_values.jsp"
</script>
</body>
</html>