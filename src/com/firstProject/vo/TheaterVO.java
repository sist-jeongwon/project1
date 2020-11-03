package com.firstProject.vo;

/*
 *   TNO   NOT NULL NUMBER        
TLOC1  NOT NULL VARCHAR2(100)
TLOC2  NOT NULL VARCHAR2(100)
 */
public class TheaterVO {
    private int tno;
    private String tloc1;
    private String tloc2;
    private String rday;
    
	public String getRday() {
		return rday;
	}
	public void setRday(String rday) {
		this.rday = rday;
	}
	public int getTno() {
		return tno;
	}
	public void setTno(int tno) {
		this.tno = tno;
	}
	public String getTname() {
		return tloc1;
	}
	public void setTname(String tname) {
		this.tloc1 = tloc1;
	}
	public String getTloc() {
		return tloc2;
	}
	public void setTloc(String tloc) {
		this.tloc2 = tloc;
	}
  
}
