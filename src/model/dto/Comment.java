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

	private long id1;
	private String description1;
	private Date create_date1;
	private long like1;
	private long unlike1;
	private long userID1;
	private long videoID1;
	private int view1;
	
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

	
	
	public long getId1() {
		return id1;
	}


	public void setId1(long id1) {
		this.id1 = id1;
	}


	public String getDescription1() {
		return description1;
	}


	public void setDescription1(String description1) {
		this.description1 = description1;
	}


	public Date getCreate_date1() {
		return create_date1;
	}


	public void setCreate_date1(Date create_date1) {
		this.create_date1 = create_date1;
	}


	public long getLike1() {
		return like1;
	}


	public void setLike1(long like1) {
		this.like1 = like1;
	}


	public long getUnlike1() {
		return unlike1;
	}


	public void setUnlike1(long unlike1) {
		this.unlike1 = unlike1;
	}


	public long getUserID1() {
		return userID1;
	}


	public void setUserID1(long userID1) {
		this.userID1 = userID1;
	}


	public long getVideoID1() {
		return videoID1;
	}


	public void setVideoID1(long videoID1) {
		this.videoID1 = videoID1;
	}


	public int getView1() {
		return view1;
	}


	public void setView1(int view1) {
		this.view1 = view1;
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
