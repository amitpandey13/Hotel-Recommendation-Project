<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    
  
     <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
  .checked {
  color: orange;
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
.row{
margin:5px;
padding:10px;
width:800px;
height:600px;
 }
 
 
  .box{
    width: 1200px;
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
    grid-gap: 15px;
    margin: 0 auto;
  }
  .card{
    position: relative;
    width: 300px;
    height: 350px;
    background: #fff;
    margin: 0 auto;
    border-radius: 4px;
    box-shadow:0 2px 10px rgba(0,0,0,.2);
  }
  .card:before,
  .card:after
  {
    content:"";
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    border-radius: 4px;
    background: #fff;
    transition: 0.5s;
    z-index:-1;
  }
  .card:hover:before{
  transform: rotate(20deg);
  box-shadow: 0 2px 20px rgba(0,0,0,.2);
  }
  .card:hover:after{
  transform: rotate(10deg);
  box-shadow: 0 2px 20px rgba(0,0,0,.2);
  }
  .card .imgBx{
  position: absolute;
  top: 10px;
  left: 10px;
  bottom: 10px;
  right: 10px;
  background: #222;
  transition: 0.5s;
  z-index: 1;
  }
  
  .card:hover .imgBx
  {
    bottom: 80px;
  }

  .card .imgBx img{
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      object-fit: cover;
  }

  .card .details{
      position: absolute;
      left: 10px;
      right: 10px;
      bottom: 10px;
      height: 60px;
      text-align: center;
  }

  .card .details h5{
   margin: 0;
   padding: 0;
   font-weight: 600;
   font-size: 20px;
   color: #777;
   text-transform: uppercase;
  } 

  .card .details h5 span{
  font-weight: 500;
  font-size: 16px;
  color: #f38695;
  display: block;
  margin-top: 5px;
   } 
 
 
  
      </style>
    
</head>
<body>
    <div class="hbot">
            <div class="container-fluid">
                <!-- navigation bar -->
          <nav class="navbar navbar-expand-lg  bg-warning">
                    <button class="navbar-toggler light float-xs-right hidden-sm-up" type="button" data-toggle="collapse" data-target="#nvbar"></button>
                    <div id="nvbar" class="collapse navbar-toggleable-xs">
                        <ul class="nav navbar-nav float-sm-left">
                         <li class="nav-item"><a class="nav-link" href="#"><span style="color:white;">Hotel</span><span style="color:red">Recommender</span>.<span style="color:skyblue;">com</a></li>
                           
                            <strong><li class="nav-item"><a class="nav-link" href="welcome.jsp"><i class="fa fa-bed" aria-hidden="true"></i>&nbsp;Home</a></li></strong>
                              <strong><li class="nav-item"><a class="nav-link" href="login.jsp"><i class="fa fa-user" aria-hidden="true"></i>&nbsp;Login</a></li></strong>
                            
                                <strong><li class="nav-item"><a class="nav-link" href="previous.jsp"><i class="fa fa-address-book-o" aria-hidden="true"></i>&nbsp;Previous Bookings</a></li></strong>
                            <strong><li class="nav-item"><a class="nav-link" href="signup.jsp"><i class="fa fa-user-plus" aria-hidden="true"></i>&nbsp;Signup</a></li></strong>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
               
          <div class="hotelview" id="hv">
             <img src="h1.png" width="1550" height="673"> 
              <div class="centered">
              <center>
               <h1 style="color:white; font-size:bold;">Welcome to J.K.P Hotel<br><br>
               Recommendation</h1>
             
               <button class="btn btn-warning">Explore hotels</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <a href="login.jsp"><button class="btn btn-success">Login</button></a><br><br><br>
                 </center>
                <%@ include file="searchbar.jsp" %>
             
              </div>
          </div>
          

  
 
<%
String driver = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "hotel";
String userid = "root";
String password = "root";
String address1=request.getParameter("address");
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<h3 style="color:black; font-weight:600;text-align:center;">Your search <span style="color:blue;">results</h3>
<table border="1" class="table" style="width:1500px;text-align:center;height:75px;">
<tr>
<td>Name</td>
<td>city</td>
<td>address</td>
<td>Book</td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from hotel_add where address='"+address1+"' ";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><strong><%=resultSet.getString("name") %></strong></td> 
<td><strong><%=resultSet.getString("city") %></strong></td>
<td><strong><%=resultSet.getString("address") %></strong></td>
<td><a href="bookhotel.jsp"><button class="btn btn-outline-warning">Book</button></a></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
    
          
          
          
         
          
    <div class="box">
      <div class="card">
        <div class="imgBx">
            <img src="hotels/hote1.jpg">
        </div>
        <div class="details">
            <h5>King Royals&nbsp;&nbsp;<span>@Mp Nagar</span></h5>
          
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star"></span>

        </div>
      </div>
    
       <div class="card">
         <div class="imgBx">
            <img src="hotels/hotel2.jpg" alt="images">
         </div>
         <div class="details">
            <h5>Hotel Lincoln<span>@Indrapoori</span></h5>
                  
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
          </div>
       </div>
       <div class="card">
         <div class="imgBx">
            <img src="hotels/hotel3.jpg" alt="images">
         </div>
         <div class="details">
            <h5>Koshti Palace<span>@Hoshangabad</span></h5>
                  
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
          </div>
       </div>
       <div class="card">
         <div class="imgBx">
            <img src="hotels/hotel3.jpg" alt="images">
         </div>
         <div class="details">
           <h5>Shadow Royals<span>@Habibganj</span></h5>
                
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
          </div>
       </div>
        <div class="card">
         <div class="imgBx">
            <img src="hotels/hote1.jpg" alt="images">
         </div>
         <div class="details">
           <h5>Akshi visits<span>@New Market</span></h5>
               
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
          </div>
       </div>

       <div class="card">
         <div class="imgBx">
            <img src="hotels/hotel2.jpg" alt="images">
         </div>
         <div class="details">
           <h5>Ashoka Residence<span>@Kolar</span></h5>
                  
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star"></span>
          </div>
       </div>
 
  </div>
         
      
    <div class="footer">
    <%@ include file="footer.jsp" %>  
    </div>


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.3.7/js/tether.min.js" integrity="sha384-XTs3FgkjiBgo8qjEjBk0tGmf3wPrWtA6coPfQDfFEY8AnYJwjalXCiosYRBIBZX8" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/js/bootstrap.min.js" integrity="sha384-BLiI7JTZm+JWlgKa0M0kGRpJbF2J8q+qreVrKBC47e3K6BW78kGLrCkeRX6I9RoK" crossorigin="anonymous"></script>
    
      
</body>
</html>