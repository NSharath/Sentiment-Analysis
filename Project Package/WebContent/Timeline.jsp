<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

    <link href='http://fonts.googleapis.com/css?family=Droid+Serif|Open+Sans:400,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="css/reset.css"> <!-- CSS reset -->
	<link rel="stylesheet" href="css/style3.css"> <!-- Resource style -->
	<script src="js/modernizr.js"></script> <!-- Modernizr -->
  	
	<title>Promotion Timeline </title>

</head>

<body>

<%@ page import = "sentiment.PromotionalEvents" %>
<%@ page import = "sentiment.TimeLine" %>
<%@ page import = "java.util.*" %>

<%

String startMonth = request.getParameter("start_month");
String midMonth = request.getParameter("mid_month");
String endMonth = request.getParameter("end_month");
String releaseMonth = request.getParameter("release_month");

PromotionalEvents events = new PromotionalEvents();
List<TimeLine> ls = events.selectEvents(startMonth, midMonth, endMonth);

%>

	<header>
		<h1>Promotion Timeline</h1>
	</header>

	<section id="cd-timeline" class="cd-container">
		<div class="cd-timeline-block">
			<div class="cd-timeline-img cd-picture">
			<!--<img src="img/cd-icon-picture.svg" alt="Picture"> -->	
			</div> <!-- cd-timeline-img -->

			<div class="cd-timeline-content">
				<h2><%out.println(ls.get(0).getEvent());%></h2>
				<p><%out.println(ls.get(0).getMostPositiveTweet());%></p>
				<a href="#0" class="cd-read-more">Read more</a>
				<span class="cd-date"><%out.println(ls.get(0).getMonth()); %></span>
			</div> <!-- cd-timeline-content -->
		</div> <!-- cd-timeline-block -->

		<div class="cd-timeline-block">
			<div class="cd-timeline-img cd-movie">
				<!-- <img src="img/cd-icon-movie.svg" alt="Movie"> -->
			</div> <!-- cd-timeline-img -->

			<div class="cd-timeline-content">
				<h2><%out.println(ls.get(1).getEvent());%></h2>
				<p><%out.println(ls.get(1).getMostPositiveTweet());%></p>
				<a href="#0" class="cd-read-more">Read more</a>
				<span class="cd-date"><%out.println(ls.get(1).getMonth()); %></span>
			</div> <!-- cd-timeline-content -->
		</div> <!-- cd-timeline-block -->

		<div class="cd-timeline-block">
			<div class="cd-timeline-img cd-picture">
				<!-- <img src="img/cd-icon-picture.svg" alt="Picture"> -->
			</div> <!-- cd-timeline-img -->

			<div class="cd-timeline-content">
				<h2><%out.println(ls.get(2).getEvent());%></h2>
				<p><%out.println(ls.get(2).getMostPositiveTweet());%></p>
				<a href="#0" class="cd-read-more">Read more</a>
				<span class="cd-date"><%out.println(ls.get(2).getMonth()); %></span>
			</div> <!-- cd-timeline-content -->
		</div> <!-- cd-timeline-block -->


		<div class="cd-timeline-block">
			<div class="cd-timeline-img cd-movie">
				<!-- <img src="img/cd-icon-movie.svg" alt="Movie"> -->
			</div> <!-- cd-timeline-img -->

			<div class="cd-timeline-content">
				<h2>Final product release</h2>
				<p></p>
				<span class="cd-date"><% out.println(releaseMonth);%></span>
			</div> <!-- cd-timeline-content -->
		</div> <!-- cd-timeline-block -->
	</section> <!-- cd-timeline -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="js/main.js"></script> <!-- Resource jQuery -->

</body>
</html>