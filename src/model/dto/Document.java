package model.dto;

import java.util.Date;

public class Document {
	
	private long id;
	private String name;
	private Date create_date;	
	private int status;
		
	public Document(){
		
	}

	public Document(long id, String name, Date create_date, int status) {
		super();
		this.id = id;
		this.name = name;
		this.create_date = create_date;
		this.status = status;
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

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}
	
	
}
