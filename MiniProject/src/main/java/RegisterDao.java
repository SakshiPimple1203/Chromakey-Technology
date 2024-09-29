import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class RegisterDao {
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
            con.setAutoCommit(false);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return con;
    }
    
    public String insert(Member member) {
    	loadDriver(dbDriver);
        Connection con = getConnection();
        String result = "Registration Done successfully";
        String sql = "INSERT INTO member (uname, password, emaill, phone) VALUES (?, ?, ?, ?)";
        try (PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, member.getUname());
            ps.setString(2, member.getPassword());
            ps.setString(3, member.getEmail());
            ps.setString(4, member.getPhone());
            int rowsAffected = ps.executeUpdate();
            if (rowsAffected == 0) {
                result = "Data not entered: No rows affected.";
            }
            con.commit();
        } catch (SQLException e) {
            e.printStackTrace();
            result = "Data not entered: " + e.getMessage();
            try {
                if (con != null) {
                    con.rollback();
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        } finally {
            try {
                if (con != null) {
                    con.setAutoCommit(true);
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return result;
    }
}