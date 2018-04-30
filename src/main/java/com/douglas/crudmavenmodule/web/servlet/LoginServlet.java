package com.douglas.crudmavenmodule.web.servlet;


import com.douglas.crudmavenmodule.domain.DAO.UsuarioDAO;
import com.douglas.crudmavenmodule.domain.model.UserBean;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})

public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String userName = request.getParameter("username");
        String password = request.getParameter("password");

        UserBean userBean = new UserBean();
        userBean.setUserName(userName);
        userBean.setPassword(password);

        UsuarioDAO loginDAO = new UsuarioDAO();

        String userValidade = loginDAO.authenticateUser(userBean);

        if (userValidade.equals("SUCESS")) {
            request.setAttribute("userName", userName);
            request.getRequestDispatcher("/Private/Home.jsp").forward(request, response);
        } else {
            request.setAttribute("errMessage", userValidade);
            request.getRequestDispatcher("/Login.jsp").forward(request, response);
        }
    }

}
