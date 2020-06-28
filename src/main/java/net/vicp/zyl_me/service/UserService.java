package net.vicp.zyl_me.service;

import net.vicp.zyl_me.model.UsersBean;

import java.util.List;

public interface UserService {
    UsersBean getUser(String username, String usertype);

    void addUser(UsersBean user);

    boolean hasUser(String username, String usertype);
    boolean valid(String username, String password, String usertype);
    List<UsersBean> getAllUser();
}
