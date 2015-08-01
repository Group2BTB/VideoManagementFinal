package model.dto;

import java.util.Date;

public class University {

	private int id;
	private String name;
	private String short_name;
	private String address;
	private long userID;
	private int status;
	private int approved;
	private Date create_date;
	private Date modifier_date;
	
	public University(){
		
	}
	public University(int id, String name, String short_name, String address,
			long userID, int status, int approved, Date create_date,
			Date modifier_date) {
		super();
		this.id = id;
		this.name = name;
		this.short_name = short_name;
		this.address = address;
		this.userID = userID;
		this.status = status;
		this.approved = approved;
		this.create_date = create_date;
		this.modifier_date = modifier_date;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getShort_name() {
		return short_name;
	}
	public void setShort_name(String short_name) {
		this.short_name = short_name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public long getUserID() {
		return userID;
	}
	public void setUserID(long userID) {
		this.userID = userID;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public int getApproved() {
		return approved;
	}
	public void setApproved(int approved) {
		this.approved = approved;
	}
	public Date getCreate_date() {
		return create_date;
	}
	public void setCreate_date(Date create_date) {
		this.create_date = create_date;
	}
	public Date getModifier_date() {
		return modifier_date;
	}
	public void setModifier_date(Date modifier_date) {
		this.modifier_date = modifier_date;
	}
			
}
