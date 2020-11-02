package com.firstProject.vo;
import java.util.*;

public class Restaurant_reviewVO {
	private int rest_reivew_no;
	private int rest_review_bno;
	private String id;
	private String name;
	private String rest_review_content;
	private int group_id;// 같은 종류 댓글을 모아서 처리 
    private int group_step; // 출력 순서 
    private int group_tab; // 종류 
    private int root; // 상위 댓글   삭제용
    private int depth; // 댓글 몇개? 삭제용 
	public int getRest_reivew_no() {
		return rest_reivew_no;
	}
	public void setRest_reivew_no(int rest_reivew_no) {
		this.rest_reivew_no = rest_reivew_no;
	}
	public int getRest_review_bno() {
		return rest_review_bno;
	}
	public void setRest_review_bno(int rest_review_bno) {
		this.rest_review_bno = rest_review_bno;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getRest_review_content() {
		return rest_review_content;
	}
	public void setRest_review_content(String rest_review_content) {
		this.rest_review_content = rest_review_content;
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
