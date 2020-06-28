package net.vicp.zyl_me.model;

import java.util.ArrayList;
import java.util.List;

public class CartBean {
	private List<OrderBean> orders;
	private float totalprice;
	private int totalnum;

	public CartBean() {
		orders = new ArrayList<>();
		totalnum = 0;
		totalprice = 0;
	}

	public CartBean(List<OrderBean> orders, float totalprice, int totalnum) {
		this.orders = orders;
		this.totalprice = totalprice;
		this.totalnum = totalnum;
	}

	public List<OrderBean> getOrders() {
		return orders;
	}

	public void setOrders(List<OrderBean> orders) {
		this.orders = orders;
	}

	public float getTotalprice() {
		return totalprice;
	}

	public void setTotalprice(float totalprice) {
		this.totalprice = totalprice;
	}

	public int getTotalnum() {
		return totalnum;
	}

	public void setTotalnum(int totalnum) {
		this.totalnum = totalnum;
	}
}
