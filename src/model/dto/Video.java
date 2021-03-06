package model.dto;

import java.util.Date;

public class Video {
	
	private long id;
	private String name;
	private String description;
	private String url;
	private String docUrl;
	private Date create_date;
	private Date modifier_date;
	private long uerID;
	private int status;
	private int approved=1;
	private long view;	
	private int category_id;
	
	private String username;
	private String time;
	private String percent;
	
	
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getPercent() {
		return percent;
	}

	public void setPercent(String percent) {
		this.percent = percent;
	}

	public int getCategory_id() {
		return category_id;
	}

	public void setCategory_id(int category_id) {
		this.category_id = category_id;
	}

	public Video(){
		
	}	

	public Video(long id, String name, String description, String url,
			String docUrl, Date create_date, Date modifier_date, long uerID,
			int status, int approved, long view, int category_id) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.url = url;
		this.docUrl = docUrl;
		this.create_date = create_date;
		this.modifier_date = modifier_date;
		this.uerID = uerID;
		this.status = status;
		this.approved = approved;
		this.view = view;
		this.category_id = category_id;
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

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getDocUrl() {
		return docUrl;
	}

	public void setDocUrl(String docUrl) {
		this.docUrl = docUrl;
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

	public long getView() {
		return view;
	}

	public void setView(long view) {
		this.view = view;
	}

}
