<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.webb.Signup,com.webb.UserDao" %> 
    
   <%  
Signup user1 = (Signup)session.getAttribute("currrentUser");
    
if(user1 == null)
{
   response.sendRedirect("login.jsp");
}

 %>
 

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome To Hotel</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/css/bootstrap.min.css" integrity="sha384-AysaV+vQoT3kOAXZkl02PThvDr8HYKPZhNT5h/CXfBThSRXQ6jW5DO2ekP5ViFdi" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <style>
    *{
    margin:0px;
    }
 body{
 margin:0px;
 
 }
 
 
  .hbot .container-fluid .navbar{
    background-color:black;
    
 }
 
  .hbot .container-fluid .navbar .nav-link{
 
 margin:9px;
 padding:7px;
 color:white;
  }
  .navbar .nav-item:hover{
      font-size:20px;
      color:red;
  }
  .hotelview img{
  opacity:0.8;
  
    }
    .centered {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}
  
      </style>
    
</head>
<body>
    <div class="hbot">
            <div class="container-fluid">
                <!-- navigation bar -->
          <nav class="navbar navbar-expand-lg  bg-warning">
                    <button class="navbar-toggler light float-xs-right hidden-sm-up" type="button" data-toggle="collapse" data-target="#nvbar"><span style="color:white;"class="navbar-toggler-icon">+</span></button>
                    
                    <div id="nvbar" class="collapse navbar-toggleable-xs">
                        <ul class="nav navbar-nav float-sm-left">
                         <li class="nav-item"><a class="nav-link" href="#"><span style="color:white;">Hotel</span><span style="color:red">Recommender</span>.<span style="color:skyblue;">com</a></li>
                           
                            <strong><li class="nav-item"><a class="nav-link" href="welcome.jsp">Home</a></li></strong>
                              <strong><li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li></strong>
                               <strong><li class="nav-item"><a class="nav-link" href="homes.jsp">Available Hotels</a></li></strong>
                               <strong><li class="nav-item"><a class="nav-link" href="previous.jsp">Previous Bookings</a></li></strong>
                               
                               
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
        
       
       
        
               
        
      
      
      
    


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.3.7/js/tether.min.js" integrity="sha384-XTs3FgkjiBgo8qjEjBk0tGmf3wPrWtA6coPfQDfFEY8AnYJwjalXCiosYRBIBZX8" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/js/bootstrap.min.js" integrity="sha384-BLiI7JTZm+JWlgKa0M0kGRpJbF2J8q+qreVrKBC47e3K6BW78kGLrCkeRX6I9RoK" crossorigin="anonymous"></script>
    
      
</body>
</html>