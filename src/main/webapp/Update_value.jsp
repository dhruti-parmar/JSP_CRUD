<%@page import="CRUD.UpdateValues"%>
<%@page import="com.jspcrud.UserBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Data</title>
</head>
<body>
<%
    int sl_no = Integer.parseInt(request.getParameter("sl_no"));

    UpdateValues uv = new UpdateValues();
    UserBean ub = uv.getValue_user(sl_no);

    String user_name = ub.getUser_name();
    String mobile = ub.getMobile();
    String email = ub.getEmail();
%>
<h1>Update Values</h1>
<form action="controller/update_controller.jsp" method ="post">
<input type="hidden" name="sl_no" value="<%= sl_no %>">
	 <table>
            <tr>
                <td>Name:</td>
                <td><input type="text" name="user_name" value ="<%= ub.getUser_name() %>" required></td>
            </tr>
            <tr>
                <td>Phone No:</td>
                <td><input type="tel" name="mobile" value ="<%= ub.getMobile() %>" required></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><input type="email" name="email" value= "<%=ub.getEmail() %>" required></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="Update">
                </td>
            </tr>
        </table>
</form>

</body>
</html>