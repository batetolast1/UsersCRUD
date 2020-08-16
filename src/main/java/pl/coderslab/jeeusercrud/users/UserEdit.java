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

@WebServlet(name = "UserEdit", value = "/user/edit")
public class UserEdit extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        int parsedId = Integer.parseInt(id);
        String email = request.getParameter("email");
        String userName = request.getParameter("username");
        String password = request.getParameter("password");

        if (!ServletUtil.isUserDataValid(userName, email, password, request, response, "edit?id=" + id)) {
            return;
        }

        UserDao userDao = new UserDao();
        User user = new User.Builder()
                .id(parsedId)
                .email(email)
                .userName(userName)
                .password(password)
                .build();
        int updateCount = userDao.update(user);

        HttpSession session = request.getSession();
        if (updateCount > 0) {
            session.setAttribute("alert", new Alert("success", "User data updated!"));
            response.sendRedirect(request.getContextPath() + "/user/list");
        } else {
            session.setAttribute("alert", new Alert("danger", "User with email " + email + " already exists!"));
            response.sendRedirect(request.getContextPath() + "/user/edit?id=" + id);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ServletUtil.validateId(request, response, "edit");
    }
}
