package Users;

import DAO.UserDao;
import Entity.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UserAdd", value = "/user/add")
public class UserAdd extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   response.sendRedirect("/users/add.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String userName = request.getParameter("userName");
   String email = request.getParameter("email");
        UserDao userDao = new UserDao();
        userDao.create(new User(userName, email, request.getParameter("password")));
        response.sendRedirect("/user/list");
    }
}
