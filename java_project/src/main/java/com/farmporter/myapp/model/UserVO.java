package com.farmporter.myapp.model;

import java.util.Date;

public class UserVO {
	private String userId;
	private String name;
	private String password;	
	private Date birthDate;
	private String email;
	
	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Date getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	@Override
	public String toString() {
		return "UserVO [userId=" + userId + ", name=" + name + ", password=" + password
				+ ", birthDate=" + birthDate + ", email=" + email+ "]";
	}

}
