package pl.coderslab.jeeusercrud.users;

import pl.coderslab.jeeusercrud.dao.UserDao;
import pl.coderslab.jeeusercrud.entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UserDelete", value = "/user/delete")
public class UserDelete extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserDao userDao = new UserDao();

        String id = request.getParameter("id");
        int parsedId = Integer.parseInt(id);

        // @todo add id validation, add popup with result info

        userDao.delete(parsedId);

        response.sendRedirect(request.getContextPath() + "/user/list");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserDao userDao = new UserDao();

        String id = request.getParameter("id");
        int parsedId = Integer.parseInt(id);

        User user = userDao.read(parsedId);

        request.setAttribute("user", user);

        getServletContext().getRequestDispatcher("/WEB-INF/jsp/user/delete.jsp").forward(request, response);
    }
}
