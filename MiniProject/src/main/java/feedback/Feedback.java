package feedback;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Feedback")
public class Feedback extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public Feedback() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String full_name = request.getParameter("full_name");
        String email = request.getParameter("email");
        String message = request.getParameter("message");

        Feedbacks feedback = new Feedbacks(full_name, email, message);
        FeedbackDAO fDao = new FeedbackDAO();
        String result = fDao.insert(feedback);
        if (result.equals("Feedback successfully")) {
            response.sendRedirect("feedbackmessage.jsp");
        } else {
            response.getWriter().print(result);
        }
    }
}
