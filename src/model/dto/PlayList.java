package model.dto;

import java.util.Date;

public class PlayList {
	
	private long id;
	private String name;
	private String description;	
	private int category_id;
	private Date create_date;
	private Date modifier_date;
	private int status;
	private int approved=1;
	
	public PlayList(){
		
	}

	public PlayList(long id, String name, String description, int category_id,
			Date create_date, Date modifier_date, int status, int approved) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.category_id = category_id;
		this.create_date = create_date;
		this.modifier_date = modifier_date;
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

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getCategory_id() {
		return category_id;
	}

	public void setCategory_id(int category_id) {
		this.category_id = category_id;
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
