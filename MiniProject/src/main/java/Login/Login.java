package Login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Login")
public class Login extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uname = request.getParameter("uname");
        String password = request.getParameter("password");

        LoginDao lDao = new LoginDao();
        boolean isAuthenticated = lDao.authenticate(uname, password);
        
        if(isAuthenticated) {
            response.sendRedirect("TutorialsPage.jsp"); // Redirect to the dashboard page upon successful login
        } else {
            response.sendRedirect("LoginPage.jsp?error=1"); // Redirect back to the login page with an error parameter
        }
    }
}
