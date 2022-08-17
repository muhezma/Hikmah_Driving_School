
<!DOCTYPE html>


<html>

    <link rel="stylesheet" href="AdminStudentManagement.css">
<head>

	<title>List  Students</title>

		<!-- reference our style sheet -->

			  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">

		 


	<link type="text/css"

		  rel="stylesheet"

		  href="${pageContext.request.contextPath}/resources/css/style.css" />

  

</head>


<body>
      <button type="button" nav  onclick="location.href = 'AdminStudentManagement'"> Admin </button>



	<div id="wrapper">

		<div id="header">

			<h2>Admin Student Management</h2>

		</div>

	</div>

       

	<div id="container">

	

		<div id="content">

		  <!-- put new button: Add Customer -->

		

			<input type="button" value="Register a Student "

				  onclick="window.location.href='AddStudent.html'; return false;"

				  class="add-button"

				  />

				   

		  	   

		

			<!--  add our html table here -->

		

		<table>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Action</th>
				</tr>
				
				<!-- loop over and print our customers -->
				<c:forEach var="tempCustomer" items="${students}">
				
					<!-- construct an "update" link with customer id -->
					<c:url var="updateLink" value="/customer/showFormForUpdate">
						<c:param name="customerId" value="${tempCustomer.id}" />
					</c:url>	
					
					<!-- construct an "delete" link with customer id -->
					<c:url var="deleteLink" value="/customer/delete">
						<c:param name="customerId" value="${tempCustomer.id}" />
					</c:url>				
					
					<tr>
						<td> ${tempCustomer.firstName} </td>
						<td> ${tempCustomer.lastName} </td>
						<td> ${tempCustomer.email} </td>
						
						<td>
							<!-- display the update link -->
							<a href="${updateLink}">Update</a>
							
							<!-- display the display link -->
							<a href="${deleteLink}"
							   onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a>
							
						</td>
						
					</tr>
				
				</c:forEach>
						
			</table>
				

		</div>

	

	</div>

	<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>

  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

	

	

  

</body>


</html>





