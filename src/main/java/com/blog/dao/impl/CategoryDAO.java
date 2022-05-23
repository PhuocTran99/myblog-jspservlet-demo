package com.blog.dao.impl;

import com.blog.dao.ICategoryDAO;
import com.blog.mapper.BlogMapper;
import com.blog.mapper.CategoryMapper;
import com.blog.model.BlogModel;
import com.blog.model.CategoryModel;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CategoryDAO extends AbstractDAO<CategoryModel> implements ICategoryDAO {

    @Override
    public List<CategoryModel> findAll() {
        String sql = "SELECT * FROM category";
        return query(sql, new CategoryMapper());
    }

    @Override
    public CategoryModel findOne(long id) {
        String sql = "SELECT * FROM category WHERE id = ?";
        List<CategoryModel> list = query(sql, new CategoryMapper(), id);
        return list.isEmpty()?null:list.get(0);
    }
}
