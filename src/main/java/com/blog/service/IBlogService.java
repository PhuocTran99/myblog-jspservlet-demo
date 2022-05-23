package com.blog.service;

import com.blog.model.BlogModel;

import java.util.List;

public interface IBlogService {
    List<BlogModel> findAll();
    BlogModel findOne(long id);
    List<BlogModel> findByCategoryId(long categoryId);
    BlogModel create(BlogModel blogModel);
    BlogModel modify(BlogModel blogModel);
    List<BlogModel> delete(long[] ids);
}
