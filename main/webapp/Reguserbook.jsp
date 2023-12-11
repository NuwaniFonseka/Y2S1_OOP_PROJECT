<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	    <style>
        body {
          background-image: url('Aurora 03 - Limited Edition 1 of 1 Artwork.jpeg');
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
<title>Reg user book</title>
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
      <h1>RENTAL DETAILS REG USER</h1>
  
  <form action="userinfo.jsp" method="get">
        <fieldset>
          <label for="location">PICKUP/RETURN LOCATION</label>
          <input type="text" id="yourlocation" name="yourlocation" placeholder="Your pickup/return location" maxlength = "20" required><br><br>

          <label for="pickdate">PICKUP DATE/TIME</label>
          <input type="datetime-local" id="pickdatetime" name="pickdatetime" required><br><br>

          <label for="pickdate">RETURN DATE/TIME</label>
          <input type="datetime-local" id="returndatetime" name="returndatetime" required><br><br>

          <label for="days">NUMBER OF DAYS</label>
          <input type="number" id="days" name="days" placeholder="Enter number of days" required><br><br>

          <label for="mile">MILEAGE</label>
          <input type="text" id="mile" name="mile" placeholder="Enter mileage" required><br><br>

          <label for="opt">CHOOSE DRIVER OPTION</label>
          <select id="opt" name="opt">
          <option value="selfdrive">SELF-DRIVE</option>
          <option value="drive">DRIVE</option>
          </select><br><br><br><br>
          <input type="submit" value="Submit" />
          </fieldset>
          </form><br><br><br><br><br><br><br><br>

</body>
</html>