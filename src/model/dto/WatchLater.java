package model.dto;

import java.util.Date;

public class WatchLater {

	private long id;
	private Date create_date;
	private long user_id;
	private long video_id;
	
	private String video_name;
	private String user_name;
	private String youtube_url;
	private long view;
	
	
	public WatchLater(){
		
	}
	
	public WatchLater(long id, Date create_date, long user_id, long video_id) {
		super();
		this.id = id;
		this.create_date = create_date;
		this.user_id = user_id;
		this.video_id = video_id;
	}
	
	
	public String getVideo_name() {
		return video_name;
	}

	public void setVideo_name(String video_name) {
		this.video_name = video_name;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getYoutube_url() {
		return youtube_url;
	}

	public void setYoutube_url(String youtube_url) {
		this.youtube_url = youtube_url;
	}

	public long getView() {
		return view;
	}

	public void setView(long view) {
		this.view = view;
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
