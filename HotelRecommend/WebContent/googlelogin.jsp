<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
   <title>Insert title here</title>
   <script src="https://apis.google.com/js/platform.js" async defer></script>
   <meta name="google-signin-client_id" content="229671351848-qk1cq662hi8e8e3bdj3nu5m01f6dla4l.apps.googleusercontent.com">
  
</head>
<body>
<center>
   <div class="g-signin2" data-onsuccess="onSignIn" id="myP"></div>
   </center>
   
       <img id="myImg"><br>
      <p id="name"></p>
      <center>
      <div id="status">
      </div>
      </center>
     
   <script type="text/javascript">
      function onSignIn(googleUser) {
      // window.location.href='success.jsp';
      var profile = googleUser.getBasicProfile();
      var imagurl=profile.getImageUrl();
      var name=profile.getName();
      var email=profile.getEmail();
      document.getElementById("myImg").src = imagurl;
      document.getElementById("name").innerHTML = name;
      document.getElementById("myP").style.visibility = "hidden";
      document.getElementById("status").innerHTML = 'Welcome '+name+'!<a href=processgoogle.jsp?email='+email+'&imagurl='+imagurl+'&name='+name+'/>Continue with Google login</a></p>'
 
      }
   </script>
   <center>
   <button onclick="myFunction()"><span style="color:white;">Sign Out</span></button></center>
   <script>
      function myFunction() {
      gapi.auth2.getAuthInstance().disconnect();
      location.reload();
   }
   </script>
</body>
</html>