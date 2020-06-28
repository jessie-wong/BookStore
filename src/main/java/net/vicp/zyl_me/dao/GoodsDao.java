package net.vicp.zyl_me.dao;

import net.vicp.zyl_me.model.GoodsBean;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface GoodsDao {
    List<GoodsBean> getFavoriteGoodsBeans(@Param("count") int count);
    List<GoodsBean> getPromotionGoods();
    int addBook(@Param("goods") GoodsBean goods);
    List<GoodsBean> getGoodsByPage(@Param("page")int page,@Param("pagesize")int pagesize);
    int getGoodsCount();
    GoodsBean getGoodsById(@Param("goodsid")String goodsid);
    int deleteBook(@Param("goodsid") String goodsid);
    List<GoodsBean> getGoodsByName(@Param("goodsname")String goodsname,@Param("page")int page,@Param("pagesize")int pagesize);
    List<GoodsBean> getGoodsByCategory(@Param("category") String category,@Param("page")int page,@Param("pagesize")int pagesize);
    int getGoodsCountByName(@Param("goodsname")String goodsname);
    int getGoodsCountByCategory(@Param("category") String category);
}
