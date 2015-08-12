package model.dto;

import java.util.Date;

public class Comment {
	
	private long id;	
	private String description;
	private Date create_date;
	private long like;
	private long unlike;
	private long parent_id;
	private long userID;
	private long videoID;	
	private int view;
	
	public Comment(){
		
	}


	public Comment(long id, String description, Date create_date, long like,
			long unlike, long parent_id, long userID, long videoID, int view) {
		super();
		this.id = id;
		this.description = description;
		this.create_date = create_date;
		this.like = like;
		this.unlike = unlike;
		this.parent_id = parent_id;
		this.userID = userID;
		this.videoID = videoID;		
		this.view = view;
	}

	
	
	public int getView() {
		return view;
	}


	public void setView(int view) {
		this.view = view;
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


	public Date getCreate_date() {
		return create_date;
	}


	public void setCreate_date(Date create_date) {
		this.create_date = create_date;
	}


	public long getLike() {
		return like;
	}


	public void setLike(long like) {
		this.like = like;
	}


	public long getUnlike() {
		return unlike;
	}


	public void setUnlike(long unlike) {
		this.unlike = unlike;
	}


	public long getParent_id() {
		return parent_id;
	}


	public void setParent_id(long parent_id) {
		this.parent_id = parent_id;
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
	
}
