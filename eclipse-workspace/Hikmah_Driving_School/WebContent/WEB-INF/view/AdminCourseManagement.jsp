<%-- 
<!DOCTYPE html>


<html>

    <link rel="stylesheet" href="AdminStudentManagement.css">
<head>

	<title>List Of Courses</title>

		<!-- reference our style sheet -->

			  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">

		 


	<link type="text/css"

		  rel="stylesheet"

		  href="${pageContext.request.contextPath}/resources/css/style.css" />

  

</head>


<body>


	<div id="wrapper">

		<div id="header">

			<h2>Admin Course Management</h2>

		</div>

	</div>

       

	<div id="container">

	

		<div id="content">

		  <!-- put new button: Add Customer -->

		

			<input type="button" value=" Add Course "

				  onclick="window.location.href='AddCourse.html'; return false;"

				  class="add-button"

				  />

				   

		  	   

		

			<!--  add our html table here -->

		

			<table class="table table-hover">
        <thead>
          <tr>
            <th># Course ID</th>
            <th>Course Name</th>
            <th>Course Fee</th>
            <th>Course Instructor</th>
            <th>Action</th>
  
          </tr>
        </thead>
                <tbody>
                    <tr>
                      <td>345</td>
                      <td>Adults Package</td>
                      <td>400</td>
                      <td>Mohamed</td>
                      <td><a href="${updateLink}">Update</a>  <a href="${deleteLink}"

                        onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a></td>
                    </tr>
                    <tr>
                      <td>786</td>
                      <td>Teenagers Package</td>
                      <td>600</td>
                      <td>Mathew</td>
                      <td><a href="${updateLink}">Update</a>  <a href="${deleteLink}"

                        onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a></td>
                    </tr>
                    <tr>
                      <td>678</td>
                      <td>Parents Package</td>
                      <td>200</td>
                      <td>Mathew</td>
                      <td><a href="${updateLink}">Update</a>  <a href="${deleteLink}"

                        onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a></td>
                    </tr>
                    <tr>
                      <td>224</td>
                      <td>Disability Package</td>
                      <td>Free</td>
                      <td>Mohamed</td>
                      <td><a href="${updateLink}">Update</a>  <a href="${deleteLink}"

                        onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a></td>
                    </tr>
                    <tr>
                      <td>345</td>
                      <td>Veteran Package</td>
                      <td>500</td>
                      <td>Hafsa</td>
                      <td><a href="${updateLink}">Update</a>  <a href="${deleteLink}"

                        onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a></td>
                      
                    </tr>
                    <tr>
                      <td>999</td>
                      <td>Remedial Package</td>
                      <td>600</td>
                      <td>Mohamed</td>
                      <td><a href="${updateLink}">Update</a>  <a href="${deleteLink}"

                        onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a></td>
                    </tr>
                  </tbody>
                </table>


							

						</td> 

						

						

					</tr>		
<!--                  </c:forEach>
 -->			</table>

				

		</div>

	

	</div>

	<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>

  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

	

	

  

</body>


</html>





 --%>