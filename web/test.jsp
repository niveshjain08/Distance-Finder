

<%@page import="com.maxmind.geoip.Location"%>
<%@page import="com.maxmind.geoip.LookupService"%>
<%@page import="com.maxmind.db.CHMCache"%>
<%@page import="com.maxmind.geoip2.record.Postal"%>
<%@page import="com.maxmind.geoip2.record.City"%>
<%@page import="com.maxmind.geoip2.record.Subdivision"%>
<%@page import="com.maxmind.geoip2.record.Country"%>
<%@page import="com.maxmind.geoip2.model.CityResponse"%>
<%@page import="com.maxmind.geoip2.DatabaseReader"%>
<%@page import="java.net.InetAddress"%>
<%@page import="java.io.File"%>
<%
File database = new File(application.getRealPath("/")+"GeoLite2-City.mmdb");
DatabaseReader reader = new DatabaseReader.Builder(database).build();
InetAddress ipAddress = InetAddress.getByName("49.35.229.163");
CityResponse res = reader.city(ipAddress);
Country country = res.getCountry();
Subdivision subdivision = res.getMostSpecificSubdivision();
City city = res.getCity();
Postal postal = res.getPostal();
com.maxmind.geoip2.record.Location location = res.getLocation();
out.println(location.getLatitude());  // 44.9733
out.println(location.getLongitude()); // -93.2323
//    LookupService lookupService = new LookupService(application.getRealPath("/")+"GeoLite2-City.mmdb");
//    Location locationGoogle = lookupService.getLocation("44.249.157.34.28.139");
//    Location locationMicrosoft = lookupService.getLocation("49.35.229.163");
//    out.println("me is located on: " + locationGoogle.city);
//   out.println("kartik is located on: " + locationMicrosoft.city);
//   out.print("Distance: " + locationGoogle.distance(locationMicrosoft) + " kilometers");
%>