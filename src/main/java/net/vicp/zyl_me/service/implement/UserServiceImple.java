package net.vicp.zyl_me.service.implement;

import net.vicp.zyl_me.dao.UserDao;
import net.vicp.zyl_me.model.UsersBean;
import net.vicp.zyl_me.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImple implements UserService {
    @Autowired
    private UserDao userRepository;

    public UsersBean getUser(String username,String usertype){
        return userRepository.getUser(username,usertype);
    }

    public void addUser(UsersBean user){
        userRepository.addUser(user);
    }

    public boolean hasUser(String username,String usertype){
        UsersBean user = getUser(username,usertype);
        return user != null;
    }
    public boolean valid(String username,String password,String usertype){
        UsersBean user = getUser(username,usertype);
        if(user == null || !user.getPassword().equals(password)){
            return false;
        }
        return true;
    }
    public List<UsersBean> getAllUser(){
        return userRepository.getAllUsers();
    }
}
