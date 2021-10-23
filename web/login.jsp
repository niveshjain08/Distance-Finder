<!DOCTYPE html>

<html>
    <head>
        <title>Distance Finder</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="css/header.css">
		<link rel="stylesheet" href="css/footer.css">
		<link rel="stylesheet" href="css/Home.css">
		<link rel="stylesheet" href="css/login.css">
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div class="main">
            <form method="post" action="_login.jsp"  >
			<div class="login">
			<div class="lhead">Login to your Account</div>
			<div class="lhead3">
			<div class="head4">With your credential....</div>
			<div class="field">
			<div class="fieldhead">Email</div>
			<div class="fieldinput">
				<input placeholder="Email" required id="email" type="email" name="Email"></input></div>
			</div>
			<div class="field">
			<div class="fieldhead">Password*</div>
			<div class="fieldinput">
				<input placeholder="Enter Your Password" required type="Password" name="Password"  id="Password"></input></div>
			</div>
			<input type="submit"  class="button" value="Login"></div>
			</div>
                            </form>
			</div>
		
		        <%@include file="footer.jsp" %>

    </body>
</html>
                <script src="js/index.js"></script>
