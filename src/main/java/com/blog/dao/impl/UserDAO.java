package com.blog.dao.impl;

import com.blog.dao.IUserDAO;
import com.blog.mapper.BlogMapper;
import com.blog.mapper.UserMapper;
import com.blog.model.UserModel;

import java.util.List;

public class UserDAO extends AbstractDAO<UserModel> implements IUserDAO {
    @Override
    public List<UserModel> findAll() {
        String sql = "SELECT * FROM user";
        return query(sql, new UserMapper());
    }

    @Override
    public UserModel findByUsernameAndPasswordAndStatus(String username, String password, int status) {
        String sql = "SELECT * FROM user WHERE username = ? AND password = ? AND status = ?";
        List<UserModel> list = query(sql, new UserMapper(), username, password, status);
        return list.isEmpty()?null:list.get(0);
    }
}
