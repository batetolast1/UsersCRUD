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

@WebServlet(name = "UserAdd", value = "/user/add")
public class UserAdd extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserDao userDao = new UserDao();

        String email = request.getParameter("email");
        String userName = request.getParameter("username");
        String password = request.getParameter("password");

        User user = new User.Builder(0)
                .withEmail(email)
                .withUserName(userName)
                .withPassword(password)
                .build();

        // @todo add data validation, add popup with result info
        user = userDao.create(user);

        HttpSession httpSession = request.getSession();

        if (user != null) {
            httpSession.setAttribute("add", "success");
            response.sendRedirect(request.getContextPath() + "/user/list");
        } else {
            httpSession.setAttribute("add", "fail");
            response.sendRedirect(request.getContextPath() + "/user/add");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/WEB-INF/jsp/user/add.jsp").forward(request, response);
    }
}
