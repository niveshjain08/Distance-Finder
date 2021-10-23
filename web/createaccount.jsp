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
                            <%
                                DAO d = new DAO();
    String otp = (String)session.getAttribute("OTP");
    String input = request.getParameter("otp");
if(otp.equals(input) ){
    

    User u = new User(d.getNextUserID(), request.getParameter("Email"), request.getParameter("Password"), d.getPreHashUser());
    

    if(d.addUser(u)){

%>
			<div class="lhead">Your Account is created.....Go to Login Section for access your account.</div>
<%
}else{
%>
			<div class="lhead">Due to Invalid OTP and Credential. We are unable create your account please try again....</div>
<%
}
}else{
%>
			<div class="lhead">Due to Invalid OTP and Credential. We are unable create your account please try again....</div>
<%
}

%>	
                </div>
                        </form>
		</div>
		
        <%@include  file="footer.jsp"%>
    </body>
</html>
                <script src="js/index.js"></script>
