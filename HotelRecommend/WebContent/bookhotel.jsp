<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ include file="header1.jsp" %>
    
     <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/css/bootstrap.min.css" integrity="sha384-AysaV+vQoT3kOAXZkl02PThvDr8HYKPZhNT5h/CXfBThSRXQ6jW5DO2ekP5ViFdi" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<style>


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


     <div class="box">
      <div class="card">
        <div class="imgBx">
            <img src="hotels/hote1.jpg">
        </div>
        <div class="details">
            <h5>King Royals&nbsp;&nbsp;<span>@Mp Nagar</span></h5>
            <a href="#"><button class="btn btn-outline-warning">Book</button></a>
        </div>
      </div>
    
       <div class="card">
         <div class="imgBx">
            <img src="hotels/hotel2.jpg" alt="images">
         </div>
         <div class="details">
            <h5>Hotel Lincoln<span>@Indrapoori</span></h5>
            <a href="#"><button class="btn btn-outline-warning">Book</button></a>
          </div>
       </div>
       <div class="card">
         <div class="imgBx">
            <img src="hotels/hotel3.jpg" alt="images">
         </div>
         <div class="details">
            <h5>Koshti Palace<span>@Hoshangabad</span></h5>
            <a href="#"><button class="btn btn-outline-warning">Book</button></a>
          </div>
       </div>
       
       <fieldset>
       <legend style="text-align:center;">Booking form</legend>
       <form action="BookedServlet" method="POST">
  <div class="form-group">
   
    <input type="email" class="form-control" value=<%=user1.getUemail() %> name="cusemail" required>
    
  </div>
  
 
<%
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
<div class="form-group">
    <select class="form-control" name="hotname" required><br>

  <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select name from hotel_add ";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
   <option value=<%=resultSet.getString("name") %>>Hotel(<%=resultSet.getString("name") %>)</option>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>


  <div class="form-group">
    <input type="text" class="form-control" placeholder="Number of persons" name="numperson" required>
  </div>
  <div class="form-group">
    <input type="text" class="form-control" placeholder="Number of bed" name="numbed" required>
  </div>
  
  <div class="form-group">
    <input type="text" class="form-control" value=<%=user1.getUno() %> name="cumcontact" required>
  </div>
  <label for="check-in">Check-in Date</label>
  <div class="form-group">
    <input type="date" class="form-control" id="check-in" placeholder="Checkin Date" name="checkin" required>
  </div>
  <label for="check-out">Check-out Date</label>
  <div class="form-group">
    <input type="date" class="form-control" id="check-out" placeholder="Checkout Date" name="checkout" required>
  </div>
  <div class="form-group">
    <input type="text" class="form-control" placeholder="If visited earlier mention ratings" name="rating">
  </div>
  <div class="form-group">
    <input type="text" class="form-control" placeholder="Aadhar number" name="aadhar" required>
  </div>
  <center>
  <button type="submit" class="btn btn-outline-success">Book</button>
  </center>
</form>
</fieldset>
       
       
       
       
       
       
       
       <div class="card">
         <div class="imgBx">
            <img src="hotels/hotel3.jpg" alt="images">
         </div>
         <div class="details">
           <h5>Shadow Royals<span>@Habibganj</span></h5>
            <a href="#"><button class="btn btn-outline-warning">Book</button></a>
          </div>
       </div>
        <div class="card">
         <div class="imgBx">
            <img src="hotels/hote1.jpg" alt="images">
         </div>
         <div class="details">
           <h5>Akshi visits<span>@New Market</span></h5>
            <a href="#"><button class="btn btn-outline-warning">Book</button></a>
          </div>
       </div>

       <div class="card">
         <div class="imgBx">
            <img src="hotels/hotel2.jpg" alt="images">
         </div>
         <div class="details">
           <h5>Ashoka Residence<span>@Kolar</span></h5>
            <a href="#"><button class="btn btn-outline-warning">Book</button></a>
          </div>
       </div>
 
  </div>
  

        <%@ include file="footer.jsp" %>
        




 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.3.7/js/tether.min.js" integrity="sha384-XTs3FgkjiBgo8qjEjBk0tGmf3wPrWtA6coPfQDfFEY8AnYJwjalXCiosYRBIBZX8" crossorigin="anonymous"></script>
</body>
</html>