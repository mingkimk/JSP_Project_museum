package dto;

import java.sql.Timestamp;

public class PayDTO {
	private int code; // 티켓 일련 번호
	private String ename; // 상품명
	private int price; // number DEFAULT 0, -- 가격
	private int amount;  // 수량
	 private String total; // 총가격
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
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getTotal() {
		return total;
	}
	public void setTotal(String total) {
		this.total = total;
	}
	


}
