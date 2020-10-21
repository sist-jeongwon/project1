package com.firstProject.vo;
/*
   res_no        NUMBER,
   reserved_date DATE     NOT NULL,
   people        NUMBER   NOT NULL,   
   rest_no       NUMBER   NOT NULL,
   mem_id        VARCHAR2(20) NOT NULL,
   CONSTRAINT PK_reservation PRIMARY KEY (res_no),
   CONSTRAINT FK_restaurant_TO_reservation FOREIGN KEY (rest_no) REFERENCES restaurant (rest_no),
   CONSTRAINT FK_member_TO_reservation FOREIGN KEY (mem_id) REFERENCES member (mem_id) 
 */
import java.util.*;
public class reservationVO {
	private int res_no;
	private Date reserved_date; 
	private int people;
	private int rest_no;
	private String mem_id;
	public int getRes_no() {
		return res_no;
	}
	public void setRes_no(int res_no) {
		this.res_no = res_no;
	}
	public Date getReserved_date() {
		return reserved_date;
	}
	public void setReserved_date(Date reserved_date) {
		this.reserved_date = reserved_date;
	}
	public int getPeople() {
		return people;
	}
	public void setPeople(int people) {
		this.people = people;
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
	
}
