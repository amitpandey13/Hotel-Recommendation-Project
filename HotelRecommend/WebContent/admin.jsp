<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.webb.Signup,com.webb.UserDao" %> 
    
  <%  
Signup user1 = (Signup)session.getAttribute("currrentUser");

 %>
 
 
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.webb.Servlet_image"%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "hotel";
String userid = "root";
String password = "root";

try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin section</title>
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
    
 .card{
 
   width:600px;
   height:600px;
 
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
                           
                            <strong><li class="nav-item"><a class="nav-link" href="welcome.jsp">Home</a></li></strong>
                              <strong><li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li></strong>
                               <strong><li class="nav-item"><a class="nav-link" href="homes.jsp">Available hotels</a></li></strong>
                               <strong><li class="nav-item"><a class="nav-link" href="previous.jsp">Previous Bookings</a></li></strong>
                              <strong><li class="nav-item float-left" ><a class="nav-link" href="#"><%=user1.getUname() %></a></li></strong>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
        
        
        <center>
           <div class="card">
            <div class="card-header">
            <center>
                 <h3>Admins Work Area</h3>
                 </center>
             <div class="card-body"> 
                <form action="Add_hotel" method="POST" enctype="multipart/form-data">
                  <label for="img">Select image:</label>
                 <input type="file" class="form-control" id="img" name="img1"><br>
                 <label for="hname">Name</label>
                 <input type="text" class="form-control" name="hotelname" id="hname">
                 <label for="hcity">City</label>
                  <input type="text" class="form-control" name="hotelcity" id="hcity">
                   <label for="hadress">Adress</label>
                  <input type="text" class="form-control" name="hoteladress" id="hadress">
                   <label for="hcontact">Contact</label>
                  <input type="text" class="form-control" name="hotelcontact" id="hcontact">
                   <label for="hrating">Rating</label>
                  <input type="text" class="form-control" name="hotelrating" id="hrating">
                   <button type="submit" class="btn btn-outline-warning">ADD</button>
                  
               
                
                
                
                </form>
                
              </div>
                 
            </div>
        
        </div> 
        </center>
        
        
<h2 style="font-size:bold; text-align:center;">Hotel Recommendation on Past Entries</h2>
<center>
<small style="text-align:center;font-size:bold;">Hotel under our priviledge</small>
</center>
<br><br><br><br>
<table border="1" class="table" style="width:1500px;text-align:center;height:200px;">
<tr>
<td>hotel Booking id</td>
<td>Customer mail</td>
<td>Hotel Name</td>
<td>Number of person</td>
<td>Number of bed</td>
<td>Contact num</td>
<td>Aadhar</td>
<td>Check-in</td>
<td>Rating</td>
<td>Book</td>


</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from bookhotel order by rating DESC";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>


<tr>
<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("usermail") %></td>
<td><%=resultSet.getString("hotelname") %></td>
<td><%=resultSet.getString("numperson") %></td>
<td><%=resultSet.getString("numbed") %></td>
<td><%=resultSet.getString("contactnum") %></td>
<td><%=resultSet.getString("aadhar") %></td>
<td><%=resultSet.getString("checkin") %></td>
<td><%=resultSet.getString("rating") %></td>
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
<%@ include file="footer.jsp" %>
        

</body>
</html>