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
    private int rest_no;
    private String mem_id;
    private int cno;
    private String theater;
    private String time;
    private String people;
    private String price;
    private String isreserve;
    private Date regdate;
    private RestaurantVO resvo=new RestaurantVO();
    private ProductVO pvo=new ProductVO();
    private RecipeVO recvo=new RecipeVO();
    
    
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public ProductVO getPvo() {
		return pvo;
	}
	public void setPvo(ProductVO pvo) {
		this.pvo = pvo;
	}
	public RecipeVO getRecvo() {
		return recvo;
	}
	public void setRecvo(RecipeVO recvo) {
		this.recvo = recvo;
	}
	public int getRest_no() {
		return rest_no;
	}
	public void setRest_no(int rest_no) {
		this.rest_no = rest_no;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public int getCno() {
		return cno;
	}
	public void setCno(int cno) {
		this.cno = cno;
	}
	public String getTheater() {
		return theater;
	}
	public void setTheater(String theater) {
		this.theater = theater;
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
	public RestaurantVO getResvo() {
		return resvo;
	}
	public void setResvo(RestaurantVO resvo) {
		this.resvo = resvo;
	}
    
    
  
}