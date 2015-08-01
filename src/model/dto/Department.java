package model.dto;

public class Department {
	
	private long id;
	private String name;
	private String description;
	private long userID;
	private int status;
	private int approved;
	
	
	public Department(long id, String name, String description, long userID,
			int status, int approved) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.userID = userID;
		this.status = status;
		this.approved = approved;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public long getUserID() {
		return userID;
	}
	public void setUserID(long userID) {
		this.userID = userID;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public int getApproved() {
		return approved;
	}
	public void setApproved(int approved) {
		this.approved = approved;
	}
	
	
}
