package net.vicp.zyl_me.controller;

import net.vicp.zyl_me.model.GoodsBean;
import net.vicp.zyl_me.model.Page;
import net.vicp.zyl_me.service.implement.BookServiceImple;
import org.codehaus.plexus.util.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Iterator;

@Controller
@RequestMapping("/books")
public class BookController {
    @Autowired
    private BookServiceImple bookService;
    //所有书籍
    @RequestMapping(value = "allbooks",method = RequestMethod.GET)
    public String books(@RequestParam(value="page",defaultValue = "1") String page,@RequestParam(value="pagesize",defaultValue = "9") String pageSize, Model model){
        Page pagebean = new Page();
        int pageNum = Integer.parseInt(page);
        int count = bookService.getGoodsCount();
        int _pagesize = Integer.parseInt(pageSize);
        int pagecount = count % _pagesize == 0 ? count / _pagesize : count / _pagesize + 1;
        pagebean.setPage(pageNum);
        pagebean.setTotal(count);
        pagebean.setTotalPage(pagecount);
        model.addAttribute("bookslist",bookService.getGoodsByPage(pageNum,_pagesize));
        model.addAttribute("page",pagebean);
        return "books";
    }
    //展示细节
    @RequestMapping(value="showDetail",method = RequestMethod.GET)
    public String showDetail(@RequestParam(value = "id")String goodsid,Model model){
        model.addAttribute("goods",bookService.getGoodsById(goodsid));
        return "details";
    }
    //添加书籍
    @RequestMapping(value = "insertBook",method = RequestMethod.GET)
    public String insertBook(HttpSession session){
        if(session.getAttribute("user") == null){return "myAccount";};
        return "insertBook";
    }
    @RequestMapping(value = "insertBook",method = RequestMethod.POST)
    public String insertBook(GoodsBean goodsBean, Model model){
        if(goodsBean.getGoodsname().equals("") || goodsBean.getGoodsid().equals("")){
            model.addAttribute("error","书名和ID不能为空！");
        }else if(bookService.getGoodsById(goodsBean.getGoodsid()) != null){
            model.addAttribute("error","书籍id冲突");
        }else if(bookService.addBook(goodsBean) == 0){
            model.addAttribute("error","添加失败");
        }else{
            model.addAttribute("error","添加成功！");
        }
        return "insertBook";
    }
    //删除书籍
    @RequestMapping(value = "deleteBook",method = RequestMethod.GET)
    public String deleteBook(@RequestParam(value="page",defaultValue = "1") String page, @RequestParam(value="pagesize",defaultValue = "9") String pageSize, Model model, HttpSession session){
        if(session.getAttribute("user") == null){return "myAccount";};
        Page pagebean = new Page();
        int pageNum = Integer.parseInt(page);
        int count = bookService.getGoodsCount();
        int _pagesize = Integer.parseInt(pageSize);
        int pagecount = count % _pagesize == 0 ? count / _pagesize : count / _pagesize + 1;
        pagebean.setPage(pageNum);
        pagebean.setTotal(count);
        pagebean.setTotalPage(pagecount);
        model.addAttribute("bookslist",bookService.getGoodsByPage(Integer.parseInt(page),_pagesize));
        model.addAttribute("page",pagebean);
        return "deleteBook";
    }
    @RequestMapping(value = "deleteBook",method = RequestMethod.POST)
    public String deleteBook(@RequestParam("goodsid") String goodsid,Model model){
        if(bookService.deleteBook(goodsid) == 0){
            model.addAttribute("error","删除失败");
        }else {
            bookService.deleteBook(goodsid);
            int count = goodsid.split(",").length;
            model.addAttribute("error","删除"+count+"本书成功！");
        }
        return "deleteBook";
    }
    //查找书籍
    @RequestMapping(value = "searchBooks",method = RequestMethod.POST)
    public String searchBooks(@RequestParam(value="page",defaultValue = "1") String page,@RequestParam(value="pagesize",defaultValue = "9") String pageSize,@RequestParam("bookname") String bookname, Model model, HttpServletRequest request){
        Page pagebean = new Page();
        int pageNum = Integer.parseInt(page);
        int count = bookService.getGoodsCountByName(bookname);
        int _pagesize = Integer.parseInt(pageSize);
        int pagecount = count % _pagesize == 0 ? count / _pagesize : count / _pagesize + 1;
        pagebean.setPage(pageNum);
        pagebean.setTotal(count);
        pagebean.setTotalPage(pagecount);
        model.addAttribute("bookslist",bookService.getGoodsByName(bookname,pageNum,_pagesize));
        model.addAttribute("page",pagebean);
        return "books";
    }

    //查找书籍
    @RequestMapping(value = "searchDeleteBooks",method = RequestMethod.POST)
    public String searchDeleteBooks(@RequestParam(value="page",defaultValue = "1") String page,@RequestParam(value="pagesize",defaultValue = "9") String pageSize,@RequestParam("bookname") String bookname, Model model, HttpServletRequest request){
        Page pagebean = new Page();
        int pageNum = Integer.parseInt(page);
        int count = bookService.getGoodsCountByName(bookname);
        int _pagesize = Integer.parseInt(pageSize);
        int pagecount = count % _pagesize == 0 ? count / _pagesize : count / _pagesize + 1;
        pagebean.setPage(pageNum);
        pagebean.setTotal(count);
        pagebean.setTotalPage(pagecount);
        model.addAttribute("bookslist",bookService.getGoodsByName(bookname,pageNum,_pagesize));
        model.addAttribute("page",pagebean);
        return "deleteBook";
    }

    //根据种类查看
    @RequestMapping(value = "searchByCategory",method = RequestMethod.GET)
    public String searchByCategory(@RequestParam(value="page",defaultValue = "1") String page,@RequestParam(value="pagesize",defaultValue = "9") String pageSize,@RequestParam("category") String category, Model model){
        Page pagebean = new Page();
        int pageNum = Integer.parseInt(page);
        int count = bookService.getGoodsCountByCategory(category);
        int _pagesize = Integer.parseInt(pageSize);
        int pagecount = count % _pagesize == 0 ? count / _pagesize : count / _pagesize + 1;
        pagebean.setPage(pageNum);
        pagebean.setTotal(count);
        pagebean.setTotalPage(pagecount);
        model.addAttribute("bookslist",bookService.getGoodsByCategory(category,pageNum,_pagesize));
        model.addAttribute("page",pagebean);
        return "books";
    }
}
