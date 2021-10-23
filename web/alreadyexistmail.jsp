<%@page import="Model.User"%>
<%@page import="Controller.DAO"%>
<%@page import="OTP.Otp"%>
<%@page import="Mail.SendMail"%>
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
        
        <%@include  file="header.jsp"%>
		<div class="main">
                    <form action="createaccount.jsp" method="post">
			<div class="login">
                            
			<div class="lhead">The Given Mail is Already exist in over system.... Try to Login....</div>
<
                </div>
                        </form>
		</div>
		
        <%@include  file="footer.jsp"%>
    </body>
</html>
                <script src="js/index.js"></script>
