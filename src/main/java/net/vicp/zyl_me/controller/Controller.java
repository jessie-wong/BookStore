package net.vicp.zyl_me.controller;

import net.vicp.zyl_me.model.CartBean;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

@org.springframework.stereotype.Controller
@RequestMapping("/")
@SessionAttributes("cart")
public class Controller {
    @RequestMapping(method = RequestMethod.GET)
    public String root(Model model){
        CartBean cart = new CartBean();
        model.addAttribute("cart",cart);
        return "index";
    }
}
