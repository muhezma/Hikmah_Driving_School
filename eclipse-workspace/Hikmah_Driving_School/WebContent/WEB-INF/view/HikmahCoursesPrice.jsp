<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
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
  <li><a class="active"   onclick="location.href = 'HikmahLogin'">Login</a></li>
  <li><a class="active" nav  onclick="location.href = 'HikmahSignup'">Sign up</a></li>
  <li><a class="active" nav  onclick="location.href = 'HikmahAboutUs'">About Us </a></li>
  <li><a class="active" nav  onclick="location.href = 'http://www.mnpermittest.com/'">Schedule Test </a></li>
  </ul>
</div>
    <title></title>
    <link rel="stylesheet" href="HikmahCoursesPrice.css">
  </head>
  <link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/HikmahCoursesPrice.css">

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/add-customer-style.css">
  
  

    </ul>
  <!-- </div>

<div class="Other Pages">
  <button onclick="myFunction()" class="dropbtn">Other Pages</button>
  <div id="myDropdown" class="dropdown-content">
    <a href="http://www.mnpermittest.com/">Scedule Test</a>
    <a href="HikmahAboutUs.html"> Gallery / Meet Our Team</a>
    
  </div>
</div> -->

<script>
/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function myFunction() {
  document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {
    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}
</script>


  <!-- 

GRADIENT BANNER DESIGN BY SIMON LURWER ON DRIBBBLE:
https://dribbble.com/shots/14101951-Banners

-->
<div class="main-container">
  <div class="heading">
    <h1 class="heading__title" style="color:white;" >Courses And Prices</h1>
    
  </div>
  <div class="cards">

    <div class="card card-1">
      <div class="card__icon"><i class="fas fa-bolt"></i></div>
      <p class="card__exit"><i class="fas fa-times"></i></p>
      <h2 class="card__title"><div >
      
         <h1 style="color:white;" ><strong>TEENAGERS PACKAGE </strong></h1>
         <h2>$ 600</h2>
          <h3 style="color:white;">Topics</h3>
          Course Introduction
          Understanding your vehicle
          Vehicle space balance control
          Managing risk
          Safe driving practices
          Practice permit test
          Course conclusion
          
      </h2>
      <p class="card__apply">
        <a class="card__link" onclick="location.href = 'HikmahSignup'">Apply Now <i class="fas fa-arrow-right"></i></a>
      </p>
    </div>



    <div class="card card-2">
      <div class="card__icon"><i class="fas fa-bolt"></i></div>
      <p class="card__exit"><i class="fas fa-times"></i></p>
     <h2 class="card__title"><div >
         <h1 style="color:white;"><strong>ADULTS PACKAGE</strong></h1>
         <h2>$ 400</h2>
          <h3 style="color:white;">Topics</h3>
          Course Introduction
          Safe driving practices
          Alcohol and drug use 
          manual transmission
          Practice permit test
          Course conclusion
      </h2>

      <p class="card__apply">
        <a class="card__link" onclick="location.href = 'HikmahSignup'">Apply Now <i class="fas fa-arrow-right"></i></a>
      </p>
    </div>





    <div class="card card-3">
      <div class="card__icon"><i class="fas fa-bolt"></i></div>
      <p class="card__exit"><i class="fas fa-times"></i></p>
      <h2 class="card__title"><div >
        <h1 style="color:white;"><strong>PARENTS PACKAGE </strong></h1>
        <h2>$ 200</h2>
         <h3 style="color:white;">Topics</h3>
         Course Introduction
         Understanding your vehicle
         Collision and insurance
         Managing risk
         Safe driving practices
         Practice permit test
         Course conclusion
         
     </h2>
      <p class="card__apply">
        <a class="card__link" onclick="location.href = 'HikmahSignup'">Apply Now <i class="fas fa-arrow-right"></i></a>
      </p>
    </div>
    <div class="card card-4">
      <div class="card__icon"><i class="fas fa-bolt"></i></div>
      <p class="card__exit"><i class="fas fa-times"></i></p>
      <h2 class="card__title"><div >
        <h1 style="color:white;"><strong>DISABILITY PACKAGE </strong></h1>
        <h2>FREE </h2>
         <h3 style="color:white;">Topics</h3>
         Course Introduction
         Understanding your vehicle
         Vehicle space balance control
         Managing risk
         Safe driving practices
         Practice permit test
         Course conclusion
         
     </h2>
      <p class="card__apply">
        <a class="card__link" onclick="location.href = 'HikmahSignup'">Apply Now <i class="fas fa-arrow-right"></i></a>
      </p>
    </div>
    <div class="card card-5">
      <div class="card__icon"><i class="fas fa-bolt"></i></div>
      <p class="card__exit"><i class="fas fa-times"></i></p>
      <h2 class="card__title"><div >
        <h1 style="color:white;"><strong>VETERANS PACKAGE </strong></h1>
        <h2>$ 100</h2>
         <h3 style="color:white;">Topics</h3>
         Course Introduction
         Adverse driving conditions
         Towing and special vehicles
         Safe driving practices
         Vision and perception
         Practice permit test
         Course conclusion
         
     </h2>
      <p class="card__apply">
        <a class="card__link" onclick="location.href = 'HikmahSignup'">Apply Now <i class="fas fa-arrow-right"></i></a>
      </p>
    </div>
    <div class="card card-1">
      <div class="card__icon"><i class="fas fa-bolt"></i></div>
      <p class="card__exit"><i class="fas fa-times"></i></p>
      <h2 class="card__title"><div >
        <h1 style="color:white;"><strong>REMEDIAL PACKAGE </strong></h1>
        <h2>$ 600</h2>
         <h3 style="color:white;">Topics</h3>
         Course Introduction
         Understanding your vehicle
         Economical driving
         Motorcycle/NEV Vehicles
         Practice permit test
         Course conclusion
         
     </h2>
      <p class="card__apply">
        <a class="card__link" onclick="location.href = 'HikmahSignup'">Apply Now <i class="fas fa-arrow-right"></i></a>
      </p>
    </div>
  </div>
</div>

  <!-- <div class="dropdown">
    <button class="dropbtn">Extra Courses</button>
    <div class="dropdown-content">
      <ul>
        <li>Interacting with others</li>
        <li>Railroad/bus safety rules</li>
        <li>Emergency vehicle regulations</li>
        <li>Adverse driving conditions</li>
        <li>Towing and special vehicles</li>
        <li>Economical driving</li>
        <li>Motorcycle/NEV Vehicles</li>
        <li>Alcohol/drug use reviewed</li>
      </div>

     </ul>

  <body>
    <h2 style="text-align:center">Courses And Prices </h2>


    im

<div class="columns">
  <ul class="price">
    <li class="header">TEENAGERS PACKAGE</li>
    <li class="grey">$ 600 </li>
    <li>Course Introduction</li>
    <li>Understanding your vehicle</li>
    <li>Vehicle space balance control</li>
    <li>Managing risk</li>
    <li>Safe driving practices</li>
    <li>Practice permit test</li>
    <li>Course conclusion</li>
    <li class="grey"><a href="#" class="button">Sign Up</a></li>
  </ul>
</div>

<div class="columns">
  <ul class="price">
    <li class="header">ADULTS PACKAGE</li>
    <li class="grey">$ 450 </li>
    <li>Course Introduction</li>
    <li>Understanding your vehicle</li>
    <li>Safe driving practices</li>
    <li>Operating your vehicle</li>
    <li>Manual transmissions</li>
    <li>Traffic laws</li>
    <li>Alcohol/drug use</li>
    <li class="grey"><a href="#" class="button">Sign Up</a></li>
  </ul>
</div>

<div class="columns">
  <ul class="price">
    <li class="header">PARENTS PACKAGE</li>
    <li class="grey">$ 200 </li>
    <li>Course Introduction</li>
    <li>Understanding your vehicle</li>
    <li>Vehicle space balance control</li>
    <li>Alcohol/drug use reviewed</li>
    <li>Collision and insurance</li>
    <li>Practice permit test</li>
    <li>Course conclusion</li>
    <li class="grey"><a href="#" class="button">Sign Up</a></li>
  </ul>
</div>
<div class="columns">
  <ul class="price">
    <li class="header">REMEDIAL INDIVIDUALS</li>
    <li class="grey">$ Free </li>
    <li>Course Introduction</li>
    <li>Understanding your vehicle</li>
    <li>Vehicle space balance control</li>
    <li>Operating your vehicle</li>
    <li>Manual transmissions</li>
    <li>Traffic laws</li>
    <li>Alcohol/drug use</li>
    <li class="grey"><a href="#" class="button">Sign Up</a></li>
  </ul>
</div>






  </body>
</html>






 -->





<!-- <!DOCTYPE html>
<!DOCTYPE html>
<link rel="stylesheet" href="HikmahCoursesPrice.css">






<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>HikmahCoursesPrice</title>
    <link rel="stylesheet" href="HikmahCoursesPrice.css">
  </head>
  <body>
    <!-- <a href="./HikmahHomeP.html">Home</a> -->
    <!-- <a href="./HikmahCoursesPrice">HikmahCoursesPrice</a> -->
<!--    <a class="nav-link active" aria-current="page" href="./HikmahCoursesPrice.html">HikmahCoursesPrice</a>


   <div class="container">
    <h1>TEENAGERS PACKAGE</h1>
    <ul>
      <li>Full Package</li>
      <ol>
        <li>Course Introduction</li>
        <li>Understanding your vehicle</li>
        <li>Vehicle space balance control</li>
        <li>Managing risk</li>
        <li>Safe driving practices</li>
        <li>Operating your vehicle</li>
        <li>Manual transmissions</li>
        <li>Traffic laws</li>
        <li>Alcohol/drug use</li>
        <li>Interacting with others</li>
        <li>Railroad/bus safety rules</li>
        <li>Emergency vehicle regulations</li>
        <li>Adverse driving conditions</li>
        <li>Towing and special vehicles</li>
        <li>Economical driving</li>
        <li>Motorcycle/NEV Vehicles</li>
        <li>Alcohol/drug use reviewed</li>
        <li>Collision and insurance</li>
        <li>Practice permit test</li>
        <li>Course conclusion</li>
      </ol>

      <li>Half Package</li>
      <ol>
        <li>Course Introduction</li>
        <li>Understanding your vehicle</li>
        <li>Vehicle space balance control</li>
        <li>Managing risk</li>
        <li>Safe driving practices</li>
        <li>Operating your vehicle</li>
        <li>Manual transmissions</li>
        <li>Traffic laws</li>
        <li>Alcohol/drug use</li>
      </ol>
    </ul>
   <b>
    </div>
    <div>
    <h1>PARENTS PACKAGE</h1></b>
    <ul>
      <li>Full Package</li>
      <ol>
        <li>Course Introduction</li>
        <li>Understanding your vehicle</li>
        <li>Vehicle space balance control</li>
        <li>Managing risk</li>
        <li>Safe driving practices</li>
        <li>Operating your vehicle</li>
        <li>Manual transmissions</li>
        <li>Traffic laws</li>
        <li>Alcohol/drug use</li>
        <li>Interacting with others</li>
        <li>Railroad/bus safety rules</li>
        <li>Emergency vehicle regulations</li>
        <li>Adverse driving conditions</li>
        <li>Towing and special vehicles</li>
        <li>Economical driving</li>
        <li>Motorcycle/NEV Vehicles</li>
        <li>Alcohol/drug use reviewed</li>
        <li>Collision and insurance</li>
        <li>Practice permit test</li>
        <li>Course conclusion</li>
      </ol>

      <li>Half Package</li>
      <ol>
        <li>Course Introduction</li>
        <li>Understanding your vehicle</li>
        <li>Vehicle space balance control</li>
        <li>Managing risk</li>
        <li>Safe driving practices</li>
        <li>Operating your vehicle</li>
        <li>Manual transmissions</li>
        <li>Traffic laws</li>
        <li>Alcohol/drug use</li>
      </ol>
    </ul>
    </div>
    <div>
    <h1>ADULTS PACKAGE</h1>
    <ul>
      <li>Full Package</li>
      <ol>
        <li>Course Introduction</li>
        <li>Understanding your vehicle</li>
        <li>Vehicle space balance control</li>
        <li>Managing risk</li>
        <li>Safe driving practices</li>
        <li>Operating your vehicle</li>
        <li>Manual transmissions</li>
        <li>Traffic laws</li>
        <li>Alcohol/drug use</li>
        <li>Interacting with others</li>
        <li>Railroad/bus safety rules</li>
        <li>Emergency vehicle regulations</li>
        <li>Adverse driving conditions</li>
        <li>Towing and special vehicles</li>
        <li>Economical driving</li>
        <li>Motorcycle/NEV Vehicles</li>
        <li>Alcohol/drug use reviewed</li>
        <li>Collision and insurance</li>
        <li>Practice permit test</li>
        <li>Course conclusion</li>
      </ol>

      <li>Half Package</li>
      <ol>
        <li>Course Introduction</li>
        <li>Understanding your vehicle</li>
        <li>Vehicle space balance control</li>
        <li>Managing risk</li>
        <li>Safe driving practices</li>
        <li>Operating your vehicle</li>
        <li>Manual transmissions</li>
        <li>Traffic laws</li>
        <li>Alcohol/drug use</li>

      </ol>

    </ul>

    </div>

  </body>
</html> -->
