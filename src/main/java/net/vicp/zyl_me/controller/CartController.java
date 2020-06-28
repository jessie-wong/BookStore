package net.vicp.zyl_me.controller;

import net.vicp.zyl_me.model.CartBean;
import net.vicp.zyl_me.model.GoodsBean;
import net.vicp.zyl_me.model.UsersBean;
import net.vicp.zyl_me.service.BookService;
import net.vicp.zyl_me.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/cart")
public class CartController {
    @Autowired
    CartService cartService;
    @Autowired
    BookService bookService;

    @RequestMapping(value = "showcart",method = RequestMethod.GET)
    public String showCart(){
        return "cart";
    }
    @RequestMapping(value="addCart",method = RequestMethod.GET)
    public String addCart(@RequestParam(value = "goodsid") String goodsid,HttpSession session){
        UsersBean user = (UsersBean) session.getAttribute("user");
        if(user == null) return "myAccount";
        GoodsBean goodsBean = bookService.getGoodsById(goodsid);
        CartBean cart = cartService.updateGoods(goodsBean,user.getUsername(),1);
        session.setAttribute("cart",cart);
        return "cart";
    }
    @RequestMapping(value="subCart",method = RequestMethod.GET)
    public String subCart(@RequestParam(value = "goodsid") String goodsid,HttpSession session){
        UsersBean user = (UsersBean) session.getAttribute("user");
        if(user == null) return "myAccount";
        GoodsBean goodsBean = bookService.getGoodsById(goodsid);
        CartBean cart = cartService.updateGoods(goodsBean,user.getUsername(),-1);
        session.setAttribute("cart",cart);
        return "cart";
    }
}
