package model.dto;

import java.util.Date;

public class History {
	
	private long id;
	private long userID;
	private long videoID;
	private Date create_date;
	
	private String video_name;
	private String description;
	private String youtube_url;
	private String document_url;
	private long view;
	private String username;
	private String time;
	private String percent;
	
	public History(){
		
	}
	public History(long id, long userID, long videoID, Date create_date) {
		super();
		this.id = id;
		this.userID = userID;
		this.videoID = videoID;
		this.create_date = create_date;
	}
	
	
	
	public String getVideo_name() {
		return video_name;
	}
	public void setVideo_name(String video_name) {
		this.video_name = video_name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getYoutube_url() {
		return youtube_url;
	}
	public void setYoutube_url(String youtube_url) {
		this.youtube_url = youtube_url;
	}
	public String getDocument_url() {
		return document_url;
	}
	public void setDocument_url(String document_url) {
		this.document_url = document_url;
	}
	public long getView() {
		return view;
	}
	public void setView(long view) {
		this.view = view;
	}
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
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public long getUserID() {
		return userID;
	}
	public void setUserID(long userID) {
		this.userID = userID;
	}
	public long getVideoID() {
		return videoID;
	}
	public void setVideoID(long videoID) {
		this.videoID = videoID;
	}
	public Date getCreate_date() {
		return create_date;
	}
	public void setCreate_date(Date create_date) {
		this.create_date = create_date;
	}
}
