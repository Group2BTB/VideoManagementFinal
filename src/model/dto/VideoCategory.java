package model.dto;

public class VideoCategory {
	private long video_id;
	private int Category_id;
	public long getVideo_id() {
		return video_id;
	}
	public void setVideo_id(long video_id) {
		this.video_id = video_id;
	}
	public int getCategory_id() {
		return Category_id;
	}
	public void setCategory_id(int category_id) {
		Category_id = category_id;
	}
	public VideoCategory() {
		// TODO Auto-generated constructor stub
	}
	public VideoCategory(long video_id, int category_id) {
		super();
		this.video_id = video_id;
		Category_id = category_id;
	}
	
}
