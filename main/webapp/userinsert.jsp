<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            body {
              background-image: url('Love This texture.jpeg');
              background-repeat: no-repeat;
              background-attachment: fixed;  
              background-size: cover;
            }
            input[type=submit] {
  background-color: red;
  border: none;
  color: white;
  padding: 16px 32px;
  text-decoration: none;
} 
    
            </style>
        <meta charset="UTF-8">
        <title>userinsert</title>
<link rel="stylesheet" type="text/css" href="wedding.css">
</head>
<body>
    <nav>
        <div class="navbar">
          <ul class="menu">
           <li class="hover"><a href="home.jsp">Home</a></li>
        <li class="hover"><a href="http://localhost:8090/VehiclePackages/Packages.jsp">Packages</a>
        <li class="hover"><a href="contact.jsp">Contact</a></li>
         <li class="hover"><a href="FAQ.jsp">FAQ</a></li>
         <li class="hover"><a href="Feedback.jsp">Feedback</a></li>
          </ul>
        </div>
      </nav>
      <h1>PRODUCT DETAILS</h1>
     <div class="pinfo"> <p><b>PICKUP/RETURN LOCATION: <span id="yourlocation"></span><br>
        PICKUP DATE/TIME: <span id="pickdatetime"></span><br>
        RETURN DATE/TIME: <span id="returndatetime"></span><br>
        NUMBER OF DAYS: <span id="days"></span><br>
        MILEAGE: <span id="mile"></span><br>
        DRIVER OPTION: <span id="opt"></span></b></p></div><br><br><br><br>
      

<script>
const yourlocation = new URLSearchParams(window.location.search).get('yourlocation');
document.getElementById('yourlocation').innerHTML = yourlocation;

const pickdatetime = new URLSearchParams(window.location.search).get('pickdatetime');
document.getElementById('pickdatetime').innerHTML = pickdatetime;

const returndatetime = new URLSearchParams(window.location.search).get('returndatetime');
document.getElementById('returndatetime').innerHTML = returndatetime;

const days = new URLSearchParams(window.location.search).get('days');
document.getElementById('days').innerHTML = days;

const mile = new URLSearchParams(window.location.search).get('mile');
document.getElementById('mile').innerHTML = mile;

const opt = new URLSearchParams(window.location.search).get('opt');
document.getElementById('opt').innerHTML = opt;
</script> 
<form action="uin" method="post">
    <fieldset>
      <label for="fname">FIRST NAME</label>
      <input type="text" id="fname" name="firstname" placeholder="First Name" maxlength = "25" required><br><br>

      <label for="pickdate">LAST NAME</label>
      <input type="text" id="lname" name="lastname" placeholder="Last Name" maxlength = "25" required><br><br>

      <label for="email">E-MAIL ADDRESS</label>
      <input type="email" id="email" name="email" ><br><br>

      <label for="age">AGE</label>
      <input type="number" id="age" name="age" placeholder="Enter your age" required><br><br>

      <label for="no">MOBILE NUMBER</label>
      <input type="text" id="no" name="mobile" placeholder="Enter your mobile number" maxlength = "10" required><br><br>

      <label for="nnum">NIC NUMBER</label>
      <input type="text" id="nnum" name="NIC" placeholder="Enter your NIC number" maxlength = "12" required><br><br>
      <br><br><br><br>
      <input type="submit" value="CHECKOUT" />
      </fieldset>
      </form><br><br><br><br><br><br><br><br>
    </body>
</html>