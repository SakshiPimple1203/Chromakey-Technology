package feedback;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class FeedbackDAO {
    private String dburl = "jdbc:mysql://localhost:3306/feedback_bd";
    private String dbuname = "root";
    private String dbPassword = "Sakship#12";
    private String dbDriver = "com.mysql.cj.jdbc.Driver";

    public Connection getConnection() {
        Connection con = null;
        try {
            Class.forName(dbDriver);
            con = DriverManager.getConnection(dburl, dbuname, dbPassword);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            System.out.println("Failed to load database driver.");
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("Failed to establish database connection.");
        }
        return con;
    }

    public String insert(Feedbacks feedback) {
        String result = "Feedback successfully";
        try (Connection con = getConnection()) {
            if (con != null) {
                String sql = "INSERT INTO feedbacks (full_name, email, message) VALUES (?, ?, ?)";
                try (PreparedStatement ps = con.prepareStatement(sql)) {
                    ps.setString(1, feedback.getfull_name());
                    ps.setString(2, feedback.getEmail());
                    ps.setString(3, feedback.getmessage());
                    int rowsAffected = ps.executeUpdate();
                    if (rowsAffected == 0) {
                        result = "Data not entered: No rows affected.";
                    }
                }
            } else {
                result = "Failed to establish database connection.";
            }
        } catch (SQLException e) {
            e.printStackTrace();
            result = "Data not entered: " + e.getMessage();
        }
        return result;
    }
}
