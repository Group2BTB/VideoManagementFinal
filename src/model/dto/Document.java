package model.dto;

import java.util.Date;

public class Document {
	
	private long id;
	private String name;
	private Date create_date;
	
	public Document(){
		
	}
	public Document(long id, String name, Date create_date, long userID,
			int status, int approved) {
		super();
		this.id = id;
		this.name = name;
		this.create_date = create_date;
		this.userID = userID;
		this.status = status;
		this.approved = approved;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getCreate_date() {
		return create_date;
	}
	public void setCreate_date(Date create_date) {
		this.create_date = create_date;
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
	private long userID;
	private int status;
	private int approved;
}
