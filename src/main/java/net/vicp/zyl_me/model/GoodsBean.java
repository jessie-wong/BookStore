package net.vicp.zyl_me.model;

public class GoodsBean {
	private String goodsid;
	private String goodsname;
	private String breifintroduction;
	private String detailintroduction;
	private float goodsprice;
	private String photo;
	private String category;

	public GoodsBean(){
		this.goodsid = "";
		this.goodsname = "";
		this.breifintroduction = "";
		this.detailintroduction = "";
		this.goodsprice = 0;
		this.photo = "";
		this.category = "";
	}

	public GoodsBean(String goodsid, String goodsname, String breifintroduction, String detailintroduction, float goodsprice, String photo, String category) {
		super();
		this.goodsid = goodsid;
		this.goodsname = goodsname;
		this.breifintroduction = breifintroduction;
		this.detailintroduction = detailintroduction;
		this.goodsprice = goodsprice;
		this.photo = photo;
		this.category = category;
	}

	public String getGoodsid() {
		return goodsid;
	}

	public void setGoodsid(String goodsid) {
		this.goodsid = goodsid;
	}

	public String getGoodsname() {
		return goodsname;
	}

	public void setGoodsname(String goodsname) {
		this.goodsname = goodsname;
	}

	public String getBreifintroduction() {
		return breifintroduction;
	}

	public void setBreifintroduction(String breifintroduction) {
		this.breifintroduction = breifintroduction;
	}

	public String getDetailintroduction() {
		return detailintroduction;
	}

	public void setDetailintroduction(String detailintroduction) {
		this.detailintroduction = detailintroduction;
	}

	public float getGoodsprice() {
		return goodsprice;
	}

	public void setGoodsprice(float goodsprice) {
		this.goodsprice = goodsprice;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}
	
}