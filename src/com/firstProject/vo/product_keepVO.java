package com.firstProject.vo;
/* -----product_keep
   keep_no    NUMBER   NOT NULL,
   quantity   NUMBER   NOT NULL,
   product_no NUMBER   NOT NULL,
   mem_id     VARCHAR2(20) NOT NULL,
   CONSTRAINT PK_product_keep PRIMARY KEY (keep_no)
   CONSTRAINT FK_product_TO_product_keep FOREIGN KEY (product_no) REFERENCES product (product_no);
 */
public class product_keepVO {
	private int keep_no;
	private int quantity;
	private int product_no;
	private String mem_id;
	public int getKeep_no() {
		return keep_no;
	}
	public void setKeep_no(int keep_no) {
		this.keep_no = keep_no;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getProduct_no() {
		return product_no;
	}
	public void setProduct_no(int product_no) {
		this.product_no = product_no;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	
}
