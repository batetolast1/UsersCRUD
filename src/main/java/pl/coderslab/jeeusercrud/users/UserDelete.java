package pl.coderslab.jeeusercrud.users;

import pl.coderslab.jeeusercrud.dao.UserDao;
import pl.coderslab.jeeusercrud.entity.Alert;
import pl.coderslab.jeeusercrud.utils.ServletUtil;

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
        String id = request.getParameter("id");
        int parsedId = Integer.parseInt(id);

        UserDao userDao = new UserDao();
        int deleteCount = userDao.delete(parsedId);

        HttpSession session = request.getSession();
        if (deleteCount > 0) {
            session.setAttribute("alert", new Alert("success", "User was successfully deleted!"));
            response.sendRedirect(request.getContextPath() + "/user/list");
        } else {
            session.setAttribute("alert", new Alert("danger", "User was not deleted!"));
            response.sendRedirect(request.getContextPath() + "/user/delete?id=" + id);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ServletUtil.validateId(request, response, "delete");
    }
}
