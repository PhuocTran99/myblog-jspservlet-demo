package com.blog.controller.web;

import com.blog.constant.SystemConstant;
import com.blog.service.IBlogService;
import com.blog.service.ICategoryService;
import com.blog.util.SessionUtil;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/blog-home"})
public class HomeController extends HttpServlet {

    @Inject
    private IBlogService blogService;

    @Inject
    private ICategoryService categoryService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action != null && action.equals("logout")) {
            SessionUtil.getInstance().removeValue(req, "USERMODEL");
        }

        req.setAttribute(SystemConstant.LISTMODEL, blogService.findAll());
        req.setAttribute("categories", categoryService.findAll());
        RequestDispatcher rd = req.getRequestDispatcher("/view/web/home.jsp");
        rd.forward(req, resp);
    }
}
