<%@page import="Model.Accept"%>
<%@page import="Model.Request"%>
<%@page import="Controller.DAO"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.net.URL"%>
<%@page import="java.net.InetAddress"%>
<%

   InetAddress my_localhost = InetAddress.getLocalHost();
      out.println("The IP Address of client is : " + (my_localhost.getHostAddress()).trim());
      String my_system_address = "";
      try{
         URL my_url = new URL("http://bot.whatismyipaddress.com");
         BufferedReader my_br = new BufferedReader(new
         InputStreamReader(my_url.openStream()));
         my_system_address = my_br.readLine().trim();
      }
      catch (Exception e){
         my_system_address = "0.0.0.0";
      }
      out.print(my_system_address);
      String hash = request.getParameter("u");
      DAO d = new DAO();
      Request r = d.getRequestByHash(Integer.parseInt(hash));
      Accept a = new Accept(my_system_address, d.getPreHashAccept(), dt, requestid)
    
%>