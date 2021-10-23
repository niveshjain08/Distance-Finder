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
		<link rel="stylesheet" href="css/dashboard.css">
    </head>
    <body>
        <%@include file="header.jsp"%>
		<div class="main">
			<div class="dashboard">
				<div class="panel">
					<div class="panellink active">Find Distance</div>
					<div class="panellink">Distance Tracker</div>
					<div class="panellink"></div>
					<div class="panellink">Logout</div>
				</div>
				<div class="content">
					<div class="cheader">Find Distance</div>
					<div class="csubheader">- start your link for get location distance....</div>
					<div class="coption">
						<div class="lhead">Create your Request....</div>
						<div class="lhead3">
						<div class="head4">Know someone distance with you...</div>
						<div class="field">
						<div class="fieldhead">Someone Name</div>
                                                    <form action="_addrequest.jsp" method="post">
						<div class="fieldinput fieldinput1">
                                                        <input required placeholder="Enter Someone's Name" name="someone" type="text"></input>
						<input type="submit" class="button" value="Get Link">
						</div>
                                                </form>
                                                </div>
                                                
						</div>
					</div>
				</div>
			</div>
		</div>
        <%@include file="footer.jsp"%>
    </body>
</html>
