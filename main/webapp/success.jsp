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
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="wedding.css">

</head>
<body>
 <nav>
        <div class="navbar">
          <ul class="menu">
            <li class="hover"><a href="#Home">Home</a></li>
            <li class="hover"><a href="#About">About</a></li>
            <li class="hover"><a href="http://localhost:8090/VehiclePackages/Packages.jsp">Packages</a>
            <li class="hover"><a href="#Contact">Contact</a></li>
          </ul>
        </div>
      </nav>

    <h1>Success</h1>

 <form action="http://localhost:8090/VehiclePackages/userinfo.jsp" method="post">
     <input type="submit" value="UPDATE MY DATA" />
     </form>
</body>
</html>