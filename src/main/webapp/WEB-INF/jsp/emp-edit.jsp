<%@page import="com.employee.model.EmployeeModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ page isELIgnored ="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>



</head>
<body>
	<!-- <a href="employee-list.jsp">View Employees</a> -->
	<!-- <a href="view-employee">View Employees </a><br>	  -->	
	
	<form method="post" action="update-form">
			 ID :<input type="text" name="id" value="${employee.id}"/><br> <br> 
			Name:- <input type="text" name="name" value="${employee.name}"/> <br> <br>
			Email:- <input type="email" name="email" value="${employee.email}" /> <br><br>
			Password:- <input type="password" name="password" value="${employee.password}"/><br><br>
			BirthDate:- <input type="date" name="date"  value="${employee.date}"/><br><br>
			 Gender: <input type="radio" name="gender" value="male"  ${employee.getGender() == 'male' ? 'checked="checked"' : '' }  />Male
                   <input type="radio" name="gender" value="female"  ${employee.getGender() == 'female' ? 'checked="checked"' : '' } />Female<br><br>
			Select City:- 
					<select name="city">
					<option selected="selected">Ahmedabad</option>
					<option>Surat</option>
					<option>Vadodra</option>
					<option>Mumbai</option>
					<option>Delhi</option>
					<option>Kolkata</option>
					</select><br><br>
			Add Skills:
			
			<!-- skills are not checked -->
			Java:<input type="checkbox" value="java" name="skills" ${employee.getSkills().contains("java") ? 'checked="checked"' : '' }>
			Python<input type="checkbox" value="python" name="skills" ${employee.getSkills().contains("python") ? 'checked="checked"' : '' }>
			C<input type="checkbox" value="C" name="skills" ${employee.getSkills().contains("C") ? 'checked="checked"' : '' }>
			C++<input type="checkbox" value="C++" name="skills" ${employee.getSkills().contains("C++") ? 'checked="checked"' : '' }><br><br>
			<!-- Address:<textarea name="address1"></textarea><br><br> -->
			Address<textarea name="address" id='test'><c:out value="${employee.getAddress()}" /></textarea><br><br>
			Phone Number :<input type="text" name="phone" value="${employee.phone}"><br><br>
			<input type="submit" value="Register"/>
				
		</form>
	
</body>
</html>