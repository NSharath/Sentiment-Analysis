<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Product Information</title>

<link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="css/normalize.css">
<link rel="stylesheet" href="css/style.css">
        
<style>

H2
{
color: #ffffff;
}

</style>

</head>
<body>

<%@ page import = "sentiment.ProductInformation" %>

<%

String productDomain = request.getParameter("product_domain");
String productName = request.getParameter("product_name");
String productDescription = request.getParameter("product_description");
String companyName = request.getParameter("company_name");
String city = request.getParameter("city");
String state = request.getParameter("state");
String address = request.getParameter("address");
String zipcode = request.getParameter("zip");
String phoneNumber = request.getParameter("phone_number");
String email = request.getParameter("email_address");
String websiteAddress = request.getParameter("website_name");

ProductInformation productInformation = new ProductInformation();

int i = productInformation.saveProductInfo(productDomain, productName, productDescription, companyName, city, state, address, zipcode, phoneNumber, email, websiteAddress);

if(i == 1)
{
	request.getRequestDispatcher("Timeline.jsp").forward(request, response);  
	//out.println("<center><H2>Product Information Persisted Successfully</H2></center>");
}

else
{
	  out.println("<center><H2>Persistence Failed: Please try again</H2></center>");
	  
}



%>

</body>
</html>