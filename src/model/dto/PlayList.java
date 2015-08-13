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
	
	private long video_id;
	private String video_name;	
	private String description1;
	private String youtube_url;
	private String doc_url;
	private Date create_date1;
	
	
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
	
	

	public long getVideo_id() {
		return video_id;
	}

	public void setVideo_id(long video_id) {
		this.video_id = video_id;
	}

	public String getVideo_name() {
		return video_name;
	}

	public void setVideo_name(String video_name) {
		this.video_name = video_name;
	}

	public String getDescription1() {
		return description1;
	}

	public void setDescription1(String description1) {
		this.description1 = description1;
	}

	public String getYoutube_url() {
		return youtube_url;
	}

	public void setYoutube_url(String youtube_url) {
		this.youtube_url = youtube_url;
	}

	public String getDoc_url() {
		return doc_url;
	}

	public void setDoc_url(String doc_url) {
		this.doc_url = doc_url;
	}

	public Date getCreate_date1() {
		return create_date1;
	}

	public void setCreate_date1(Date create_date1) {
		this.create_date1 = create_date1;
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
