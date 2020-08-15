package pl.coderslab.jeeusercrud.login;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import pl.coderslab.jeeusercrud.dao.AdminDao;
import pl.coderslab.jeeusercrud.entity.Admin;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "Login", value = {"", "/login"})
public class Login extends HttpServlet {

    private static final Logger logger = LogManager.getLogger(Login.class);

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        AdminDao adminDao = new AdminDao();

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        Admin admin = adminDao.read(email);

        HttpSession session = request.getSession(false);

        if (admin == null) {
            logger.warn("Login attempt for admin {} failed", email);
            session.setAttribute("login", "fail");
            response.sendRedirect(request.getContextPath() + "login");
        } else if (!admin.checkPasswordMatch(password)){
            logger.warn("Login attempt for admin {} failed, password didn't match", email);
            session.setAttribute("login", "passwordMismatch");
            response.sendRedirect(request.getContextPath() + "login");
        } else{
            logger.info("Login attempt for admin {} successful", email);
            session.setAttribute("adminEmail", email);
            session.setAttribute("login", "success");
            response.sendRedirect(request.getContextPath() + "/user/list");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO add redirect after logging;
        getServletContext().getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(request, response);
    }
}
