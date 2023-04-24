<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<!-- <a href="employee-list.jsp">View Employees</a> -->
	<a href="view-employee">View Employees </a><br>
	
	
	
	<form method="post"  action="insert-form">
	
		 	
			Name:- <input type="text" name="name"/> <br> <br>
			Email:- <input type="email" name="email"  /> <br><br>
			Password:- <input type="password" name="password" /><br><br>
			BirthDate:- <input type="date" name="date"/><br><br>
			 Gender: <input type="radio" name="gender" value="male" />Male
                   <input type="radio" name="gender" value="female"  />Female<br><br>
			Select City:- 
					<select name="city">
					<option selected="selected">Ahmedabad</option>
					<option>Surat</option>
					<option>Vadodra</option>
					<option>Mumbai</option>
					<option>Delhi</option>
					<option>Kolkata</option>
					<option>Hydarabad</option>
					</select><br><br>
			Add Skills:

			Java:<input type="checkbox" value="java" name="skills">
			Python<input type="checkbox" value="python" name="skills">
			C<input type="checkbox" value="C" name="skills">
			C++<input type="checkbox" value="C++" name="skills"><br><br>
			<!-- Address:<textarea name="address1"></textarea><br><br> -->
			Address<textarea name="address" id='test'><c:out value="" /></textarea><br><br>
			Phone Number :<input type="text" name="phone" value=""><br><br>
			<input type="submit" value="Register"/>
				
		</form>
	
</body>
</html>