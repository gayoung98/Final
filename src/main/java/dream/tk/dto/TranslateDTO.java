package dream.tk.dto;

import java.sql.Date;

public class TranslateDTO {
	
//	create table menu_translate(
//		    seq number primary key,
//		    menu_kor varchar2(400) not null,
//		    menu_eng varchar2(400),
//		    price number not null,
//		    business_id varchar(20),
//		    business_name varchar(500),
//		    reg_date date,
//		    confirm_date date,
//		    confirm_YN varchar(1) default 'N',
//		    biz_seq number
//		);
	
//	create sequence menu_translate_seq start with 1 increment by 1 nocache nomaxvalue;
	
	private int seq;
	private String menu_kor;
	private String menu_eng;
	private int price;
	private String business_id;
	private String business_name;
	private Date reg_date;
	private Date confirm_date;
	private String confirm_YN;
	private int biz_seq;

	public TranslateDTO() {
		super();
	}
	
	

	public TranslateDTO(int seq, String menu_kor, String menu_eng, int price) {
		super();
		this.seq = seq;
		this.menu_kor = menu_kor;
		this.menu_eng = menu_eng;
		this.price = price;
	}



	public TranslateDTO(String business_name, Date reg_date, String confirm_YN) {
		super();
		this.business_name = business_name;
		this.reg_date = reg_date;
		this.confirm_YN = confirm_YN;
	}

	public TranslateDTO(String menu_kor, String menu_eng, int price, String business_id, String business_name, int biz_seq) {
		super();
		this.menu_kor = menu_kor;
		this.menu_eng = menu_eng;
		this.price = price;
		this.business_id = business_id;
		this.business_name = business_name;
		this.biz_seq = biz_seq;
	}

	public TranslateDTO(int seq, String menu_eng) {
		super();
		this.seq = seq;
		this.menu_eng = menu_eng;
	}



	public TranslateDTO(int seq, String menu_kor, String menu_eng, int price, String business_id, String business_name,
			Date reg_date, Date confirm_date, String confirm_YN, int biz_seq) {
		super();
		this.seq = seq;
		this.menu_kor = menu_kor;
		this.menu_eng = menu_eng;
		this.price = price;
		this.business_id = business_id;
		this.business_name = business_name;
		this.reg_date = reg_date;
		this.confirm_date = confirm_date;
		this.confirm_YN = confirm_YN;
		this.biz_seq = biz_seq;
	}



	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getMenu_kor() {
		return menu_kor;
	}

	public void setMenu_kor(String menu_kor) {
		this.menu_kor = menu_kor;
	}

	public String getMenu_eng() {
		return menu_eng;
	}

	public void setMenu_eng(String menu_eng) {
		this.menu_eng = menu_eng;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getBusiness_id() {
		return business_id;
	}

	public void setBusiness_id(String business_id) {
		this.business_id = business_id;
	}

	public String getBusiness_name() {
		return business_name;
	}

	public void setBusiness_name(String business_name) {
		this.business_name = business_name;
	}

	public Date getReg_date() {
		return reg_date;
	}

	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}

	public Date getConfirm_date() {
		return confirm_date;
	}

	public void setConfirm_date(Date confirm_date) {
		this.confirm_date = confirm_date;
	}

	public String getConfirm_YN() {
		return confirm_YN;
	}

	public void setConfirm_YN(String confirm_YN) {
		this.confirm_YN = confirm_YN;
	}

	public int getBiz_seq() {
		return biz_seq;
	}

	public void setBiz_seq(int biz_seq) {
		this.biz_seq = biz_seq;
	}

	
	




}
