package net.vicp.zyl_me.service.implement;

import net.vicp.zyl_me.model.CartBean;
import net.vicp.zyl_me.model.GoodsBean;
import net.vicp.zyl_me.model.OrderBean;
import net.vicp.zyl_me.service.CartService;
import net.vicp.zyl_me.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.Iterator;
import java.util.List;

@Service
public class CartServiceImple implements CartService {
    @Autowired
    OrderService orderService;
    private CartBean cartBean;

    @Override
    public CartBean getCart(String username) {
        List<OrderBean> orders = orderService.getAllOrders(username);
        CartBean cartBean = new CartBean();
        cartBean.setOrders(orders);
        int num = 0;
        int price = 0;
        for(OrderBean order : orders){
            num +=order.getCount();
            price += order.getPrice()*order.getCount();
        }
        cartBean.setTotalnum(num);
        cartBean.setTotalprice(price);
        this.cartBean = cartBean;
        return cartBean;
    }

    @Override
    public CartBean updateGoods(GoodsBean goods,String username,int num) {
        boolean isExist = false;
        Iterator<OrderBean> iterator = this.cartBean.getOrders().iterator();
        while(iterator.hasNext()){
            OrderBean order = iterator.next();
            if(order.getGoodsid().equals(goods.getGoodsid())){
                int result = 0;
                if(order.getCount()+num == 0){
                    //数量为0
                    result = orderService.deleteOrder(order.getOrderid());
                    if(result != 0){
                        iterator.remove();
                    }
                }else {
                    //包含该商品
                    result = orderService.updateOrderCount(order.getOrderid(),num);
                    if(result != 0){
                        order.setCount(order.getCount() + num);
                        cartBean.setTotalprice((cartBean.getTotalprice()+ (num > 0?goods.getGoodsprice():-goods.getGoodsprice())));
                        cartBean.setTotalnum(cartBean.getTotalnum()+num);
                    }
                }
                isExist = true;
                break;
            }
        }
        if(!isExist){
            //不包含该商品,新建订单
            OrderBean order = new OrderBean(goods.getGoodsid(),goods.getGoodsname(),goods.getPhoto(),goods.getGoodsprice(),1,username);
            if(orderService.addOrder(order) != 0) {
                cartBean.getOrders().add(order);
                cartBean.setTotalprice((cartBean.getTotalprice() + goods.getGoodsprice()));
                cartBean.setTotalnum(cartBean.getTotalnum()+1);
            }
        }
        return this.cartBean;
    }
}
