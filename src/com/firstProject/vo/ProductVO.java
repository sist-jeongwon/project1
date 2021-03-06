package com.firstProject.vo;

public class ProductVO {

	private int product_no;
	private String name;
	private int price;
	private int discount_rate;
	private String main_img;
	private Product_detailVO dvo=new Product_detailVO();
	private int kno; //장바구니
	private int lpno; //찜
	
	
	public int getLpno() {
		return lpno;
	}
	public void setLpno(int lpno) {
		this.lpno = lpno;
	}
	public int getKno() {
		return kno;
	}
	public void setKno(int kno) {
		this.kno = kno;
	}
	private String img;
	
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public Product_detailVO getDvo() {
		return dvo;
	}
	public void setDvo(Product_detailVO dvo) {
		this.dvo = dvo;
	}
	public String getMain_img() {
		return main_img;
	}
	public void setMain_img(String main_img) {
		this.main_img = main_img;
	}
	public int getProduct_no() {
		return product_no;
	}
	public void setProduct_no(int product_no) {
		this.product_no = product_no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getDiscount_rate() {
		return discount_rate;
	}
	public void setDiscount_rate(int discount_rate) {
		this.discount_rate = discount_rate;
	}
	
	
}
