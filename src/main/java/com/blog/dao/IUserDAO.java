package com.blog.dao;

import com.blog.model.UserModel;

import java.util.List;

public interface IUserDAO {
    List<UserModel> findAll();
    UserModel findByUsernameAndPasswordAndStatus(String username, String password, int status);
}
