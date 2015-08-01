package model.dto;

import java.util.Date;

public class History {
	
	private long id;
	private long userID;
	private long videoID;
	private Date create_date;
	
	
	public History(long id, long userID, long videoID, Date create_date) {
		super();
		this.id = id;
		this.userID = userID;
		this.videoID = videoID;
		this.create_date = create_date;
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
