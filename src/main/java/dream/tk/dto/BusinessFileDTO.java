package dream.tk.dto;

import java.sql.Date;

public class BusinessFileDTO {
	private int seq;
	private String oriName;
	private String sysName;
	private String parent_id;
	private Date reg_date;
	private String businessnameeng;
	private String biz_seq;
	
	


	public BusinessFileDTO(String sysName, String businessnameeng, String biz_seq) {
		super();
		this.sysName = sysName;
		this.businessnameeng = businessnameeng;
		this.biz_seq = biz_seq;
	}

	public BusinessFileDTO() {
		super();
	}

	public BusinessFileDTO(int seq, String oriName, String sysName, String parent_id, Date reg_date) {
		super();
		this.seq = seq;
		this.oriName = oriName;
		this.sysName = sysName;
		this.parent_id = parent_id;
		this.reg_date = reg_date;
	}

	
	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getOriName() {
		return oriName;
	}

	public void setOriName(String oriName) {
		this.oriName = oriName;
	}

	public String getSysName() {
		return sysName;
	}

	public void setSysName(String sysName) {
		this.sysName = sysName;
	}

	public String getParent_id() {
		return parent_id;
	}

	public void setParent_id(String parent_id) {
		this.parent_id = parent_id;
	}

	public Date getReg_date() {
		return reg_date;
	}

	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}

	public String getBusinessnameeng() {
		return businessnameeng;
	}

	public void setBusinessnameeng(String businessnameeng) {
		this.businessnameeng = businessnameeng;
	}

	public String getBiz_seq() {
		return biz_seq;
	}

	public void setBiz_seq(String biz_seq) {
		this.biz_seq = biz_seq;
	}


//	create table business_file(
//			seq number ,
//			oriName varchar2(200),
//			sysName varchar2(200),
//			parent_id varchar2(20),
//			reg_date date default sysdate
//			);
	
//	create sequence business_file_seq start with 1 increment by 1 NOCACHE NOMAXVALUE;
	
	
	
	
}
