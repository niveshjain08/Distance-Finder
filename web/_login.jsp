<%@page import="Controller.DAO"%>
<%
    DAO d = new DAO();
    String email = request.getParameter("Email");
    String password = request.getParameter("Password");
    int n = d.isCorrectLogin(email, password);
    if(n > 0){
        session.setAttribute("UserID", n);
    response.sendRedirect("dashboard_makeyourlink.jsp");
    }else{
    response.sendRedirect("invalidlogin.jsp");
    }

%>