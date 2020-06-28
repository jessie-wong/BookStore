package net.vicp.zyl_me.service;

import net.vicp.zyl_me.model.CartBean;
import net.vicp.zyl_me.model.GoodsBean;

import java.lang.management.GarbageCollectorMXBean;

public interface CartService{
    CartBean getCart(String username);
    CartBean updateGoods(GoodsBean goods, String username, int num);
}
