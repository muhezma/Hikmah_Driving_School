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
  <li><a class="active"   onclick="location.href = 'HikmahHomeP'">Home</a></li>
  <li><a class="active" nav  onclick="location.href = 'HikmahSignup'">Sign up</a></li>
  <li><a class="active" nav  onclick="location.href = 'HikmahCoursesPrice'">HikmahCoursesPrice</a></li>
  <li><a class="active" nav  onclick="location.href = 'HikmahAboutUs'">About Us </a></li>
  <li><a class="active" nav  onclick="location.href = 'http://www.mnpermittest.com/'">Schedule Test </a></li>
  
</ul>
</div>


<!-- <!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
  </head>
    <meta charset="utf-8">
     -->
    <link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/HikmahLogin.css">

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/add-customer-style.css">
  
<title>Hikmah Login</title>
     <link rel="stylesheet" href="HikmahLogin.css">
    



  <body>

  <div class="login-form">
  <form action="login">
    <h1>Login</h1>
    <div class="content">
      <div class="input-field">
        <input type="email" name="email" placeholder="Email" autocomplete="nope">
      </div>
      <div class="input-field">
        <input type="password" name="password" placeholder="Password" autocomplete="new-password">
      </div>
    </div>
    <div class="action">
      <button type="submit">Sign in</button>
       <img width= "80" height = "80" src="${pageContext.request.contextPath}/resources/Images/LOGOO.jpeg">

    </div>

    </form>

  </body>


<footer><img width= "10" height = "10" src="${pageContext.request.contextPath}/resources/Images/copyright.png">2022 Mohamed Ali</footer>

</html>