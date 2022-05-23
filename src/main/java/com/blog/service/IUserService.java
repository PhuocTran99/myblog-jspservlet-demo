package com.blog.service;

import com.blog.model.UserModel;

import java.util.List;

public interface IUserService {
    List<UserModel> findAll();
    UserModel findByUsernameAndPasswordAndStatus(String username, String password, int status);
}
