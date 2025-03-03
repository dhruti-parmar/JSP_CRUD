<%@page import="org.eclipse.jdt.internal.compiler.ast.WhileStatement"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.jspcrud.UserBean"%>
<%@page import="java.util.List"%>
<%@page import="CRUD.ReadValues"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Form</title>
</head>
<body>

<h1>Simple JSP Form</h1>

<form action="controller/insert_controller.jsp">
	 <table>
            <tr>
                <td>Name:</td>
                <td><input type="text" name="user_name" required></td>
            </tr>
            <tr>
                <td>Phone No:</td>
                <td><input type="tel" name="mobile" required></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><input type="email" name="email" required></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="Insert">
                </td>
            </tr>
        </table>
</form>

<hr>
<%
ReadValues rv = new ReadValues();
List<UserBean> list = rv.getValues();

Iterator<UserBean> it_list = list.iterator();
%>
<table border="1">
<%
while(it_list.hasNext()){
	UserBean ub = new UserBean();
	ub = it_list.next();
%>
	<tr>
		<td><%= ub.getSl_no() %></td>
		<td><%= ub.getUser_name() %></td>
		<td><%= ub.getMobile() %></td>
		<td><%= ub.getEmail() %></td>
		
		<td>
		<a href="Update_value.jsp?sl_no=<%=ub.getSl_no()%>">Update</a>
		</td>
		
		<td>
		<a href="controller/delete_controller.jsp?sl_no=<%=ub.getSl_no()%>">Delete</a>
		</td>
	</tr>
<%
}
%>
</table>
</body>
</html>