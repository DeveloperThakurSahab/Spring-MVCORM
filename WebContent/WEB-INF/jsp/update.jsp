<%@page import="com.bean.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update JSP</title>
</head>
<body>
	<%
		Student s=(Student) request.getAttribute("s");
	%>
	<form name="update" method="post" action="update">
		<table>
			<tr>
				<td><input type="hidden" name="id" value="<%=s.getId() %>"></td>
			</tr>
			<tr>
				<td>First Name</td>
				<td><input type="text" name="fname" value="<%=s.getFname() %>"></td>
			</tr>
			<tr>
				<td>Last Name</td>
				<td><input type="text" name="lname" value="<%=s.getLname() %>"></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="text" name="email" value="<%=s.getEmail() %>"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" name="action" value="UPDATE">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>