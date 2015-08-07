package model.dto;

import java.util.Date;

public class University {

	private int id;
	private String name;
	private String short_name;
	private String address;	
	private int status;	
	private Date create_date;
	private String logo;
	
	public University(){
		
	}

	public University(int id, String name, String short_name, String address,
			int status, Date create_date, String logo) {
		super();
		this.id = id;
		this.name = name;
		this.short_name = short_name;
		this.address = address;
		this.status = status;
		this.create_date = create_date;
		this.logo = logo;
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

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public Date getCreate_date() {
		return create_date;
	}

	public void setCreate_date(Date create_date) {
		this.create_date = create_date;
	}

	public String getLogo() {
		return logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}
	
	
}
