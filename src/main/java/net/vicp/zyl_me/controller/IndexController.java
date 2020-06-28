package net.vicp.zyl_me.controller;

import net.vicp.zyl_me.model.CartBean;
import net.vicp.zyl_me.model.GoodsBean;
import net.vicp.zyl_me.service.implement.BookServiceImple;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
@Controller
@RequestMapping("/index")
public class IndexController {
    @Autowired
    private BookServiceImple bookService;

    @RequestMapping(method = RequestMethod.GET)
    public String index(){
        return "index";
    }

    @RequestMapping(value = "/leftData",method = RequestMethod.GET)
    @ResponseBody
    public List<GoodsBean> leftData(@RequestParam(value="count") String count){
        return bookService.getFavoriteGoodsBeans(Integer.parseInt(count));
    }

    @RequestMapping(value = "/rightData",method = RequestMethod.GET)
    @ResponseBody
    public List<GoodsBean> rightData(){
        return bookService.getPromotionGoods();
    }
}
