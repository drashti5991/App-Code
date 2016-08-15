<!--
File          : Success.jsp
Description   : This page indicates end of the 5-step application. 
                A user is only allowed to logout from this point.

Created By    : Drashti Trivedi
Created On    : 08/13/2016
-->


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>BOND STREET</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">


	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">
	<!-- Google Fonts -->
	<link href='http://fonts.googleapis.com/css?family=Playfair+Display:400,700,400italic|Roboto:400,300,700' rel='stylesheet' type='text/css'>
	<!-- Animate -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon -->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">

	<link rel="stylesheet" href="css/style.css">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-T8Gy5hrqNKT+hzMclPo118YTQO6cYprQmhrYwIiQ/3axmI1hQomh7Ud2hPOy8SP1" crossorigin="anonymous">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body>

	<!-- END #fh5co-offcanvas -->
	<header id="fh5co-header-s">
		
		<div class="col-md-10 col-sm-10 col-xs-10">
			<div class="logo">
				<a href="#">
					<img width="60px" src="images/logo.png">
					<strong>BOND STREET</strong>
				</a>
			</div>
		</div>
		<div class="col-md-2 col-sm-2 col-xs-2">
                            <div id="navbar-collapse-02" class="collapse navbar-collapse">
                                <ul class="nav navbar-nav navbar-right">
                                    <li class="dropdown propClone">
                                        <a class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="1" data-close-others="false" aria-expanded="true" href="#">
											<i class="fa fa-bars"></i>
										</a>

                                        <!-- edited by maverik - added bootstrap classes to control the drop down - the drop down is also using jquery and boostrap js -->
                                        <ul class="dropdown-menu">
                                            <li><a href="step1.jsp" class="disabled">Step 1</a></li>
                                            <li><a href="step2.jsp" class="disabled">Step 2</a></li>
                                            <li><a href="step3.jsp" class="disabled">Step 3</a></li>
                                            <li><a href="step4.jsp" class="disabled">Step 4</a></li>
                                            <li><a href="step5.jsp" class="disabled">Step 5</a></li>
                                            <li><hr></li>
                                            <li><a href="index.jsp">Logout</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div><!-- /.navbar-collapse -->
		</div>

	</header>
	<!-- END #fh5co-header -->
	
<div class="customHr">.</div>
        <div class="container">
            <center>
			<h1>Successful Application Submission !!</h1>
                        
            </center>
	</div>

	<footer id="fh5co-footer">
		<p><small>&copy; 2016. BOND STREET. All Rights Reserved. </small></p>
	</footer>


	
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Main JS -->
	<script src="js/main.js"></script>

	</body>
</html>

