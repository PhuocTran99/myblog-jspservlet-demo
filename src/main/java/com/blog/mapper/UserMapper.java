package com.blog.mapper;

import com.blog.model.BlogModel;
import com.blog.model.UserModel;

import java.sql.ResultSet;
import java.sql.SQLException;

public class UserMapper implements RowMapper<UserModel>{
    @Override
    public UserModel mapRow(ResultSet rs) {
        try {
            UserModel userModel = new UserModel();
            userModel.setId(rs.getLong("id"));
            userModel.setUserName(rs.getString("username"));
            userModel.setPassword(rs.getString("password"));
            userModel.setFullName(rs.getString("fullname"));
            userModel.setStatus(rs.getInt("status"));
            userModel.setRoleId(rs.getLong("roleid"));
            userModel.setCreatedDate(rs.getTimestamp("createddate"));
            userModel.setModifiedDate(rs.getTimestamp("modifieddate"));
            userModel.setCreatedBy(rs.getString("createdby"));
            userModel.setModifiedBy(rs.getString("modifiedby"));
            return userModel;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
