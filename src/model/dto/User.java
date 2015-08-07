package model.dto;

import java.util.Date;

public class User {
	
	private long id;
	private String name;
	private String passwd;
	private String email;
	private String fullName;
	private String gender;
	
//	private long parentID;
	private String role;
	private int status;
	private int approved;
	private Date register_date;
//	private Date modifier_date;
	private int departID;
	private String phone;
	private String profile;
	private Date DOB;
	private int university;
	
	public User(){
		
	}

	public User(long id, String name, String passwd, String email,
			String fullName, String gender, String role, int status,
			int approved, Date register_date, int departID, String phone,
			String profile, Date dOB, int university) {
		super();
		this.id = id;
		this.name = name;
		this.passwd = passwd;
		this.email = email;
		this.fullName = fullName;
		this.gender = gender;
		this.role = role;
		this.status = status;
		this.approved = approved;
		this.register_date = register_date;
		this.departID = departID;
		this.phone = phone;
		this.profile = profile;
		DOB = dOB;
		this.university = university;
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

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
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

	public Date getRegister_date() {
		return register_date;
	}

	public void setRegister_date(Date register_date) {
		this.register_date = register_date;
	}

	public int getDepartID() {
		return departID;
	}

	public void setDepartID(int departID) {
		this.departID = departID;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

	public Date getDOB() {
		return DOB;
	}

	public void setDOB(Date dOB) {
		DOB = dOB;
	}

	public int getUniversity() {
		return university;
	}

	public void setUniversity(int university) {
		this.university = university;
	}
	
}
