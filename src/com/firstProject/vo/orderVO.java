package com.firstProject.vo;

import java.util.Date;

public class orderVO {
	private int orderNo;
	private Date orderDate;
	private int shipCharge;
	private int price;
	private int totalPrice;
	private String mem_id;
	public int getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	public int getShipCharge() {
		return shipCharge;
	}
	public void setShipCharge(int shipCharge) {
		this.shipCharge = shipCharge;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	
}
