package model.dto;

import java.util.Date;

public class WatchLater {

	private long id;
	private Date create_date;
	private long user_id;
	private long video_id;
	
	public WatchLater(){
		
	}
	
	public WatchLater(long id, Date create_date, long user_id, long video_id) {
		super();
		this.id = id;
		this.create_date = create_date;
		this.user_id = user_id;
		this.video_id = video_id;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public Date getCreate_date() {
		return create_date;
	}

	public void setCreate_date(Date create_date) {
		this.create_date = create_date;
	}

	public long getUser_id() {
		return user_id;
	}

	public void setUser_id(long user_id) {
		this.user_id = user_id;
	}

	public long getVideo_id() {
		return video_id;
	}

	public void setVideo_id(long video_id) {
		this.video_id = video_id;
	}
	
}
