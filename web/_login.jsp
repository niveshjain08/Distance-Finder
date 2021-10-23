<%@page import="Controller.DAO"%>
<%
    DAO d = new DAO();
    String email = request.getParameter("Email");
    String password = request.getParameter("Password");
    if(d.isCorrectLogin(email, password) > 0){
    response.sendRedirect("dashboard_account.jsp");
    }else{
        response.sendRedirect("invalidlogin.jsp");
    }

%>