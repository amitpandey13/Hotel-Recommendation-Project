<%@ page import="java.util.List,java.io.IOException,
 java.io.PrintWriter,
 java.sql.Connection,
 java.sql.DriverManager,
 java.sql.PreparedStatement,
java.sql.SQLException,

 javax.servlet.ServletException,
 javax.servlet.annotation.WebServlet,
 javax.servlet.http.HttpServlet,
 javax.servlet.http.HttpServletRequest, 
 javax.servlet.http.HttpServletResponse" %>

<%
 String name=(String)request.getParameter("name");
 String email=(String)request.getParameter("email");
 String imagurl = (String)request.getParameter("imagurl");
 session.setAttribute("googleUserName", name);
 session.setAttribute("googleUserEmail", email);
 String nameGoogle=(String)session.getAttribute("googleUserName"); 
 //out.print("Hello User: You have entered the name: "+nameGoogle); 
 
 
 
  %>
 

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="team_info.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>


    <title>Our Team</title>
    <style>
    body{
    background-color:white;
    }
    
 
  .hbot .container-fluid .navbar .nav-link{
 
 margin:9px;
 padding:7px;
 color:white;
  }
  

.team {
    min-height: 100vh;
    padding: 60px 15px;
    background-color: #22252a;
    float: left;
    width: 100%;
}

.team h1 {
    font-size: 36px;
    font-family: open sans;
    font-weight: 700;
    color: #ffffff;
    margin: 0;
    padding-bottom: 60px;
    text-align: center;
}

.team .card {
    width: 25%;
    float: left;
    padding: 0px 15px;
    border-radius: 10px;
}

.team .card .box {
    padding: 15px;
    background-color: #2d3035;
    border-radius: 10px;
    transition: margin 1s ease, box-shadow 1s ease;
    height: 480px;
}

.team .card .box:hover {
    margin-top: -15px;
    box-shadow: 0px 0px 40px black;
}

.team .card .box img {
    width: 150px;
    display: block;
    margin: 10px auto;
    border-radius: 50%;
}

.team .card .box h4 {
    font-size: 20px;
    font-family: open sans;
    margin: 20px 0px 10px;
    color: #ea5e71;
    text-align: center;
    font-weight: 700;
}

.team .card .box h5 {
    font-size: 16px;
    font-family: open sans;
    font-weight: 600;
    color: #b9b9b9;
    margin: 0px 0px 15px;
    text-align: center;
}

.team .card .box p {
    color: #b9b9b9;
    font-size: 15px;
    font-family: open sans;
    font-weight: 400;
    line-height: 24px;
    text-align: center;
    padding: 0px 20px;
}


/responsive/

@media(max-width: 991px) {
    .team .card {
        width: 50%;
        margin-bottom: 30px;
    }
}

        
    </style>
</head>

<body>
           
  
          
             
           <hr><hr>
           
 <section class="team">
               <div class="container">
                <h1>JKP HOTEL RECOMMENDER WEBSITE</h1>
                <div id="in">
               <div class="card " style="background-color: lightslategrey; ">
                    <div class="box ">
                        <img src="<%=imagurl%>" alt="team img " />
                        <h4>User name: <%=name %></h4>
                        <h5>User email: <%=email %></h5>
                        <h5>Webshop.com user</h5>
                        <p>Welcome to JKP hotel Recpmmender...trying our best to serve you..</p>
                    </div>
                </div>
                </div>
                <div class="card " style="background-color: lightslategrey; ">
                    <div class="box ">
                        <img src="taj.jpg" alt="Hotel pic " />
                        <h4>Available Hotels</h4>
                        <h4>Choose 5 star Hotels from website</h4>
                        <h5>Ratings: 4+/5</h5>
                       
                        <center>
                        <a class="btn btn-warning" href="welcome.jsp"><i class="fa fa-map-marker" aria-hidden="true"></i>&nbsp; Available Hotels</a></center>
                        
                    </div>
                </div>
                <div class="card " style="background-color: lightslategrey; ">
                    <div class="box ">
                        <img src="hotel4.jpg" alt="team img " />
                        <h4>JKP recommends Hotels to users<br>
                        based on previous entries</h4>
                        <h5>Made under guidence of LNCTS bhopal(mp)</h5>
                       
                      
                    </div>
                </div>
               
            </div>
        </div>
    </section>



            
            
            
          



</html>