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

@WebServlet(name = "UserDelete", value = "/user/delete")
public class UserDelete extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserDao userDao = new UserDao();

        String id = request.getParameter("id");
        int parsedId = Integer.parseInt(id);

        // @todo add id validation

        int deleteCount = userDao.delete(parsedId);

        HttpSession session = request.getSession();

        if (deleteCount > 0) {
            session.setAttribute("delete", "success");
            response.sendRedirect(request.getContextPath() + "/user/list");
        } else {
            session.setAttribute("delete", "fail");
            response.sendRedirect(request.getContextPath() + "/user/delete?id=" + id);
        }
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
