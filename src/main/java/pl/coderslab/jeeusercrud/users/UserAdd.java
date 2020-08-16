package pl.coderslab.jeeusercrud.users;

import pl.coderslab.jeeusercrud.dao.UserDao;
import pl.coderslab.jeeusercrud.entity.Alert;
import pl.coderslab.jeeusercrud.entity.User;
import pl.coderslab.jeeusercrud.utils.ServletUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "UserAdd", value = "/user/add")
public class UserAdd extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String userName = request.getParameter("username");
        String password = request.getParameter("password");

        if (!ServletUtil.isUserDataValid(userName, email, password, request, response, "add")) {
            return;
        }

        UserDao userDao = new UserDao();
        User user = new User.Builder()
                .id(0)
                .email(email)
                .userName(userName)
                .password(password)
                .build();
        user = userDao.create(user);

        HttpSession session = request.getSession();
        if (user != null) {
            session.setAttribute("alert", new Alert("success", "New user added to database!"));
            response.sendRedirect(request.getContextPath() + "/user/list");
        } else {
            session.setAttribute("alert", new Alert("danger", "User with email " + email + " already exists!"));
            response.sendRedirect(request.getContextPath() + "/user/add");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/WEB-INF/jsp/user/add.jsp").forward(request, response);
    }
}
