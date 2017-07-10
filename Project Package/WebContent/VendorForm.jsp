<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en" class="no-js">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>Vendor Input Form</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />
    
     <!-- Bootstrap core CSS     -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="css/animate.min.css" rel="stylesheet"/>

    <!--  Light Bootstrap Table core CSS    -->
    <link href="css/light-bootstrap-dashboard.css" rel="stylesheet"/>


    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="css/demo.css" rel="stylesheet" />


    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="css/pe-icon-7-stroke.css" rel="stylesheet" />
 
    <style type="text/css">
    /* Add some padding on document's body to prevent the content
    to go underneath the header and footer */
    body{        
        padding-top: 0px;
        padding-bottom: 0px;
    }
    .fixed-header, .fixed-footer{
        width: 100%;
        background: #333;
        padding: 30px 0;
        color: #fff;
    }
    .fixed-header{
        top: 0;
    }
    .fixed-footer{
        bottom: 0;
    }
    .container{
        width: 85%;
        margin: 0 auto; /* Center the DIV horizontally */
    }
    nav a{
        color: #fff;
        text-decoration: none;
        padding: 7px 25px;
        display: inline-block;
    }
</style>
   
</head>

<body>

    <div class="fixed-header">
        <div class="container">
           <center><b> Vendor Input Form</b></center>
        </div>
    </div><br/>
    <div class="container">
        <div class="container">
	<div class="col-lg-12 well">
	<div class="row">
				<form action="ProductInformation.jsp" method="post">
					<div class="col-sm-12">
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>Product Domain*</label>
								<input type="text" name = "product_domain" required = "true" placeholder="Enter Domain Here.." class="form-control">
							</div>
							<div class="col-sm-6 form-group">
								<label>Product Name*</label>
								<input type="text" name = "product_name" required = "true" placeholder="Enter Product Name Here.." class="form-control">
							</div>
						</div>					
						<div class="form-group">
							<label>Product Description*</label>
							<textarea name = "product_description" required = "true" placeholder="Enter Product Description Here.." rows="3" class="form-control"></textarea>
						</div>	
                                                  
                        <div class="row">
                             <div class="col-sm-4 form-group">
                             <label>Months for Promotion*</label><br/>
                             </div>
                        </div>
                        
                    <div class="row">
                        <div class="col-sm-4 form-group">
							 <input type="text" name="start_month" required = "true"><br>
						</div>

                        <div class="col-sm-4 form-group">
							 <input type="text" name="mid_month" required = "true"><br>
					    </div>
					    
					     <div class="col-sm-4 form-group">
							 <input type="text" name="end_month" required = "true"><br>
					    </div>
				    </div>
				    
				    <div class="row">
				        <div class="col-sm-4 form-group">
				             <label>Month for Product Release*</label>
				             <input type="text" name="release_month" required = "true"><br>
				        
				        </div>
				    
				    </div>
                        
						<div class="row">
							<div class="col-sm-4 form-group">
								<label>Company Name*</label>
								<input type="text" name = "company_name" required = "true" placeholder="Enter Company Name Here.." class="form-control">
							</div>	
							<div class="col-sm-4 form-group">
								<label>City*</label>
								<input type="text" name = "city" required = "true" placeholder="Enter City Name Here.." class="form-control">
							</div>	
							<div class="col-sm-4 form-group">
								<label>State*</label>
								<select name="state" required = "true" class="form-control selectpicker" >
      <option value=" " >Please select your state</option>
      <option>Alabama</option>
      <option>Alaska</option>
      <option >Arizona</option>
      <option >Arkansas</option>
      <option >California</option>
      <option >Colorado</option>
      <option >Connecticut</option>
      <option >Delaware</option>
      <option >District of Columbia</option>
      <option> Florida</option>
      <option >Georgia</option>
      <option >Hawaii</option>
      <option >daho</option>
      <option >Illinois</option>
      <option >Indiana</option>
      <option >Iowa</option>
      <option> Kansas</option>
      <option >Kentucky</option>
      <option >Louisiana</option>
      <option>Maine</option>
      <option >Maryland</option>
      <option> Mass</option>
      <option >Michigan</option>
      <option >Minnesota</option>
      <option>Mississippi</option>
      <option>Missouri</option>
      <option>Montana</option>
      <option>Nebraska</option>
      <option>Nevada</option>
      <option>New Hampshire</option>
      <option>New Jersey</option>
      <option>New Mexico</option>
      <option>New York</option>
      <option>North Carolina</option>
      <option>North Dakota</option>
      <option>Ohio</option>
      <option>Oklahoma</option>
      <option>Oregon</option>
      <option>Pennsylvania</option>
      <option>Rhode Island</option>
      <option>South Carolina</option>
      <option>South Dakota</option>
      <option>Tennessee</option>
      <option>Texas</option>
      <option> Uttah</option>
      <option>Vermont</option>
      <option>Virginia</option>
      <option >Washington</option>
      <option >West Virginia</option>
      <option>Wisconsin</option>
      <option >Wyoming</option>
      </select>
      
							</div>		
						</div>
						<div class="row">
							<div class="col-sm-6 form-group">
							<label>Address*</label>
							<textarea name = "address" required = "true" placeholder="Enter Address Here.." rows="3" class="form-control"></textarea>
							</div>		
							<div class="col-sm-6 form-group">
								<label>Zip*</label>
								<input type="text" name = "zip" required = "true" placeholder="Enter Zip Here.." class="form-control">
							</div>	
						</div>						
					<div class="form-group">
						<label>Phone Number*</label>
						<input type="text" name = "phone_number" required = "true" placeholder="Enter Phone Number Here.." class="form-control">
					</div>		
					<div class="form-group">
						<label>Email Address*</label>
						<input type="text" name = "email_address" required = "true" placeholder="Enter Email Address Here.." class="form-control">
					</div>	
					<div class="form-group">
						<label>Website</label>
						<input type="text" name = "website_name" placeholder="Enter Website Name Here.." class="form-control">
					</div>
					<button type="submit" style="background-color:grey;font-size: 150%;"> Submit</button><br><br>
					<p>All fields marked with (*) are mandatory</p>					
					</div>
				</form> 
				</div>
	</div>
	</div>

    </div>    
    <div class="fixed-footer">
      <center>  <div class="container">Copyright &copy; 2017 </div> </center>       
    </div>


</body>
</html>