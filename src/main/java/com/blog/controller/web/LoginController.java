package com.blog.controller.web;

import com.blog.constant.SystemConstant;
import com.blog.model.UserModel;
import com.blog.service.IUserService;
import com.blog.util.SessionUtil;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(urlPatterns = {"/login"})
public class LoginController extends HttpServlet {

    @Inject
    private IUserService userService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher rd = req.getRequestDispatcher("/view/login.jsp");
        rd.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        UserModel userModel = userService.findByUsernameAndPasswordAndStatus(username, password, 1);

        if (userModel != null) {
            SessionUtil.getInstance().setValue(req, "USERMODEL", userModel);
            if (userModel.getRoleId() == 1) {
                resp.sendRedirect(req.getContextPath() + "/admin-home");
            } else {
                resp.sendRedirect(req.getContextPath() + "/blog-home");
            }
        } else {
            resp.sendRedirect(req.getContextPath() + "/login?message=error");
        }
    }
}
