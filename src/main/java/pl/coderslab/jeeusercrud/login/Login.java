package pl.coderslab.jeeusercrud.login;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import pl.coderslab.jeeusercrud.dao.AdminDao;
import pl.coderslab.jeeusercrud.entity.Admin;
import pl.coderslab.jeeusercrud.entity.Alert;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "Login", value = {"", "/login"})
public class Login extends HttpServlet {

    private static final Logger LOGGER = LogManager.getLogger(Login.class);

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        AdminDao adminDao = new AdminDao();
        Admin admin = adminDao.read(email);

        HttpSession session = request.getSession();
        if (admin == null) {
            LOGGER.warn("Login attempt for admin {} failed", email);
            session.setAttribute("alert", new Alert("danger", "Email didn't match, try again!!"));
            response.sendRedirect(request.getContextPath() + "login");
        } else if (!admin.checkPasswordMatch(password)) {
            LOGGER.warn("Login attempt for admin {} failed, password didn't match", email);
            session.setAttribute("alert", new Alert("danger", "Password didn't match, try again!"));
            response.sendRedirect(request.getContextPath() + "login");
        } else {
            LOGGER.info("Login attempt for admin {} successful", email);
            session.setAttribute("login", "true");
            session.setAttribute("adminEmail", email);
            session.setAttribute("alert", new Alert("success", "Login successful!"));
            response.sendRedirect(request.getContextPath() + "/user/list");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(request, response);
    }
}
