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
        <%
          String otp =   new Otp().generateOTP();
        String q = "<table width = 100% bgcolor= 'white' style='color:blue;'>"
                + "<tr><td><h2><center> <img width='100px' src='https://drive.google.com/uc?id=1WfsRZGQGcoaXYL0OITEfjXxFAYrQ5s0c'></center> <h2><td><tr>"
                + "<tr><td><h2><center > Distance Finder</center> <h2><td><tr>"
                + "<tr><td><center> Welcome </center> <td><tr>"
                + "<tr><td><h4><center> Your OTP is "+otp+"</center> <h4><td><tr></div>";
                session.setAttribute("OTP", otp);
               String mail = request.getParameter("Email");
               String password = request.getParameter("Password");
                       new SendMail().sendmail(mail, q);
        
        
        %>
        <%@include  file="header.jsp"%>
		<div class="main">
                    <form action="createaccount.jsp" method="post">
			<div class="login">
			<div class="lhead">Verification Your Account</div>
			<div class="lhead3">
			<div class="head4">We sended a verfication code on your Email.....</div>
			<div class="field">
			<div class="fieldhead">Verification Code</div>
			<div class="fieldinput">
                            <input name="Email" value="<%=mail%>">
                            <input name="Password" value="<%=password%>">
                            <input required placeholder="Verify Code" type="Password" name="otp"></input></div>
			</div>
			<input type="submit" class="button" value="Verify My Account"></input>
			</div>
			</div>
                        </form>
		</div>
		
        <%@include  file="footer.jsp"%>
    </body>
</html>
                <script src="js/index.js"></script>
