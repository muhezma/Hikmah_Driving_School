<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<head>
	<title>Save Student</title>

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css">

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/add-student-style.css">
</head>

<body>
	
	<div id="wrapper">
		<div id="header">
			<h2>SRM - Student Relationship Manager</h2>
		</div>
	</div>

	<div id="container">
		<h3>Save Student</h3>
	
		<form:form action="saveStudent" modelAttribute="student" method="POST">
		
		<!-- need to associate this id with the form so we 
		don't add a new id to the user when updating -->
		
		 <form:hidden path="email" /> 
		
		     <table class="table table-dark table-striped">

				<tbody>
					<tr>
						<td><label>First name:</label></td>
						<td><form:input path="firstName" /></td>
					</tr>
				
					<tr>
						<td><label>Last name:</label></td>
						<td><form:input path="lastName" /></td>
					</tr>

					<tr>
						<td><label>Email:</label></td>
						<td><form:input path="email" /></td>
					</tr>
					<tr>
						<td><label>Password:</label></td>
						<td><form:input path="password" /></td>
					</tr>

					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Save" class="save" /></td>
					</tr>

				
				</tbody>
			</table>
		
		
		</form:form>
	
		<div style="clear; both;"></div>
		
		<p>
			<a href="${pageContext.request.contextPath}/student/list">Back to List</a>
		</p>
	
	</div>

</body>

</html>










