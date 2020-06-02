package dto;

import java.sql.Timestamp;

public class ExhibitDTO {
	
	private int code; //product_seq 시퀀스 객체로 자동 일련번호 부여
	private String ename;  //상품명 
	private int price ;  // number DEFAULT 0,			-- 원가
	private String info;  //VARCHAR2(3000) null,		-- 상품 내용
	private int amount;
	//private String image; // VARCHAR2(150) DEFAULT 'default.jpg',	
	//private Timestamp edate ; //date default sysdate
	private String edate;
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getEdate() {
		return edate;
	}
	public void setEdate(String edate) {
		this.edate = edate;
	}


	
	

	
}
