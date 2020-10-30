package com.firstProject.vo;
/*
 *  NO        NOT NULL NUMBER        
ID        NOT NULL VARCHAR2(20)  
MNO                NUMBER        
THEATER            VARCHAR2(100) 
TIME               VARCHAR2(20)  
INWON              VARCHAR2(20)  
PRICE              VARCHAR2(10)  
ISRESERVE          CHAR(1)  
 */
import java.util.*; 
public class ReservationVO {
    private int res_no;
    private String mem_id;
    private int cno;
    private String time;
    private String people;
    private String price;
    private String isreserve;
    private Date reserved_date;
    private RestaurantVO resvo=new RestaurantVO();
	public int getRes_no() {
		return res_no;
	}
	public void setRes_no(int res_no) {
		this.res_no = res_no;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public int getMno() {
		return cno;
	}
	public void setMno(int mno) {
		this.cno = mno;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getPeople() {
		return people;
	}
	public void setPeople(String people) {
		this.people = people;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getIsreserve() {
		return isreserve;
	}
	public void setIsreserve(String isreserve) {
		this.isreserve = isreserve;
	}
	public Date getReserved_date() {
		return reserved_date;
	}
	public void setReserved_date(Date reserved_date) {
		this.reserved_date = reserved_date;
	}
	public RestaurantVO getResvo() {
		return resvo;
	}
	public void setResvo(RestaurantVO resvo) {
		this.resvo = resvo;
	}
    
	
  
}
