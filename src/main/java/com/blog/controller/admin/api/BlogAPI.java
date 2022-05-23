package com.blog.controller.admin.api;

import com.blog.model.BlogModel;
import com.blog.model.UserModel;
import com.blog.service.IBlogService;
import com.blog.util.HttpUtil;
import com.blog.util.SessionUtil;
import com.fasterxml.jackson.databind.ObjectMapper;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = {"/api-admin-blog"})
public class BlogAPI extends HttpServlet {

    @Inject
    private IBlogService blogService;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");
        BlogModel blogModel = HttpUtil.of(req.getReader()).toModel(BlogModel.class);
        blogModel.setCreatedBy(((UserModel) SessionUtil.getInstance().getValue(req, "USERMODEL")).getUserName());
        blogModel = blogService.create(blogModel);
        mapper.writeValue(resp.getOutputStream(), blogModel);
    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");
        BlogModel blogModel = HttpUtil.of(req.getReader()).toModel(BlogModel.class);
        blogModel.setModifiedBy(((UserModel) SessionUtil.getInstance().getValue(req, "USERMODEL")).getUserName());
        blogModel = blogService.modify(blogModel);
        mapper.writeValue(resp.getOutputStream(), blogModel);
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");
        long[] ids = HttpUtil.of(req.getReader()).toModel(BlogModel.class).getIds();
        List<BlogModel> list = blogService.delete(ids);
        mapper.writeValue(resp.getOutputStream(), list);
    }
}
