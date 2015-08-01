package model.dto;

public class Vote {
	
	private long userID;
	private long videoID;
	private int level;
	
	
	public Vote(long userID, long videoID, int level) {
		super();
		this.userID = userID;
		this.videoID = videoID;
		this.level = level;
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
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	
	
	
}
