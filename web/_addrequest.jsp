<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Locale"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%@page import="Model.Request"%>
<%@page import="Controller.DAO"%>
<%
    String someone = request.getParameter("someone");
    DAO d = new DAO();
DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");  
   LocalDateTime now = LocalDateTime.now();     
    int RID = d.getNextRequestID();
//    out.print(someone);
//    out.print(now.toString());
//    out.print(d.getPreHashRequest());
//    out.print(RID);
//    out.print(session.getAttribute("UserID"));
    Request r = new Request(someone, now.toString(), d.getPreHashRequest(), RID, (int)session.getAttribute("UserID"));
    if(d.addrequest(r)){
        session.setAttribute("RID", RID);
        response.sendRedirect("dashboard_sharelink.jsp");
    }
    

%>