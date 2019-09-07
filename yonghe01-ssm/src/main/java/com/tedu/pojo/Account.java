package com.tedu.pojo;

import java.io.Serializable;

public class Account implements Serializable{
	private int account_id;
	
	private String username;    
	private String real_name;
	private String gender;    
	private String phone;
	private String address;
	private String grade;    
	private String aboutMe;
	
	public int getAccount_id() {
		return account_id;
	}

	public void setAccount_id(int account_id) {
		this.account_id = account_id;
	}
	public String getUsername() {
		return username;
	}
	
	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public void setUsername(String username) {
		this.username = username;
	}
	public String getReal_name() {
		return real_name;
	}
	public void setReal_name(String real_name) {
		this.real_name = real_name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}

	
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getAboutMe() {
		return aboutMe;
	}
	public void setAboutMe(String aboutMe) {
		this.aboutMe = aboutMe;
	}
	@Override
	public String toString() {
		return "Account [username=" + username + ", real_name=" + real_name + ", gender=" + gender + ", phone=" + phone
				+ ", address=" + address + ", grade=" + grade + ", aboutMe=" + aboutMe + "]";
	}
	public Account(String username, String real_name, String gender, String phone, String address,
			String grade, String aboutMe) {
		super();
		this.username = username;
		this.real_name = real_name;
		this.gender = gender;
		this.phone = phone;
		this.address = address;
		this.grade = grade;
		this.aboutMe = aboutMe;
	}
	public Account() {
		super();
	}
	
	
}
