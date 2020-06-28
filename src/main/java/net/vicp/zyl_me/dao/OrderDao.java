package net.vicp.zyl_me.dao;


import net.vicp.zyl_me.model.OrderBean;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OrderDao {
    List<OrderBean> getAllOrders(String username);
    int addOrder(@Param("order")OrderBean order);
    int updateOrderCount(int orderid,int num);
    int deleteOrder(int orderid);
}
