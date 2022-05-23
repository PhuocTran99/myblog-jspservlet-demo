package com.blog.service.impl;

import com.blog.dao.ICategoryDAO;
import com.blog.model.CategoryModel;
import com.blog.service.ICategoryService;

import javax.inject.Inject;
import java.util.List;

public class CategoryService implements ICategoryService {

    @Inject
    private ICategoryDAO categoryDAO;

    @Override
    public List<CategoryModel> findAll() {
        return categoryDAO.findAll();
    }

    @Override
    public CategoryModel findOne(long id) {
        return categoryDAO.findOne(id);
    }
}
