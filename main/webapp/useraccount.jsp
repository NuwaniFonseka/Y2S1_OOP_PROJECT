<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" type="image/x-icon" href="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZzPo9uv7MUCwwLTBVLgf29PIwG_Or3n2uVw&usqp=CAU">
	
	<style type="text/css">
		
	.body{
		width:90%;
		margin-left: auto;
        margin-right: auto;
        
        
	}
	
	#table {
	  font-family: Arial, Helvetica, sans-serif;
	  border-collapse: collapse;
	  width: 40%;
	   margin-left: auto;
       margin-right: auto;
	}
	
	#table td, #customers th {
	  border: 1px solid #ddd;
	  padding: 8px;
	}
	
	#table tr:nth-child(even){background-color: #f2f2f2;}
	
	#table tr:hover {background-color: #ddd;}
	
	#table th {
	  padding-top: 12px;
	  padding-bottom: 12px;
	  text-align: left;
	  background-color:#d9e6fa;
	  color: blue;
	  text-align: center;
      border: 2px solid #ddd;	
	}
	#table td {
		text-align: left;
	}
	
	input[type="button"] {
    background-color: blue; /* Green background */
    color: white; /* White text */
    padding: 10px 20px; /* Adds padding inside the button */
    margin: 5px; /* Adds margin around the button */
    border: 1px solid #ccc; /* Adds a border around the button */
    border-radius: 5px; /* Rounds the corners of the button */
    cursor: pointer; /* Changes cursor to a pointer on hover */
    box-shadow: 2px 2px 5px 0px rgba(0, 0, 0, 0.3); /* Adds a subtle box shadow */
   
    
	}

	input[type="button"]:hover {
	    background-color: darkblue; /* Darker green when hovering */
	}
	
	input[type="button"]:active {
	    background-color: lightblue; /* Darker green when button is pressed */
	}
	
	.useraccount-btn{
		text-align:center;
	}
	
		
		
		
	</style>
</head>
<body>
<table id="table">



		<tr>
		<th>ID</th>
		<th>FIRSTNAME</th>
		<th>LASTNAME</th>
		<th>E-MAIL</th>
		<th>AGE</th>
		<th>MOBILE</th>
		<th>NIC</th>
	</tr>
	<c:forEach var="us" items="${userDetails}">
	
	<c:set var="id" value="${us.id}"/>
	<c:set var="firstname" value="${us.firstname}"/>
	<c:set var="lastname" value="${us.lastname}"/>
	<c:set var="email" value="${us.email}"/>
	<c:set var="age" value="${us.age}"/>
	<c:set var="mobile" value="${us.mobile}"/>
	<c:set var="NIC" value="${us.NIC}"/>
	

	<tr>
		<td>${us.id}</td>
		<td>${us.firstname}</td>
		<td>${us.lastname}</td>
		<td>${us.email}</td>
		<td>${us.age}</td>
		<td>${us.mobile}</td>
		<td>${us.NIC}</td>
	</tr>

	</c:forEach>
	</table>
	
		<c:url value="updateCustomer.jsp" var="cusupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="firstname" value="${firstname}"/>
		<c:param name="lastname" value="${lastname}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="age" value="${age}"/>
		<c:param name="mobile" value="${mobile}"/>
		<c:param name="NIC" value="${NIC}"/>
		
	</c:url>
	<div class="useraccount-btn">
	<a href="${cusupdate}">
	<input type="button" name="update" value="UPDATE MY DATA">
	</a>
	<br>
	</div>
	
	<c:url value="deletecustomer.jsp" var="cusdelete">
		<c:param name="id" value="${id}"/>
		<c:param name="firstname" value="${firstname}"/>
		<c:param name="lastname" value="${lastname}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="age" value="${age}"/>
		<c:param name="mobile" value="${mobile}"/>
		<c:param name="NIC" value="${NIC}"/>
	</c:url>
	<div class="useraccount-btn">
	<a href="${cusdelete}">
	
	<input type="button" name="delete" value="DELETE MY ACCOUNT">
	</a>
	</div>
	<br>
	
	<div class="useraccount-btn">
	<a href="#">
	<input type="button" name="payment" value="CHECKOUT">
	</a>
	</div>
	
</body>
</html>