package net.vicp.zyl_me.model;

public class OrderBean {
	private int orderid;
	private String goodsid;
	private String goodsname;
	private String photo;
	private float price;
	private int count;
	private String username;

	public OrderBean() {
	}

	public OrderBean(String goodsid, float price, int count, String username) {
		this.goodsid = goodsid;
		this.price = price;
		this.count = count;
		this.username = username;
	}

	public OrderBean(String goodsid, String goodsname, String photo, float price, int count, String username) {
		this.goodsid = goodsid;
		this.goodsname = goodsname;
		this.photo = photo;
		this.price = price;
		this.count = count;
		this.username = username;
	}

	public int getOrderid() {
		return orderid;
	}

	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}

	public String getGoodsname() {
		return goodsname;
	}

	public void setGoodsname(String goodsname) {
		this.goodsname = goodsname;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getGoodsid() {
		return goodsid;
	}

	public void setGoodsid(String goodsid) {
		this.goodsid = goodsid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
}
