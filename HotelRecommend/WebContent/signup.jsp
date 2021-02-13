<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/css/bootstrap.min.css" integrity="sha384-AysaV+vQoT3kOAXZkl02PThvDr8HYKPZhNT5h/CXfBThSRXQ6jW5DO2ekP5ViFdi" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    
<style>
.card{
width:700px;
height:700px;

  }
  body{
  background-image:url("hotels/hote1.jpg");
  
  
   }


</style>
</head>
<body>
  <center>
  <div class="card">
  <div class="card-header">
    <h3>User <span style="color:blue;">Registration</h3>
    <a href="googlelogin.jsp" class="btn btn-block btn-danger">
                 <i class="fa fa-google" aria-hidden="true"></i>
                    Login via Google</a>
  </div>
  <div class="card-body">
    <center>
  
    
    </center>
    <!-- form started -->

                <form id="regform" action="RegisterServlet" name="myForm" method="POST" onsubmit = "return(validate());">
                    <!-- name field -->
                    <div class="form-group input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text">
                                <i class="fa fa-user"></i>
                            </span>
                        </div>
                        <input type="text" class="form-control"  
                            name="uname1" placeholder="Enter user Name" required />
                    </div>

                    <!-- email field -->

                    <div class="form-group input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text">
                                <i class="fa fa-envelope"></i>
                            </span>
                        </div>
                        <input type="email" class="form-control" 
                            name="uemail1" placeholder="Enter user Email" required/>
                    </div>

                    <!-- phone field -->

                    <div class="form-group input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text">
                                <i class="fa fa-phone"></i>
                            </span>
                        </div>
                        <select name="pid1" class="custom-select" style="max-width: 80px; required">
                            <option>+91</option>
                            <option>+92</option>
                            <option>+93</option>
                        </select>

                        <input type="text" class="form-control" name="uno1" placeholder="Enter Phone" required />
                    </div>

                    <!-- user type field -->
                    <div class="form-group input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text">
                                <i class="fa fa-building"></i>
                            </span>
                        </div>
                        <select class="form-control" name="user2" required>
                            <option selected disabled>--Gender--</option>
                            <option>Male</option>
                            <option>Female</option>
                            <option>Other</option>
                        </select>
                    </div>

                    <!-- password field -->

                    <div class="form-group input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text">
                                <i class="fa fa-lock"></i>
                            </span>
                        </div>
                        <input type="password" class="form-control" 
                            name="upass1" placeholder="Enter your Password" required />
                    </div>

                 

                    <button   id="sumbimt-btn" type="submit"  class="btn btn-block btn-success">
                        Create
                    </button>

                    <p class="text-center mt-3">
                      <span style="color:yellow;"> Have an account?</span> <a href="login.jsp">Log In</a>
                    </p>
                   
                </form>

                <!-- end of form -->
  
  </div>
  
  </div>
  </center>
 


 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.3.7/js/tether.min.js" integrity="sha384-XTs3FgkjiBgo8qjEjBk0tGmf3wPrWtA6coPfQDfFEY8AnYJwjalXCiosYRBIBZX8" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/js/bootstrap.min.js" integrity="sha384-BLiI7JTZm+JWlgKa0M0kGRpJbF2J8q+qreVrKBC47e3K6BW78kGLrCkeRX6I9RoK" crossorigin="anonymous"></script>
        <script>
         function validate() {
      
         if( document.myForm.uname1.value == "" ) {
            alert( "Please provide your name!" );
            document.myForm.Name.focus() ;
            return false;
         }
         if( document.myForm.uemail1.value == "" ) {
        	 var emailID = document.myForm.uemail1.value;
             atpos = emailID.indexOf("@");
             dotpos = emailID.lastIndexOf(".");
             
             if (atpos < 1 || ( dotpos - atpos < 2 )) {
                alert("Please enter correct email ID")
                document.myForm.uemail1.focus() ;
                return false;
         }
         
         if( document.myForm.uno1.value == "" ||
            document.myForm.uno1.value.length != 10 ) {
            
            alert( "Enter 10 digits mobile number" );
            document.myForm.Zip.focus() ;
            return false;
         }
            if( document.myForm.upass1.value == ""||
            document.myForm.upass1.value.length <= 7 ) {
            
            alert( "make password atleast 8 digits");
            document.myForm.upass1.focus() ;
            return false;
         }
         
         return( true );
      }
 
</script>
    

    
</body>
</html>