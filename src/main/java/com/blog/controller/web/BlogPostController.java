package com.blog.controller.web;

import com.blog.constant.SystemConstant;
import com.blog.service.IBlogService;
import com.blog.service.ICategoryService;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/blog-post"})
public class BlogPostController extends HttpServlet {

    @Inject
    private IBlogService blogService;

    @Inject
    private ICategoryService categoryService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        long id = Long.valueOf(req.getParameter("id"));
        req.setAttribute(SystemConstant.MODEL, blogService.findOne(id));
        req.setAttribute("category", categoryService.findOne(blogService.findOne(id).getCategoryId()));
        req.setAttribute("categories", categoryService.findAll());
        RequestDispatcher rd = req.getRequestDispatcher("/view/web/blogpost.jsp");
        rd.forward(req, resp);
    }
}
