package model.dto;

import java.util.Date;

public class Answer {
	
	private long id;
	private String description;
	private long question_id;	
	private Date create_date;	
	private long uerID;
	private int status;
	private int approved;
	
	public Answer(){
		
	}
	public Answer(long id, String description, long question_id,
			Date create_date, long uerID, int status, int approved) {
		super();
		this.id = id;
		this.description = description;
		this.question_id = question_id;
		this.create_date = create_date;
		this.uerID = uerID;
		this.status = status;
		this.approved = approved;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public long getQuestion_id() {
		return question_id;
	}
	public void setQuestion_id(long question_id) {
		this.question_id = question_id;
	}
	public Date getCreate_date() {
		return create_date;
	}
	public void setCreate_date(Date create_date) {
		this.create_date = create_date;
	}
	public long getUerID() {
		return uerID;
	}
	public void setUerID(long uerID) {
		this.uerID = uerID;
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
}
