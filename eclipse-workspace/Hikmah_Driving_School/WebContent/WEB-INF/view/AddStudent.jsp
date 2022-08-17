<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="AddStudent.css">
</head>
<body>

<form action="/action_page.php">
  <div class="container">
    <h1>REGISTER STUDENT</h1>
    <p>Please fill in this form to register Student.</p>
    <hr>

    <label for="firstName"><b>FirstName</b></label>
    <input type="text" placeholder="Enter FirstName" name="firstName" id="firstName" required>


    <label for="lastName"><b>LastName</b></label>
    <input type="text" placeholder="Enter LastName" name="LastName" id="LastName" required>


    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" id="email" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" id="psw" required>

   
    <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>

    <button type="submit" class="registerbtn">Register</button>
  </div>
  
  <div class="container signin">
    <p>Already have an account? <a href="HikmahLogin.html">Sign in</a>.</p>
  </div>
</form>

</body>
</html>
