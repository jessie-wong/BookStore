package net.vicp.zyl_me.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class RootController {
    @RequestMapping(value = "about",method = RequestMethod.GET)
    public String about(){
        return "about";
    }
}
