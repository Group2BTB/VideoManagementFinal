package model.dto;

public class VideoPlaylist {
	private long video_id;
	private long playlist_id;
	public long getVideo_id() {
		return video_id;
	}
	public void setVideo_id(long video_id) {
		this.video_id = video_id;
	}
	public long getPlaylist_id() {
		return playlist_id;
	}
	public void setPlaylist_id(long playlist_id) {
		this.playlist_id = playlist_id;
	}
	public VideoPlaylist(long video_id, long playlist_id) {
		super();
		this.video_id = video_id;
		this.playlist_id = playlist_id;
	}
	public VideoPlaylist(){
		
	}
}
