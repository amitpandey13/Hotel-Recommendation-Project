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
    <link rel="stylesheet" href="product.css">
    
    
    
    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
        integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous" />

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css" />
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
                    <button class="navbar-toggler light float-xs-right hidden-sm-up" type="button" data-toggle="collapse" data-target="#nvbar">
                    <span style="color:white;"class="navbar-toggler-icon">+</span></button>
                    <div id="nvbar" class="collapse navbar-toggleable-xs">
                        <ul class="nav navbar-nav float-sm-left">
                         <li class="nav-item"><a class="nav-link" href="#"><span style="color:white;">Hotel</span><span style="color:red">Recommender</span>.<span style="color:skyblue;">com</a></li>
                           
                            <strong><li class="nav-item"><a class="nav-link" href="welcome.jsp"><i class="fa fa-bed" aria-hidden="true"></i>Home</a></li></strong>
                              <strong><li class="nav-item"><a class="nav-link" href="login.jsp"><i class="fa fa-user" aria-hidden="true"></i>&nbsp;Login</a></li></strong>
                               <strong><li class="nav-item"><a class="nav-link" href="homes.jsp"><i class="fa fa-address-book-o" aria-hidden="true"></i>&nbsp;Available Hotels</a></li></strong>
                               <strong><li class="nav-item"><a class="nav-link" href="previous.jsp"><i class="fa fa-address-book-o" aria-hidden="true"></i>&nbsp;Previous Bookings</a></li></strong>
                                <li class="nav-item"><a class="nav-link" href = "#" data-toggle="modal" data-target="#profile-modal"><span class="fa fa-user-circle"></span>  <%= user1.getUname() %></a></li>
                                <li class="nav-item">
                           <a class="btn btn-outline-link" href="LogoutServlet"><i class="fas fa-sign-out-alt"></i>&nbsp;<span style="color:white;font-weight:bold;">Log-out</a>  
                               </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
        
        
           <!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="profile-modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header bg-dark text-white text-center">
      
        <h5 style="text-align:center; "class="modal-title" id="exampleModalLabel"><strong>JKP Hotel<span style="color:blue">Recommender</span>&nbsp;&nbsp;<i class="fa fa-bed" aria-hidden="true"></i></strong></h5>
       
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       <div class="container text-center">
       <h5 style="font-family:bold;">Current user &nbsp;<i class="far fa-user"></i></h5>
       <h5 class="modal-title" id="exampleModalLabel"><%= user1.getUname() %></h5>
        
        <div id="profile-details">
       <table class="table">
 
  <tbody>
  
   <tr>
      <td>ID : </td>
      <td><%=user1.getId()%> </td>
     
    </tr>
    <tr>
     <strong><th scope="row"><i class="fas fa-file-signature"></i>&nbsp;Name</th></strong>
      <td><%= user1.getUname()%></td>
     
    </tr>
    <tr>
      <th scope="row"><i class="fas fa-envelope-open-text"></i>&nbsp;Email</th>
      <td><%= user1.getUemail()%></td>
     
    </tr>
     <tr>
      <th scope="row">Country code</th>
      <td><%=user1.getPid()%></td>
     
    </tr>
    <tr>
      <th scope="row"><i class="fas fa-phone-square">&nbsp;</i>Phone number</th>
      <td><%=user1.getUno() %>
      
         </td>
        
    </tr>
  </tbody>
</table>
</div>

    <div id="profile-edit" style="display:none;">
    <h3 class="mt-2">Edit your profile-log</h3>
    <form action="EditServlet" method="post">
      <table class="table">
         <tr>
             <td>ID : </td>
             <td><%=user1.getId() %></td>
      </tr>
      
       <tr>
             <td>Name : </td>
             <td><input type="text" class="form-control" name="user_name" value="<%= user1.getUname() %>"> </td>
      </tr>
       <tr>
             <td>Email : </td>
             <td><input type="Email" class="form-control" name="user_email" value="<%= user1.getUemail() %>"></td>
      </tr>
       <tr>
             <td>Country code : </td>
                <td>
             <select  class="form-control" name="user_code" value= "<%=user1.getPid() %>" >
                            <option>+91</option>
                            <option>+92</option>
                            <option>+93</option>
              </select>
                        </td>
      </tr>
       <tr>
             <td>Phone number : </td>
             <td><input type="text" class="form-control" name="user_number" value="<%= user1.getUno() %>"> </td>
      </tr>
       <tr>
             <td>User type : </td>
             <td> <select class="form-control" name="user_type" value="<%=user1.getUser()%>">
                           
                            <option>Male</option>
                            <option>Female</option>
                            <option>Other</option>
                        </select> </td>
      </tr>
      
        <tr>
             <td>Password : </td>
             <td><input type="password" class="form-control" name="user_password" value="<%= user1.getUpass() %>"> </td>
      </tr>
      
      
      
      </table>
         <div class="container">
         <button type="submit" class="btn btn-outline-success" >success</button>
         </div>
    
    
    
    </form>
    
    </div>
   
       </div>
   
   
      </div>
      <div class="modal-footer">
         <a class="btn btn-primary" href="LogoutServlet"><i class="fas fa-sign-out-alt"></i>&nbsp;Log-out</a> 
        <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fas fa-window-close"></i>&nbsp;Close</button>
        <button id="edit-profile-button" type="button" class="btn btn-primary"><i class="fas fa-user-edit"></i>&nbsp;Edit profile</button>
        
      </div>
    </div>
  </div>
</div>
       
       
        
               
        
      
      
      
    

 <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
        integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
        crossorigin="anonymous"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>  
        
          
        
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.3.7/js/tether.min.js" integrity="sha384-XTs3FgkjiBgo8qjEjBk0tGmf3wPrWtA6coPfQDfFEY8AnYJwjalXCiosYRBIBZX8" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/js/bootstrap.min.js" integrity="sha384-BLiI7JTZm+JWlgKa0M0kGRpJbF2J8q+qreVrKBC47e3K6BW78kGLrCkeRX6I9RoK" crossorigin="anonymous"></script>
     <script>
            $(document).ready(function(){
            	let editStatus=false;
            	
            	$('#edit-profile-button').click(function(){
           	     if(editStatus==false)	
           	    	 {
           	    	//alert("humangasour");
                    $("#profile-details").hide()
                    $("#profile-edit").show();
                    editStatus = true;
                    $(this).text("Back");
           	    	 }else
           	    		 {
           	    	//	alert("humangasour");
                        $("#profile-details").show()
                        $("#profile-edit").hide();
                        editStatus = false;
                        $(this).text("Edit-profile");
           	    		 
           	    		 }
    
            	})
            	
            	
            })
        
            
        
        
        </script>
      
</body>
</html>