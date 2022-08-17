
<!-- Button to open the modal -->
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
</head>


<meta charset="utf-8">

<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/HikmahHomeP.css">

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/add-customer-style.css">
  
    

<div class="nav">

 <ul>
  <li><img width= "60" height = "60" src="${pageContext.request.contextPath}/resources/Images/LOGOO.jpeg"></li>
    <li><a class="active" nav  onclick="location.href = 'HikmahHomeP'">Home</a></li>
  <li><a class="active"   onclick="location.href = 'HikmahLogin'">log in</a></li>
  <li><a class="active" nav  onclick="location.href = 'HikmahCoursesPrice'">HikmahCoursesPrice</a></li>
  <li><a class="active" nav  onclick="location.href = 'HikmahAboutUs'">About Us </a></li>
  <li><a class="active" nav  onclick="location.href = 'http://www.mnpermittest.com/'">Schedule Test </a></li>
  
</ul>
</div>

    <meta charset="utf-8">
    <title></title>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <link rel="stylesheet" href="HikmahSignup.css">
    
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Rubik:400,700'><link rel="stylesheet" href="./style.css">
   <link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/HikmahSignup.css">

	 <link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/add-customer-style.css">
  
  </head>
  <body>
  
  

    <!-- <button onclick="document.getElementById('id01').style.display='block'">Sign Up for Hikmah Driving School Courses</button> -->
    

		
		<!-- need to associate this id with the form so we 
		don't add a new id to the user when updating -->

        <div class="login-form">
      
    
        <form:form name="signup-form" action="signupStudent" modelAttribute="student" onsubmit="return validatePassword()" method="POST">
        <h1>Register</h1>
        <div class="content">
          <div class="input-field">
            <form:input path="firstName" type="firstName" placeholder="FirstName" />
            
          </div>
          <div class="input-field">
             <form:input path="lastName" type="lastName" placeholder="LastName" autocomplete="nope"/>
          </div>
          <div class="input-field">
             <form:input path="email" type="email" placeholder="Email" autocomplete="nope"/>
          </div>
          <div class="input-field">
             <form:input path="password" type="password" name="password" placeholder="Password" autocomplete="new-password"/>
          </div>
         
          <div>
            <p id="e" >Atleast one capital letter</p>
            <p id="e" >Atleast one smaller letter</p>
            <p id="f" >Atleast one Number</p>
            <p id="g" >Atleast 8 characters</p>
          </div>

        </div>
        <div class="action" >
          <!-- <input type="submit" value="Sign Up"> -->
          <button type="submit" value="Sign Up" style="color:red;">Register</button>
             
            
             
             <c:forEach var="tempCustomer" items="${students}">
				
		
				
				</c:forEach>
			
				</div>
          </form:form>
       
        <script>
          function validatePassword(){
        	
            var pwd1 = document.forms["signup-form"]["password"].value;
            //var pwd2 = document.forms["signup-form"]["password2"].value;

            if(pwd1.length < 8){
              alert("Password must have atleast 8 characters");
              return false;
            }

         /*    if(pwd1 !== pwd2){
              alert("Passwords do not match");
              return false;
            }
 */
            if(validatePasswordChars(pwd1)){
              //alert("VALID Password !!!");
              return true;
            }
            else{
              //alert("INVALID Password !!!");
              return false;
            }
          }

          function isAlphaNumeric(str) {
            alert('...' + str);
            for (var i = 0; i < str.length; i++) {
              var asciiCode = str.charCodeAt(i);
              // alert(asciiCode);
              if (!(asciiCode > 47 && asciiCode < 58) && // Numeric (0-9)
                  !(asciiCode > 64 && asciiCode < 91) && // Alphabetic Upper  (A-Z)
                  !(asciiCode > 96 && asciiCode < 123)) { // Alphabetic Lower (a-z)
                return false;
              }
            }
            return true;
          }

          function validatePasswordChars(str) {
            var upperFound = false;
            var lowerFound = false;
            var numberFound = false;
            for (var i = 0; i < str.length; i++) {
              var asciiCode = str.charCodeAt(i);
              if (asciiCode > 64 && asciiCode < 91) {
              // Alphabetic Upper  (A-Z)
                upperFound =  true;
              }
              if (asciiCode > 96 && asciiCode < 123) {
              // Alphabetic Lower  (a-z)
                lowerFound =  true;
              }
              if (asciiCode > 47 && asciiCode < 58) {
              // Numeric (0-9)
                numberFound =  true;
              }
            }
            if(!upperFound){
              alert('Password must have atleast one capital letter.');
              return false;
            }
            if(!lowerFound){
              alert('Password must have atleast one smaller letter.');
              return false;
            }
            if(!numberFound){
              alert('Password must have atleast one Number.');
              return false;
            }
            return true;
          }
          
          </script>


  </body>
</html>
<footer><img width= "10" height = "10" src="${pageContext.request.contextPath}/resources/Images/copyright.png">2022 Mohamed Ali</footer>


