package com.blog.service.impl;

import com.blog.dao.ICommentDAO;
import com.blog.service.ICommentService;

import javax.inject.Inject;

public class CommentService implements ICommentService {

    @Inject
    private ICommentDAO commentDAO;

    @Override
    public void delete(long blogId) {
        commentDAO.deleteByBlogId(blogId);
    }
}
