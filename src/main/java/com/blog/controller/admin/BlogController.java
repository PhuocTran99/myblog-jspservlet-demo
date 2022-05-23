package com.blog.controller.admin;

import com.blog.constant.SystemConstant;
import com.blog.model.BlogModel;
import com.blog.service.IBlogService;
import com.blog.service.ICategoryService;
import com.blog.util.FormUtil;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/admin-blog"})
public class BlogController extends HttpServlet {

    @Inject
    private IBlogService blogService;

    @Inject
    private ICategoryService categoryService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        BlogModel blogModel = FormUtil.toModel(BlogModel.class, req);
        String view = "";

        if (blogModel.getType().equals(SystemConstant.LIST)) {
            blogModel.setListModel(blogService.findAll());
            view = "/view/admin/blog/list.jsp";
        } else if (blogModel.getType().equals(SystemConstant.EDIT)) {
            if (blogModel.getId() != 0) {
                blogModel = blogService.findOne(blogModel.getId());
            }
            req.setAttribute("categories", categoryService.findAll());
            view = "/view/admin/blog/edit.jsp";
        }

        req.setAttribute(SystemConstant.MODEL, blogModel);
        RequestDispatcher rd = req.getRequestDispatcher(view);
        rd.forward(req,resp);
    }
}
