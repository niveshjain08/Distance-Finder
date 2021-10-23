
package Controller;

import Connection.MyCon;
import Model.User;
import java.io.IOException;
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
    public boolean addUser(User u) throws SQLException, IOException {
        String sql;
        Connection con = null;
        PreparedStatement ps = null;
        con = MyCon.getConnection();
        sql = "Insert into login values(?,  ?, ?, ? ,?)";
        ps = con.prepareStatement(sql);
        ps.setInt(1, u.getUserId());
        ps.setString(2, u.getHash());
        ps.setString(3, u.getEmail());
        ps.setString(4, u.getPassword());
        ps.setString(5, u.getPreHash());
        int n = ps.executeUpdate();
        con.close();
        if (n > 0) {
            return true;
        } else {
            return false;
        }
    }
    public int getNextUserID() throws SQLException {
        String sql;
        int n = 10000;
        Connection con = null;
        PreparedStatement ps = null;
        con = MyCon.getConnection();
        sql = "Select max(UserID) from login";
        ps = con.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            if (rs.getInt("max(UserID)") != 0) {
                n = rs.getInt("max(UserID)") + 1;
            }
        }
        con.close();
        return n;
    }
    
     public String  getPreHashUser() throws SQLException {
        String sql;
        int n = 10000;
        Connection con = null;
        PreparedStatement ps = null;
        con = MyCon.getConnection();
        sql = "Select * from login";
        ps = con.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        String s = "0";
        while(rs.next()) {
            s = rs.getString("max(preHash)");
            
        }
        con.close();
        return s;
    }
     
     public int isCorrectLogin(String Email, String Password) throws SQLException {
        Connection con = null;
        ResultSet rs = null;
        PreparedStatement ps = null;
        con = MyCon.getConnection();
        String sql;
        sql = "select * from login where Email = ? AND Password = ?";
        ps = con.prepareStatement(sql);
        ps.setString(1, Email);
        ps.setString(2, Password);
        rs = ps.executeQuery();
        if (rs.next()) {
            if (rs.getString("Email").equalsIgnoreCase(Email) && rs.getString("Password").equals(Password)) {
                int r = rs.getInt("Userid");
        con.close();
        return r;
            }
        }
        con.close();
        return 0;
    }
}
