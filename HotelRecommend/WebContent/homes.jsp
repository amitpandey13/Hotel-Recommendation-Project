
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.webb.Servlet_image"%>
<%@ include file="header.jsp" %>
<%
String user0 = (String)session.getAttribute("user2");
String ratings0 = (String)session.getAttribute("ratings0");
%>


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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/css/bootstrap.min.css" integrity="sha384-AysaV+vQoT3kOAXZkl02PThvDr8HYKPZhNT5h/CXfBThSRXQ6jW5DO2ekP5ViFdi" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body{
    
   
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

  .card .details h2{
   margin: 0;
   padding: 0;
   font-weight: 600;
   font-size: 20px;
   color: #777;
   text-transform: uppercase;
  } 

  .card .details h2 span{
  font-weight: 500;
  font-size: 16px;
  color: #f38695;
  display: block;
  margin-top: 5px;
   } 
 
  

</style>

</head>
<body>

<br>
<br>

 


<div class="box">
      <div class="card">
        <div class="imgBx">
            <img src="./Servlet_image" width="400" height="400">
            
        </div>
        <div class="details">
            <h2>Previous Added hotel</h2>
            <h5><%=user0 %></h5>
             <h5><span style="color:grey;">Rating:  <%=ratings0%></h5>
             
        </div>
      </div>
      </div>
   </div>
     
       
       
     
    

<h2 style="font-size:bold; text-align:center;">Available hotels for Bookings</h2>
<center>
<small style="text-align:center;font-size:bold;">Hotel under our priviledge</small>
</center>
<br><br><br><br>
<table border="1" class="table" style="width:1500px;text-align:center;height:200px;">
<tr>
<td><strong>Hotel Choices</strong></td>
<td><strong>Hotel Name</strong></td>
<td><strong>Hotel city</strong></td>
<td><strong>Hotel Address</strong></td>
<td><strong>Hotel Contact</strong></td>
<td><strong>Hotel Ratings</strong></td>
<td><strong>Book Hotel</strong></td>


</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from hotel_add";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>

<tr>
<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("city") %></td>
<td><%=resultSet.getString("address") %></td>
<td><%=resultSet.getString("contact") %></td>
<td><%=resultSet.getString("ratings") %></td>
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