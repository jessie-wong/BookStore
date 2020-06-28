package net.vicp.zyl_me.service.implement;

import net.vicp.zyl_me.dao.GoodsDao;
import net.vicp.zyl_me.model.GoodsBean;
import net.vicp.zyl_me.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class BookServiceImple implements BookService {
    @Autowired
    private GoodsDao goodsDao;

    public List<GoodsBean> getFavoriteGoodsBeans(int count){
        return goodsDao.getFavoriteGoodsBeans(count);
    }
    public List<GoodsBean> getPromotionGoods(){
        return goodsDao.getPromotionGoods();
    }
    public List<GoodsBean> getGoodsByPage(int page,int pagesize){
        int start = (page-1)*pagesize;
        return goodsDao.getGoodsByPage(start,pagesize);
    }
    public int getGoodsCount(){
        return goodsDao.getGoodsCount();
    }
    public GoodsBean getGoodsById(String goodsid){
        return goodsDao.getGoodsById(goodsid);
    }
    public int addBook(GoodsBean goodsBean){
        return goodsDao.addBook(goodsBean);
    }
    public int deleteBook(String goodsid){
        return goodsDao.deleteBook(goodsid);
    }

    public List<GoodsBean> getGoodsByName(String goodsName,int page,int pagesize){
        int start = (page-1)*pagesize;
        return goodsDao.getGoodsByName(goodsName,start,pagesize);
    }

    public List<GoodsBean> getGoodsByCategory(String category,int page,int pagesize){
        int start = (page-1)*pagesize;
        return goodsDao.getGoodsByCategory(category,start,pagesize);
    }

    public int getGoodsCountByName(String goodsName){
        return goodsDao.getGoodsCountByName(goodsName);
    }

    public int getGoodsCountByCategory(String category){
        return goodsDao.getGoodsCountByCategory(category);
    }
}
