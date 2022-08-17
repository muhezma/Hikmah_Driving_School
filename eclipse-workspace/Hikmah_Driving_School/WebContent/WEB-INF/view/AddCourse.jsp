<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="AddCourse.css">
</head>
<body>

<form action="/action_page.php">
  <div class="container">
    <h1>ADD COURSE</h1>
    <p>Please fill in this form to add course</p>
    <hr>

    <label for="firstName"><b>#Course ID</b></label>
    <input type="text" placeholder="Enter FirstName" name="Course ID" id="Course id" required>


    <label for="courseName"><b>Course Name</b></label>
    <input type="text" placeholder="Enter courseName" name="courseName" id="courseName" required>


    <label for="course fee"><b>Course Fee</b></label>
    <input type="text" placeholder="Enter Course fee" name="course fee" id="course fee" required>

    <label for="Course instructor"><b>Course Instructor</b></label>
    <input type="text" placeholder="Enter Course fee" name="course fee" id="course fee" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" id="psw" required>

   
    <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>

    <button type="submit" class="registerbtn">Add course</button>
  </div>
  
  <div class="container signin">
    <p>Already have an account? <a href="HikmahLogin.html">Sign in</a>.</p>
  </div>
</form>

</body>
</html>
