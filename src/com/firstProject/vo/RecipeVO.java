package com.firstProject.vo;

import java.util.Date; 

public class RecipeVO {
	private int recipe_no;
	private String title;
	private Date recipe_date;
	private int hit;
	private String poster;
	private String content;
	private String ingredient;
	private String mem_id;
	private int lrcno; //찜
	
	public int getLrcno() {
		return lrcno;
	}
	public void setLrcno(int lrcno) {
		this.lrcno = lrcno;
	}
	public int getRecipe_no() {
		return recipe_no;
	}
	public void setRecipe_no(int recipe_no) {
		this.recipe_no = recipe_no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	public Date getRecipe_date() {
		return recipe_date;
	}
	public void setRecipe_date(Date recipe_date) {
		this.recipe_date = recipe_date;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public String getPoster() {
		return poster;
	}
	public void setPoster(String poster) {
		this.poster = poster;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getIngredient() {
		return ingredient;
	}
	public void setIngredient(String ingredient) {
		this.ingredient = ingredient;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	
}
