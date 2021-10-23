
package Controller;

import Connection.MyCon;
import Model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DAO {
    public boolean isEmailValid(String Email) throws SQLException {
        Connection con = null;
        ResultSet rs = null;
        PreparedStatement ps = null;
        con = MyCon.getConnection();
        String sql;
        sql = "select * from login where Email= ? ";
        ps = con.prepareStatement(sql);
        ps.setString(1, Email);
        rs = ps.executeQuery();
        int i = 0;
        User u = null;
        if (rs.next()) {
            con.close();
            return true;
        } else {
            con.close();
            return false;

        }
    }
}
