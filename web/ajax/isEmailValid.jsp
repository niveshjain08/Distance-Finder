<%@page import="Controller.DAO"%>
<%
    String email = request.getParameter("Email");
    DAO d = new DAO();
    if(d.isEmailValid(email)){
    out.print("TRUE");
    }else{
    out.print("FALSE");
    }

%>