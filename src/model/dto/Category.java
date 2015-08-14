package model.dto;

import java.util.Date;

public class Category {

	private int id;
	private String name;
	private String description;
	private String logo;
	private int parent_id;
	private int status;
	private long userID;
	private Date create_date;
	private Date modifier_date;
	private long plId;
	
	public Category(){
		
	}
	public Category(int id, String name, String description, String logo,
			int parent_id, int status, long userID, Date create_date,
			Date modifier_date) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.logo = logo;
		this.parent_id = parent_id;
		this.status = status;
		this.userID = userID;
		this.create_date = create_date;
		this.modifier_date = modifier_date;
	}
	
	
	
	public long getPlId() {
		return plId;
	}
	public void setPlId(long plId) {
		this.plId = plId;
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
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getLogo() {
		return logo;
	}
	public void setLogo(String logo) {
		this.logo = logo;
	}
	public int getParent_id() {
		return parent_id;
	}
	public void setParent_id(int parent_id) {
		this.parent_id = parent_id;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public long getUserID() {
		return userID;
	}
	public void setUserID(long userID) {
		this.userID = userID;
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
