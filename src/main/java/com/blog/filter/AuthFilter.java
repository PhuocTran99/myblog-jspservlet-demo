package com.blog.filter;

import com.blog.model.UserModel;
import com.blog.util.SessionUtil;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AuthFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        Filter.super.init(filterConfig);
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) servletRequest;
        HttpServletResponse resp = (HttpServletResponse) servletResponse;
        String url = req.getRequestURI();
        if (url.contains("/admin")) {
            UserModel userModel = (UserModel) SessionUtil.getInstance().getValue(req, "USERMODEL");
            if (userModel != null) {
                if (userModel.getRoleId() == 1) {
                    filterChain.doFilter(servletRequest, servletResponse);
                } else {
                    resp.sendError(401);
                }
            } else {
                resp.sendRedirect(req.getContextPath() + "/login?message=nologin");
            }
        } else {
            filterChain.doFilter(servletRequest, servletResponse);
        }
    }

    @Override
    public void destroy() {
        Filter.super.destroy();
    }
}