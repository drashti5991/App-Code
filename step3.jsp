<!--
File          : Step3.jsp
Description   : This page is the 3rd step in the 5-step application. User will 
                be able to go to the Step 1 and 2 using the drop-down menu. 
                The user needs to Submit to move to the next step/farthest step 
                in the application.
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
    
    <!-- * Added CSS/Bootstrap enhancements for the User Interface to add 
           the look and feel to the fonts, Button and drop-down menu in *  
    -->    

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

    <!-- * Javascript and jQuery files embedded to display animations,
           smooth transitions and enhance display on multi-browser/
           multiple interface  *  
    -->
    
	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
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

    <!-- * Drop-down menu with Bootstrap classes controlling the access to 
           steps the User can visit*
         * Added code to allow the User to access all steps in between current 
           page and Last visited page in case where current step < Last step *
    -->
    
                                       <ul class="dropdown-menu">
                                            <!--
                                            <li><a href="step1.jsp">Step 1</a></li>
                                            <li><a href="step2.jsp">Step 2</a></li>
                                            <li><a href="step3.jsp">Step 3</a></li>
                                            <li><a href="step4.jsp" class="disabled">Step 4</a></li>
                                            <li><a href="step5.jsp" class="disabled">Step 5</a></li>
                                            -->
                                            <%
                                                String laststep = (String) session.getAttribute("laststep");
                                                if(laststep == null){
                                                    out.println("<li><a href=\"step1.jsp\" >Step 1</a></li>");
                                                    out.println("<li><a href=\"step2.jsp\" class=\"disabled\">Step 2</a></li>");
                                                    out.println("<li><a href=\"step3.jsp\" class=\"disabled\">Step 3</a></li>");
                                                    out.println("<li><a href=\"step4.jsp\" class=\"disabled\">Step 4</a></li>");
                                                    out.println("<li><a href=\"step5.jsp\" class=\"disabled\">Step 5</a></li>");
                                                } else{
                                                    int nLastStep = Integer.parseInt(laststep);
                                                    for(int i=0; i <= nLastStep; i++){
                                                        out.println("<li><a href=\"step" + (i+1)+ ".jsp\" >Step " + (i+1)+ "</a></li>");
                                                    }
                                                    for(int i=nLastStep+2; i < 6; i++){
                                                        out.println("<li><a href=\"step" + i+ ".jsp\" class=\"disabled\">Step " + i + "</a></li>");
                                                    }
                                                }
                                            %>
                                            <li><hr></li>
                                            <li><a href="index.jsp">Logout</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div><!-- /.navbar-collapse -->
		</div>

	</header>
	<!-- END #fh5co-header -->

    <!-- * The form with POST method keeps the track of the current step 
            and redirects to the next page. It uses POST to keep track of 
            the currentstep and GET is implemented in the form of response.Redirect()
            on the server-side to get the next step/farthest visited step *
    -->
    
<div class="customHr">.</div>
	<div class="container">
	<form name="submitForm" method="POST" action="submitStep.jsp">
            <center>
			<h1>Step 3</h1>
            <input type="hidden" name="currentstep" value="3"/>
            <input type="submit" value="Submit" class="btn" />
            </center>
	</form>
	</div>
    <!-- * A footer that marks the copyright of Bond Street * -->
    
	<footer id="fh5co-footer">
		<p><small>&copy; 2016. BOND STREET. All Rights Reserved. </small></p>
	</footer>


	</body>
</html>

