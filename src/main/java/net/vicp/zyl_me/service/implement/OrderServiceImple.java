package net.vicp.zyl_me.service.implement;

import net.vicp.zyl_me.dao.OrderDao;
import net.vicp.zyl_me.model.OrderBean;
import net.vicp.zyl_me.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class OrderServiceImple implements OrderService {
    @Autowired
    OrderDao orderDao;
    @Override
    public List<OrderBean> getAllOrders(String username) {
        return orderDao.getAllOrders(username);
    }

    @Override
    public int addOrder(OrderBean order) {
        return orderDao.addOrder(order);
    }

    @Override
    public int updateOrderCount(int orderid,int num) {
        return orderDao.updateOrderCount(orderid,num);
    }

    @Override
    public int deleteOrder(int orderid) {
        return orderDao.deleteOrder(orderid);
    }
}
