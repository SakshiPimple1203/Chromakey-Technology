import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Register")
public class Register extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public Register() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uname = request.getParameter("uname");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");

        Member member = new Member(uname,password,email,phone);
        RegisterDao rDao = new RegisterDao();
        String result = rDao.insert(member);
        
        if(result.equals("Registration Done successfully")) {
            response.sendRedirect("LoginPage.jsp"); // Replace "home.jsp" with the actual URL of your home page
        } else {
            response.getWriter().print(result);
        }
    }
}
