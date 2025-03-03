<%@page import="CRUD.UpdateValues"%>
<%@page import="com.jspcrud.UserBean"%>
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
	int sl_no = Integer.parseInt(request.getParameter("sl_no"));
	String user_name = request.getParameter("user_name");
	String mobile = request.getParameter("mobile");
	String email = request.getParameter("email");
	
	UserBean ub = new UserBean();
	ub.setSl_no(sl_no);
	ub.setUser_name(user_name);
	ub.setMobile(mobile);
	ub.setEmail(email);
	
	UpdateValues uv = new UpdateValues();
	
	uv.update_user(ub);
%>
<script type="text/javascript">
window.location.href="http://localhost:9999/JSP_CRUD/insert_values.jsp"
</script>
</body>
</html>