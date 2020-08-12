package pl.coderslab.jeeusercrud.users;

import pl.coderslab.jeeusercrud.dao.UserDao;
import pl.coderslab.jeeusercrud.entity.User;

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
        UserDao userDao = new UserDao();

        String id = request.getParameter("id");
        int parsedId = Integer.parseInt(id);
        String email = request.getParameter("email");
        String userName = request.getParameter("username");
        String password = request.getParameter("password");

        // @todo add data validation, add popup with result info

        User user = new User.Builder(parsedId)
                .withEmail(email)
                .withUserName(userName)
                .withPassword(password)
                .build();

        int updateCount = userDao.update(user);

        HttpSession session = request.getSession();

        if (updateCount > 0) {
            session.setAttribute("edit", "success");
            response.sendRedirect(request.getContextPath() + "/user/list");
        } else {
            session.setAttribute("edit", "fail");
            response.sendRedirect(request.getContextPath() + "/user/edit?id=" + id);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserDao userDao = new UserDao();

        String id = request.getParameter("id");
        int parsedId = Integer.parseInt(id);

        User user = userDao.read(parsedId);

        request.setAttribute("user", user);

        getServletContext().getRequestDispatcher("/WEB-INF/jsp/user/edit.jsp").forward(request, response);
    }
}
