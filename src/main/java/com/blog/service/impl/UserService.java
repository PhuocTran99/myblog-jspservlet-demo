package com.blog.service.impl;

import com.blog.dao.IUserDAO;
import com.blog.model.UserModel;
import com.blog.service.IUserService;

import javax.inject.Inject;
import java.util.List;

public class UserService implements IUserService {

    @Inject
    private IUserDAO userDAO;

    @Override
    public List<UserModel> findAll() {
        return userDAO.findAll();
    }

    @Override
    public UserModel findByUsernameAndPasswordAndStatus(String username, String password, int status) {
        return userDAO.findByUsernameAndPasswordAndStatus(username, password, status);
    }
}
