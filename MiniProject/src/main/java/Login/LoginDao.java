package Login;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDao {
    private String dburl = "jdbc:mysql://localhost:3306/userdb";
    private String dbuname = "root";
    private String dbPassword = "Sakship#12";
    private String dbDriver = "com.mysql.cj.jdbc.Driver";

    public void loadDriver(String dbDriver) {
        try {
            Class.forName(dbDriver);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
    
    public Connection getConnection() {
        Connection con = null;
        try {
            con = DriverManager.getConnection(dburl, dbuname, dbPassword);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return con;
    }

    public boolean authenticate(String uname, String password) {
        loadDriver(dbDriver);
        try (Connection con = getConnection();
             PreparedStatement ps = con.prepareStatement("SELECT * FROM member WHERE uname = ? AND password = ?")) {
            ps.setString(1, uname);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            return rs.next(); // If any row is returned, authentication succeeds
        } catch (SQLException e) {
            e.printStackTrace();
            return false; // Return false if any exception occurs during database operations
        }
    }
}