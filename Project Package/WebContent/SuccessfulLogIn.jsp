<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Successful</title>

<link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="css/normalize.css">
<link rel="stylesheet" href="css/style.css">

</head>
<body>

<%@ page import = "sentiment.UserLogin" %>
<%@ page import = "java.sql.*" %>

<% 
              
        	  String emailAddress = request.getParameter("emailaddress");
        	  String password = request.getParameter("userpassword");
        	  
        	  UserLogin login = new UserLogin();
        	  String j = login.logIn(emailAddress, password);
        		  
        	  
        	  if(j != null )
        	  {
        		  //out.println("<center><H2>Welcome: Login Successful</H2></center>");
        		  request.getRequestDispatcher("VendorForm.jsp").forward(request, response);
        	  }
        	  
        	  else
        	  {
        		  request.getRequestDispatcher("FailedLogin.jsp").forward(request, response);
        		  
        	  }
        	  
        	  
          %>



</body>
</html>