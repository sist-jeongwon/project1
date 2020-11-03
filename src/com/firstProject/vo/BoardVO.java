package com.firstProject.vo;

import java.util.Date;

public class BoardVO {
	private int no;
	private int hit;
	private String subject;
	private String content;
	private String name;
	private Date regdate;
	private String pwd;
	 private String dbday;
	    private int replyCount;
	    
	public String getDbday() {
			return dbday;
		}
		public void setDbday(String dbday) {
			this.dbday = dbday;
		}
		public int getReplyCount() {
			return replyCount;
		}
		public void setReplyCount(int replyCount) {
			this.replyCount = replyCount;
		}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
}
