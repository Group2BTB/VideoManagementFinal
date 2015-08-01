package model.dto;

public class Like {
	
	private long id;
	private long videoID;
	private int status;
	
	public Like(){
		
	}
	public Like(long id, long videoID, int status) {
		super();
		this.id = id;
		this.videoID = videoID;
		this.status = status;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public long getVideoID() {
		return videoID;
	}
	public void setVideoID(long videoID) {
		this.videoID = videoID;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
}
