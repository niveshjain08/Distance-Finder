<!DOCTYPE html>

<html>
    <head>
        <title>Distance Finder</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="css/header.css">
		<link rel="stylesheet" href="css/footer.css">
		<link rel="stylesheet" href="css/Home.css">
    </head>
    <body>
        <%@include file="header.jsp" %> 
		<div class="main">
			<div class="headline">
			
			<div class="headline-right">
				<img style="width: 100%;" src="img/img.png"/>
			</div>
			<div class="headline-left">
				<div class="h1">How tracking links work</div>
				<div class="h2">When a user clicks a tracking link, the user?s connection first 
				passes through a tracking service (such as Linkly). This logs information about the 
				click (such as the location, device, and time), and then redirects the user?s browser 
				to the final destination. </div>
				<div class="button" onclick="window.location.href='signup.jsp';">Start Up</div>
			</div>
			</div>
			
			
		
		<div class="feature">
			<div class="heading">
				Why Location Finder
			</div>
			<div class="Description">
				When a click was made
				<br>The IP address, which can be traced to reveal where a click was made, and if that user has clicked before. Services like Linkly anonymize this data to comply GDPR.
				<br>The type of device - for example, an Android mobile device or a laptop running WIndows.
				<br>Where the user was redirected after.
			</div>
			</div>
		</div>
        <%@include file="footer.jsp" %> 
    </body>
</html>
