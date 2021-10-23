

<%@page import="com.maxmind.db.CHMCache"%>
<%@page import="com.maxmind.geoip2.record.Location"%>
<%@page import="com.maxmind.geoip2.record.Postal"%>
<%@page import="com.maxmind.geoip2.record.City"%>
<%@page import="com.maxmind.geoip2.record.Subdivision"%>
<%@page import="com.maxmind.geoip2.record.Country"%>
<%@page import="com.maxmind.geoip2.model.CityResponse"%>
<%@page import="com.maxmind.geoip2.DatabaseReader"%>
<%@page import="java.net.InetAddress"%>
<%@page import="java.io.File"%>
<%
    // A File object pointing to your GeoIP2 or GeoLite2 database
//File database = new File("css/gj.mndb");
//
//// This creates the DatabaseReader object. To improve performance, reuse
//// the object across lookups. The object is thread-safe.
//DatabaseReader reader = new DatabaseReader.Builder(database).withCache(new CHMCache()).build();
//
//InetAddress ipAddress = InetAddress.getByName("128.101.101.101");
//
//// Replace "city" with the appropriate method for your database, e.g.,
//// "country".
//CityResponse res = reader.city(ipAddress);
//
//Country country = res.getCountry();
//System.out.println(country.getIsoCode());            // 'US'
//System.out.println(country.getName());               // 'United States'
//System.out.println(country.getNames().get("zh-CN")); // '??'
//
//Subdivision subdivision = res.getMostSpecificSubdivision();
//System.out.println(subdivision.getName());    // 'Minnesota'
//System.out.println(subdivision.getIsoCode()); // 'MN'
//
//City city = res.getCity();
//System.out.println(city.getName()); // 'Minneapolis'
//
//Postal postal = res.getPostal();
//System.out.println(postal.getCode()); // '55455'
//
//Location location = res.getLocation();
//System.out.println(location.getLatitude());  // 44.9733
//System.out.println(location.getLongitude()); // -93.2323
//    LookupService lookupService = new LookupService("C:\\GeoLiteCity.dat");
//    Location locationGoogle = lookupService.getLocation("44.249.157.34.28.139");
//    Location locationMicrosoft = lookupService.getLocation("49.35.229.163");
//    out.println("me is located on: " + locationGoogle.city);
//   out.println("kartik is located on: " + locationMicrosoft.city);
//   out.print("Distance: " + locationGoogle.distance(locationMicrosoft) + " kilometers");
%>