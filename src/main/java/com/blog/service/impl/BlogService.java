package com.blog.service.impl;

import com.blog.dao.IBlogDAO;
import com.blog.dao.ICommentDAO;
import com.blog.model.BlogModel;
import com.blog.service.IBlogService;

import javax.inject.Inject;
import java.sql.Timestamp;
import java.util.List;

public class BlogService implements IBlogService {

    @Inject
    private IBlogDAO blogDAO;

    @Inject
    private ICommentDAO commentDAO;

    @Override
    public List<BlogModel> findAll() {
        return blogDAO.findAll();
    }

    @Override
    public BlogModel findOne(long id) {
        return blogDAO.findOne(id);
    }

    @Override
    public List<BlogModel> findByCategoryId(long categoryId) {
        return blogDAO.findByCategoryId(categoryId);
    }

    @Override
    public BlogModel create(BlogModel blogModel) {
        blogModel.setCreatedDate(new Timestamp(System.currentTimeMillis()));
        long id = blogDAO.create(blogModel);
        return blogDAO.findOne(id);
    }

    @Override
    public BlogModel modify(BlogModel blogModel) {
        blogModel.setModifiedDate(new Timestamp(System.currentTimeMillis()));
        blogDAO.modify(blogModel);
        return blogDAO.findOne(blogModel.getId());
    }

    @Override
    public List<BlogModel> delete(long[] ids) {
        for (long id : ids) {
            commentDAO.deleteByBlogId(id);
            blogDAO.delete(id);
        }
        return blogDAO.findAll();
    }
}
