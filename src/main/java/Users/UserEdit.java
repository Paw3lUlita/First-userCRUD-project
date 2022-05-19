package Users;

import DAO.UserDao;
import Entity.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UserEdit", value = "/user/edit")
public class UserEdit extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       Integer id = Integer.valueOf(request.getParameter("id"));
        UserDao userDao = new UserDao();
        User user = userDao.read(id);
        request.setAttribute("user", user);
        getServletContext().getRequestDispatcher("/users/edit.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String userName = request.getParameter("userName");
        String email = request.getParameter("email");
        int id = Integer.valueOf(request.getParameter("id"));
        UserDao userDao = new UserDao();
        User user = new User(userName, email, request
                .getParameter("password"));
        user.setId(id);
        userDao.update(user);
        response.sendRedirect("/user/list");
    }
}
