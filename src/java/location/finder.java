package location;

import com.maxmind.db.CHMCache;
import com.maxmind.geoip2.DatabaseReader;
import com.maxmind.geoip2.exception.GeoIp2Exception;
import com.maxmind.geoip2.model.CityResponse;
import com.maxmind.geoip2.record.City;
import com.maxmind.geoip2.record.Country;
import com.maxmind.geoip2.record.Location;
import com.maxmind.geoip2.record.Postal;
import com.maxmind.geoip2.record.Subdivision;
import java.io.File;
import java.io.IOException;
import java.net.InetAddress;

public class finder {

   public static double distance_Between_LatLong(double lat1, double lon1, double lat2, double lon2) {

lat1 = Math.toRadians(lat1);

lon1 = Math.toRadians(lon1);

lat2 = Math.toRadians(lat2);

lon2 = Math.toRadians(lon2);

double earthRadius = 6371.01; //Kilometers

return earthRadius * Math.acos(Math.sin(lat1)*Math.sin(lat2) + Math.cos(lat1)*Math.cos(lat2)*Math.cos(lon1 - lon2));

}
}
