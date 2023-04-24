<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ page isELIgnored ="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form method="post"  style="margin-left: 150px">
		<%-- <a href="<%=request.getContextPath()%>/list">Employee List</a> --%>
		<a href="show-form">Add Employee</a>
					<table border="2px">
					
							<tr>
							
								<th>ID</th>
								<th>Name</th>
								<th>Email</th>
								<th>Password</th>
								<th>Birthdate</th>
								<th>Gender</th>
								<th>City</th>
								<th>Skills</th>
								<th>Address</th>
								<th>Phone</th>
								<th>Actions</th>
								
							</tr>
							<c:forEach var="list" items="${employees}">
							<tr>
								<td><c:out value="${list.id}" /></td>
								<td><c:out value="${list.name}" /></td>
								<td><c:out value="${list.email}" /></td>
								<td><c:out value="${list.password}" /></td>
								<td><c:out value="${list.date}" /></td>
								<td><c:out value="${list.gender}" /></td>
								<td><c:out value="${list.city}" /></td>
								<td><c:out value="${list.skills}" /></td>
								<td><c:out value="${list.address}" /></td>
								<td><c:out value="${list.phone}" /></td>
								<td><a href="edit/<c:out value="${list.id}" />">Edit</a>
								<td><a href="delete/<c:out value="${list.id}" />">Delete</a>
								<!--  <td><a href="/delete">Delete</a> -->

							</tr>
							</c:forEach>
							<br>
							

					</table>
																
		</form>
</body>
</html>