package net.vicp.zyl_me.dao;

import net.vicp.zyl_me.model.UsersBean;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserDao {
    UsersBean getUser(@Param("username") String username,@Param("usertype") String usertype);
    void addUser(@Param("user") UsersBean user);
    List<UsersBean> getAllUsers();
}
