
package Connection;
import java.sql.*;
public class MyCon 
{
    static Connection con=null;
    static
    {
        try 
        {
               Class.forName("com.mysql.cj.jdbc.Driver");
//           Class.forName("com.mysql.jdbc.Driver");
 //            System.out.println("Driver load...........");
        } 
        catch (Exception e) 
        {
            System.out.println(e);
        }  
    }
    
    public static Connection getConnection()
    {
        try {
           con=DriverManager.getConnection("jdbc:mysql://ugpfpswt74vgjnsm:dqW7XWHE8NSIRpmqD7UI@bzk5b5qcuoehmpuzbify-mysql.services.clever-cloud.com:3306/bzk5b5qcuoehmpuzbify", "ugpfpswt74vgjnsm", "dqW7XWHE8NSIRpmqD7UI");
          } 
        catch (SQLException e) 
        {
            System.out.println(e);
        } 
        return con;
    }
}
