<%@page import="CRUD.DeleteValues"%>
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
	int sl_no = Integer.parseInt(request.getParameter("sl_no"));
	DeleteValues dv = new DeleteValues();
	dv.delete_value(sl_no);
%>
<script type="text/javascript">
window.location.href="http://localhost:9999/JSP_CRUD/insert_values.jsp"
</script>
</body>
</html>