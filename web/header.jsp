<%@page import="Controller.DAO"%>
<%@page import="Model.User"%>
<%  
    int UserID = 0;
    if(session.getAttribute("UserID") != null){
        UserID = (int)session.getAttribute("UserID");
    }

%> <nav class="header">
			<div class="header-logo"><img src="img/logo.png"/></div>
			<%
                        if(UserID == 0){
                        %>
                        <div class="header-right">
				<div class="link"  onclick="window.location.href='login.jsp';">Login</div>
                                <div class="link" onclick="window.location.href='signup.jsp';">Sign Up</div>
			</div>
                        <%
                        }else{
                                DAO d = new DAO();
                                User u = d.getUserByID(UserID);

                        %>
                        <div class="header-right">
				<div class="link" ><%=u.getEmail()%></div>
			</div>
                        <%
                        }
                        %>
		</nav>