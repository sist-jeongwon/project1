package com.firstProject.vo;
import java.util.*;
public class ReplyVO {

	 	private int no;
	    private int bno;
	    private String mem_id;
	    private String name;
	    private String msg;
	    private Date regdate;
	    private String dbday;
	    private int group_id;// 媛숈� 醫낅쪟 �뙎湲��쓣 紐⑥븘�꽌 泥섎━ 
	    private int group_step; // 異쒕젰 �닚�꽌 
	    private int group_tab; // 醫낅쪟 
	    private int root; // �긽�쐞 �뙎湲�   �궘�젣�슜
	    private int depth; // �뙎湲� 紐뉕컻? �궘�젣�슜 
		public int getNo() {
			return no;
		}
		public void setNo(int no) {
			this.no = no;
		}
		public int getBno() {
			return bno;
		}
		public void setBno(int bno) {
			this.bno = bno;
		}
		public String getMem_id() {
			return mem_id;
		}
		public void setMem_id(String mem_id) {
			this.mem_id = mem_id;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getMsg() {
			return msg;
		}
		public void setMsg(String msg) {
			this.msg = msg;
		}
		public Date getRegdate() {
			return regdate;
		}
		public void setRegdate(Date regdate) {
			this.regdate = regdate;
		}
		public String getDbday() {
			return dbday;
		}
		public void setDbday(String dbday) {
			this.dbday = dbday;
		}
		public int getGroup_id() {
			return group_id;
		}
		public void setGroup_id(int group_id) {
			this.group_id = group_id;
		}
		public int getGroup_step() {
			return group_step;
		}
		public void setGroup_step(int group_step) {
			this.group_step = group_step;
		}
		public int getGroup_tab() {
			return group_tab;
		}
		public void setGroup_tab(int group_tab) {
			this.group_tab = group_tab;
		}
		public int getRoot() {
			return root;
		}
		public void setRoot(int root) {
			this.root = root;
		}
		public int getDepth() {
			return depth;
		}
		public void setDepth(int depth) {
			this.depth = depth;
		}


}