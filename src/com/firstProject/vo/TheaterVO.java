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
		public int getTno() {
			return tno;
		}
		public void setTno(int tno) {
			this.tno = tno;
		}
		public String getTloc1() {
			return tloc1;
		}
		public void setTloc1(String tloc1) {
			this.tloc1 = tloc1;
		}
		public String getTloc2() {
			return tloc2;
		}
		public void setTloc2(String tloc2) {
			this.tloc2 = tloc2;
		}
		public String getRday() {
			return rday;
		}
		public void setRday(String rday) {
			this.rday = rday;
		}
	    
	  
	}
