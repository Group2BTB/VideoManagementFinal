package model.dto;

import java.util.Date;

public class Question {
	
	private long id;
	private String description;
	private long videoID;
	private long answer_id;
	private Date create_date;
	private int status;	
	private String answer;
	private int correct;
	
	public Question(){
		
	}

	public Question(long id, String description, long videoID, long answer_id,
			Date create_date, int status, int correct) {
		super();
		this.id = id;
		this.description = description;
		this.videoID = videoID;
		this.answer_id = answer_id;
		this.create_date = create_date;
		this.status = status;
		this.correct = correct;
		
	}

	
	public int getCorrect() {
		return correct;
	}

	public void setCorrect(int correct) {
		this.correct = correct;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
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

	public long getVideoID() {
		return videoID;
	}

	public void setVideoID(long videoID) {
		this.videoID = videoID;
	}

	public long getAnswer_id() {
		return answer_id;
	}

	public void setAnswer_id(long answer_id) {
		this.answer_id = answer_id;
	}

	public Date getCreate_date() {
		return create_date;
	}

	public void setCreate_date(Date create_date) {
		this.create_date = create_date;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	
}
