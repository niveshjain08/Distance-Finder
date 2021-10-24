<%@page import="location.finder"%>
<%@page import="com.maxmind.geoip2.record.Postal"%>
<%@page import="com.maxmind.geoip2.record.City"%>
<%@page import="com.maxmind.geoip2.record.Subdivision"%>
<%@page import="com.maxmind.geoip2.record.Country"%>
<%@page import="com.maxmind.geoip2.model.CityResponse"%>
<%@page import="java.net.InetAddress"%>
<%@page import="com.maxmind.geoip2.DatabaseReader"%>
<%@page import="java.io.File"%>
<%@page import="Model.Accept"%>
<%@page import="java.util.List"%>
<%@page import="Model.Request"%>
<!DOCTYPE html>

<html>
    <head>
        <title>Distance Finder</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="css/header.css">
		<link rel="stylesheet" href="css/footer.css">
		<link rel="stylesheet" href="css/Home.css">
		<link rel="stylesheet" href="css/Login.css">
		<link rel="stylesheet" href="css/dashboard.css">
    </head>
    <body>
        <%@include file="header.jsp" %>
		<div class="main">
			<div class="dashboard">
				<div class="panel">
					<div class="panellink"  onclick="window.location.href='dashboard_makeyourlink.jsp'">Find Distance</div>
					<div class="panellink active"   onclick="window.location.href='dashboard_distancetraker.jsp'">Distance Finder</div>
					<div class="panellink"></div>
					<div class="panellink" onclick="window.location.href='logout.jsp'">Logout</div>
				</div>
				<div class="content">
					<div class="cheader">Distance Finder</div>
					<div class="csubheader">- find distance from your lovedone's</div>
					<div class="coption">
						<div class="lhead3">
							<div class="table">
								<div class="tr">
									<div class="th">#</div>
									<div class="th">Name</div>
									<div class="th">Status</div>
									<div class="th">Date</div>
									<div class="th">IP Address</div>
									<div class="th">Distance </div>
									<div class="th">Cordinates</div>
								</div>
                                                            <%
                                                            
                                                            DAO d = new DAO();
                                                            List<Request> ls = d.getAllUserByType(UserID);
                                                            int i = 0;
                                                            for(Request l : ls){
                                                               Accept a = d.getAcceptByRequestID(l.getRequestid());
                                                               
                                                            %>
								<div class="tr">
									<div class="td"><%=++i%></div>
									<div class="td"><%=l.getSomeone()%></div>
                                                                        <%
                                                                        if(a==null){
                                                                        %>
									<div class="td">Not Accepted Yet...</div>
									<div class="td">-</div>
									<div class="td">-</div>
									<div class="td">-</div>
									<div class="td">-</div>
									<div class="td">-</div>
                                                                        <%
                                                                        }else{

File database = new File(application.getRealPath("/")+"GeoLite2-City.mmdb");
DatabaseReader reader = new DatabaseReader.Builder(database).build();
InetAddress ipAddress = InetAddress.getByName(a.getIp());
CityResponse res = reader.city(ipAddress);
Country country = res.getCountry();
Subdivision subdivision = res.getMostSpecificSubdivision();
City city = res.getCity();
Postal postal = res.getPostal();
com.maxmind.geoip2.record.Location location = res.getLocation();
   InetAddress my_localhost = InetAddress.getLocalHost();
    String myip = (my_localhost.getHostAddress()).trim();
InetAddress ipAddress1 = InetAddress.getByName(myip);
CityResponse res1 = reader.city(ipAddress);
Country country1 = res1.getCountry();
Subdivision subdivision1 = res1.getMostSpecificSubdivision();
City city1 = res1.getCity();
Postal postal1 = res1.getPostal();
com.maxmind.geoip2.record.Location location1 = res1.getLocation();

double dis = finder.distance_Between_LatLong(location.getLatitude(), location.getLongitude(),location1.getLatitude(), location1.getLongitude());
                                                                        %>
									<div class="td">Accepted</div>
									<div class="td"><%=a.getDt()%></div>
									<div class="td"><%=a.getIp()%></div>
									<div class="td"><%=dis%> KM </div>
									<div class="td"><%=location.getLatitude()%>,<%=location.getLongitude()%></div>
                                                                        <%
                                                                        
                                                                        }
                                                                        
                                                                        %>
								</div>
                                                               <%
                                                               }
                                                               %>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
                <%@include file="footer.jsp" %>
		
    </body>
</html>
