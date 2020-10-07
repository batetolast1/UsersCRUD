package pl.coderslab.jeeusercrud.utils;

import pl.coderslab.jeeusercrud.dao.UserDao;
import pl.coderslab.jeeusercrud.entity.Alert;
import pl.coderslab.jeeusercrud.entity.User;
import pl.coderslab.jeeusercrud.validation.EmailValidator;
import pl.coderslab.jeeusercrud.validation.PasswordValidator;
import pl.coderslab.jeeusercrud.validation.UserNameValidator;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

import static org.apache.logging.log4j.web.WebLoggerContextUtils.getServletContext;

public class ServletUtil {
    public static void validateId(HttpServletRequest request, HttpServletResponse response, String redirect) throws IOException, ServletException {
        String id = request.getParameter("id");

        HttpSession session = request.getSession();
        try {
            int parsedId = Integer.parseInt(id);
            UserDao userDao = new UserDao();
            User user = userDao.read(parsedId);
            if (user != null) {
                request.setAttribute("user", user);
                getServletContext().getRequestDispatcher("/WEB-INF/jsp/user/" + redirect + ".jsp").forward(request, response);
            } else {
                session.setAttribute("alert", new Alert("danger", "User ID not found!"));
                response.sendRedirect(request.getContextPath() + "/user/list");
            }
        } catch (NumberFormatException e) {
            session.setAttribute("alert", new Alert("danger", "Invalid user ID!"));
            response.sendRedirect(request.getContextPath() + "/user/list");
        }
    }

    public static boolean isUserDataValid(String userName, String email, String password, HttpServletRequest request, HttpServletResponse response, String redirect) throws IOException {
        HttpSession session = request.getSession();
        if (!UserNameValidator.validate(userName)) {
            session.setAttribute("alert", new Alert("danger", "Username must be 3-16 characters long with only letters, numbers, \"-\", \"_\" and \".\""));
            response.sendRedirect(request.getContextPath() + "/user/" + redirect);
            return false;
        } else if (!EmailValidator.validate(email)) {
            session.setAttribute("alert", new Alert("danger", "Email is invalid!"));
            response.sendRedirect(request.getContextPath() + "/user/" + redirect);
            return false;
        } else if (!PasswordValidator.validate(password)) {
            session.setAttribute("alert", new Alert("danger", "Password must be 8-20 characters long with at least one digit, one upper case letter, one lower case letter, one special symbol and no spaces"));
            response.sendRedirect(request.getContextPath() + "/user/" + redirect);
            return false;
        }
        return true;
    }
}
