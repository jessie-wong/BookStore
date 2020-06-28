package net.vicp.zyl_me.service;

import net.vicp.zyl_me.model.OrderBean;

import java.util.List;

public interface OrderService {
    List<OrderBean> getAllOrders(String username);
    int addOrder(OrderBean order);
    int updateOrderCount(int orderid,int num);
    int deleteOrder(int orderid);
}
