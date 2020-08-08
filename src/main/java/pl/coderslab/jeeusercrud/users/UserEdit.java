package pl.coderslab.jeeusercrud.users;

import pl.coderslab.jeeusercrud.dao.UserDao;
import pl.coderslab.jeeusercrud.entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UserEdit", value = "/user/edit")
public class UserEdit extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserDao userDao = new UserDao();

        String email = request.getParameter("email");
        String userName = request.getParameter("username");
        String password = request.getParameter("password");

        User user = userDao.readByEmail(email);

        user.setEmail(email);
        user.setUserName(userName);
        user.setPassword(password);

        userDao.update(user);

        response.sendRedirect(request.getContextPath() + "/user/list");
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
