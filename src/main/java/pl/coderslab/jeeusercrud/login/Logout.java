package pl.coderslab.jeeusercrud.login;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "Logout", value = "/user/logout")
public class Logout extends HttpServlet {

    private static final Logger logger = LogManager.getLogger(Logout.class);

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        logger.info("Login attempt for admin {} successful", session.getAttribute("adminEmail"));
        session.setAttribute("login", "logout");
        session.setAttribute("adminEmail", "");
        response.sendRedirect(request.getContextPath() + "/");
    }
}
