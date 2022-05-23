package com.blog.dao.impl;

import com.blog.dao.ICommentDAO;
import com.blog.model.CommentModel;

public class CommentDAO extends AbstractDAO<CommentModel> implements ICommentDAO {
    @Override
    public void deleteByBlogId(long blogId) {
        String sql = "DELETE FROM comment WHERE blogid = ?";
        update(sql, blogId);
    }
}
