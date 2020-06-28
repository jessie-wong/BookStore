package net.vicp.zyl_me.controller;

import net.vicp.zyl_me.model.CartBean;
import net.vicp.zyl_me.model.UsersBean;
import net.vicp.zyl_me.service.CartService;
import net.vicp.zyl_me.service.implement.UserServiceImple;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserServiceImple userService;
    @Autowired
    private CartService cartService;

    //登录
    @RequestMapping(value="login",method= RequestMethod.POST)
    public String login(@RequestParam(value = "username") String username, @RequestParam(value = "password") String password, @RequestParam(value = "usertype") String usertype, Model model,HttpSession session){
        if(userService.valid(username,password,usertype)) {
            UsersBean user = userService.getUser(username,usertype);
            session.setAttribute("user",user);
            session.setAttribute("cart",cartService.getCart(user.getUsername()));
        }else{
            model.addAttribute("info","error");
        }
        return "myAccount";
    }
    //账户
    @RequestMapping(value = "myAccount",method = RequestMethod.GET)
    public String myAccount(){
        return "myAccount";
    }
    //注册
    @RequestMapping(value = "register",method = RequestMethod.GET)
    public String register(){
        return "register";
    }
    //注册
    @RequestMapping(value = "register",method = RequestMethod.POST)
    public String register(UsersBean user,Model model,HttpSession session){
        if(user.getUsername().equals("")){
            model.addAttribute("error","用户名不能为空!");
        }else if(user.getPassword().equals("")){
            model.addAttribute("error","密码不能为空!");
       /* }else if(agree.equals("false")){
            model.addAttribute("error","必须同意协议!");*/
        }else if(user.getUsername().length() >= 20){
            model.addAttribute("error","用户名长度必须小于20!");
        }else if(userService.hasUser(user.getUsername(),user.getUsertype())){
            model.addAttribute("error","用户名冲突");
        /*}else if(!userService.addUser(user)){
            model.addAttribute("error","注册失败");*/
        }else{
            userService.addUser(user);
            session.setAttribute("user",user);
            return "myAccount";
        }
        return "register";
    }

    //注销
    @RequestMapping(value = "logout",method = RequestMethod.GET)
    public String logout(HttpSession session){
        session.removeAttribute("user");
        session.setAttribute("cart",new CartBean());
        return "index";
    }

    @RequestMapping(value = "userManagement", method = RequestMethod.GET)
    public String userManagement(Model model){
        model.addAttribute("userlist",userService.getAllUser());
        return "userManagement";
    }
}
