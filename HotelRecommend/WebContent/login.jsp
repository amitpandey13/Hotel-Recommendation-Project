<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import = "com.webb.Message" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login to Explore</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/css/bootstrap.min.css" integrity="sha384-AysaV+vQoT3kOAXZkl02PThvDr8HYKPZhNT5h/CXfBThSRXQ6jW5DO2ekP5ViFdi" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    
<style>
*{

margin:0px;
padding:0px;


}
body{

background-image:url("hotels/hotel3.jpg");
 }
.card{
width:600px;
height:700px;

 }
 
</style>
</head>
<body>



<center>
<div class="card">
  <div class="card-header">
  <img src="hotels/hotel2.jpg" class="img-fluid">

</div>
  <%
                          
                          Message m = (Message)session.getAttribute("msg");
                          if(m!=null)
                          {
                        	 %>
                        	     <div class="alert alert-danger" role="alert">
                                  <%= m.getContent() %>
                             </div>
                                 
                        	  <%
                        	   session.removeAttribute("msg");  
                        	  
                          }
                        	  %>
                        	   

<div class="card-body">
<center>
<i class="fa fa-bed" aria-hidden="true"></i>&nbsp;&nbsp;<h4>Login Here </h4>
   <form action="Login_Servlet" method="POST">
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" name="uemail1" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" required>
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" name="upass1" class="form-control" id="exampleInputPassword1" placeholder="Password" required>
  </div>
 
  <button type="submit" class="btn btn-outline-warning">Login</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   
</form>

<h5>Don't have an acoount? click here</h5>
<a href="signup.jsp">
  <button class="btn btn-outline-warning">Signup
</button>
</a>
</center>
</div>
</div>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.3.7/js/tether.min.js" integrity="sha384-XTs3FgkjiBgo8qjEjBk0tGmf3wPrWtA6coPfQDfFEY8AnYJwjalXCiosYRBIBZX8" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/js/bootstrap.min.js" integrity="sha384-BLiI7JTZm+JWlgKa0M0kGRpJbF2J8q+qreVrKBC47e3K6BW78kGLrCkeRX6I9RoK" crossorigin="anonymous"></script>
    
</body>
</html>