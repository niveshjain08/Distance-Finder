
package Controller;

import Connection.MyCon;
import Model.Accept;
import Model.Request;
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
            s = rs.getString("Hash");
            
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
     
     public boolean addrequest(Request r) throws SQLException, IOException {
        String sql;
        Connection con = null;
        PreparedStatement ps = null;
        con = MyCon.getConnection();
        sql = "Insert into request values(?,  ?, ?, ? ,?, ?)";
        ps = con.prepareStatement(sql);
        ps.setString(1, r.getHash());
        ps.setInt(2, r.getRequestid());
        ps.setString(3, r.getSomeone());
        ps.setString(4, r.getDt());
        ps.setString(5, r.getPreHash());
        ps.setInt(6, r.getUserid());
        int n = ps.executeUpdate();
        con.close();
        if (n > 0) {
            return true;
        } else {
            return false;
        }
    }
     
     public User getUserByID(int UserID) throws SQLException {
        Connection con = null;
        ResultSet rs = null;
        PreparedStatement ps = null;
        con = MyCon.getConnection();
        String sql;
        sql = "select * from login where UserId = ?";
        ps = con.prepareStatement(sql);
        ps.setInt(1, UserID);
        rs = ps.executeQuery();
        User u = new User();
        if (rs.next()) {
            u.setUserId(rs.getInt("UserID"));
            u.setEmail(rs.getString("Email"));
            u.setHash(rs.getString("hash"));
            u.setPassword(rs.getString("Password"));
            u.setPreHash(rs.getString("preHash"));
            con.close();
            return u;
        }
        return null;

    }
      public int getNextRequestID() throws SQLException {
        String sql;
        int n = 20000;
        Connection con = null;
        PreparedStatement ps = null;
        con = MyCon.getConnection();
        sql = "Select max(requestID) from request";
        ps = con.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            if (rs.getInt("max(requestID)") != 0) {
                n = rs.getInt("max(requestID)") + 1;
            }
        }
        con.close();
        return n;
    }
      public String  getPreHashRequest() throws SQLException {
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
            s = rs.getString("preHash");
            
        }
        con.close();
        return s;
    }
      
      public Request getRequestByID(int RequestID) throws SQLException {
        Connection con = null;
        ResultSet rs = null;
        PreparedStatement ps = null;
        con = MyCon.getConnection();
        String sql;
        sql = "select * from request where requestId = ?";
        ps = con.prepareStatement(sql);
        ps.setInt(1, RequestID);
        rs = ps.executeQuery();
        Request r = new Request();
        if (rs.next()) {
            r.setRequestid(rs.getInt("requestid"));
            r.setDt(rs.getString("dt"));
            r.setHash(rs.getString("hash"));
            r.setSomeone(rs.getString("someone"));
            r.setUserid(rs.getInt("userid"));
            r.setPreHash(rs.getString("preHash"));
            con.close();
            return r;
        }
        return null;

    }
      
      
      public String  getPreHashAccept() throws SQLException {
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
            s = rs.getString("Hash");
            
        }
        con.close();
        return s;
    }
      
      public Request getRequestByHash(int Hash) throws SQLException {
        Connection con = null;
        ResultSet rs = null;
        PreparedStatement ps = null;
        con = MyCon.getConnection();
        String sql;
        sql = "select * from request where hash = ?";
        ps = con.prepareStatement(sql);
        ps.setInt(1, Hash);
        rs = ps.executeQuery();
        Request r = new Request();
        if (rs.next()) {
            r.setRequestid(rs.getInt("requestid"));
            r.setDt(rs.getString("dt"));
            r.setHash(rs.getString("hash"));
            r.setSomeone(rs.getString("someone"));
            r.setUserid(rs.getInt("userid"));
            r.setPreHash(rs.getString("preHash"));
            con.close();
            return r;
        }
        return null;

    }
      public boolean addaccept(Accept a) throws SQLException, IOException {
        String sql;
        Connection con = null;
        PreparedStatement ps = null;
        con = MyCon.getConnection();
        sql = "Insert into accept values(?,  ?, ?, ? ,?, ?)";
        ps = con.prepareStatement(sql);
        ps.setString(1, a.getHash());
        ps.setInt(2, a.getRequestid());
        ps.setString(3, a.getIp());
        ps.setString(4, a.getDt());
        ps.setString(5, a.getPreHash());
        int n = ps.executeUpdate();
        con.close();
        if (n > 0) {
            return true;
        } else {
            return false;
        }
    }
}
