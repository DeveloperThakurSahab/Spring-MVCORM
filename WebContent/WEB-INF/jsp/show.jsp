<%@page import="com.bean.Student"%>
<%@page import="java.util.List"%>
<%@page import="com.bo.StudentBo"%>
<%@page import="org.springframework.context.support.ClassPathXmlApplicationContext"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Table</title>
</head>
<body>
	<%
		ApplicationContext a=new ClassPathXmlApplicationContext("Beans.xml");
		StudentBo studentBo=(StudentBo) a.getBean("studentBo");
		List<Student> list=studentBo.getAllStudent();
	%>
	<table border="2" cellpadding="10px" cellspacing="10px" width="100%">
		<tr>
			<th>ID</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Email</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<%
			for(Student s:list)
			{
				%>
				<tr>
					<td><%=s.getId() %></td>
					<td><%=s.getFname() %></td>
					<td><%=s.getLname() %></td>
					<td><%=s.getEmail() %></td>
					<td>
						<form name="edit" method="post" action="edit">
							<input type="hidden" name="id" value="<%=s.getId() %>">
							<input type="submit" name="action" value="EDIT">
						</form>
					</td>
					<td>
						<form name="delete" method="post" action="delete">
							<input type="hidden" name="id" value="<%=s.getId() %>">
							<input type="submit" name="action" value="DELETE">
						</form>
					</td>
				</tr>
				<%
			}
		%>
	</table>
	<a href="index">Add New Student</a>
</body>
</html>