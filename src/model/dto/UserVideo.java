package model.dto;

public class UserVideo {

	private long user_id;
	private long video_id;
	private String time;
	private String percent;
	
	
	public UserVideo(){
		
	}
	public UserVideo(long user_id, long video_id, String time, String percent) {
		super();
		this.user_id = user_id;
		this.video_id = video_id;
		this.time = time;
		this.percent = percent;
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
	
	
}
