package com.Tinybees.mapper.user;

import com.Tinybees.model.User;

import java.util.List;

public interface UserDAO {
//    int deleteByPrimaryKey(Integer uId);

    void insert_user(User user);

    User selectByEmail(User user);

//    void insertSelective(User record);
//
//    User selectByPrimaryKey(Integer uId);
//
//    int updateByPrimaryKeySelective(User record);
//
//    int updateByPrimaryKey(User record);
}