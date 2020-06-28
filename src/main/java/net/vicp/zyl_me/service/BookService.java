package net.vicp.zyl_me.service;

import net.vicp.zyl_me.model.GoodsBean;

import java.util.List;

public interface BookService {
     List<GoodsBean> getFavoriteGoodsBeans(int count);
     List<GoodsBean> getPromotionGoods();
     List<GoodsBean> getGoodsByPage(int page, int pagesize);
     int getGoodsCount();
     GoodsBean getGoodsById(String goodsid);
     int addBook(GoodsBean goodsBean);
     int deleteBook(String goodsid);
     List<GoodsBean> getGoodsByName(String goodsName, int page, int pagesize);

     List<GoodsBean> getGoodsByCategory(String category, int page, int pagesize);

     int getGoodsCountByName(String goodsName);

     int getGoodsCountByCategory(String category);
}
