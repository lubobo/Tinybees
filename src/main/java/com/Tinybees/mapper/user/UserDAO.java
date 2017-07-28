package com.Tinybees.mapper.user;

import com.Tinybees.model.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserDAO {
//    int deleteByPrimaryKey(Integer uId);

    void insert_user(User user);

    User selectByEmail(User user);

    List<User> getAllUser();

    void deleteUserById(int u_id);

    User getUserById(int u_id);

    void updateUserPasswordById(@Param("u_id") int u_id,@Param("password") String password);

    void updateUserNameById(@Param("u_id") int u_id,@Param("name") String name);

    void updateUserEmailById(@Param("u_id") int u_id,@Param("email") String email);

    void updateUserPhoneById(@Param("u_id") int u_id,@Param("phone") String phone);

    void updateUserCCById(@Param("u_id") int u_id,@Param("country") String country,@Param("region") String region);

    void updateUserAdrById(@Param("u_id") int u_id,@Param("adr") String adr);
//    void insertSelective(User record);
//
//    User selectByPrimaryKey(Integer uId);
//
//    int updateByPrimaryKeySelective(User record);
//
//    int updateByPrimaryKey(User record);
}