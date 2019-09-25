package com.tedu.pojo;

import java.io.Serializable;

public class Account implements Serializable{
	private Integer account_id;
	private String username;    
	private String real_name;
	private String gender;    
	private String phone;
	private String address;
	private String grade;    
	private String aboutMe;
	private Integer point_count;
	private String photo;
	public Integer getAccount_id() {
		return account_id;
	}
	public void setAccount_id(Integer account_id) {
		this.account_id = account_id;
	}
	public String getUsername() {
		return username;
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
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
	public Integer getPoint_count() {
		return point_count;
	}
	public void setPoint_count(Integer point_count) {
		this.point_count = point_count;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public Account(Integer account_id, String username, String real_name, String gender, String phone, String address,
			String grade, String aboutMe, Integer point_count, String photo) {
		super();
		this.account_id = account_id;
		this.username = username;
		this.real_name = real_name;
		this.gender = gender;
		this.phone = phone;
		this.address = address;
		this.grade = grade;
		this.aboutMe = aboutMe;
		this.point_count = point_count;
		this.photo = photo;
	}
	public Account() {
		super();
	}
	@Override
	public String toString() {
		return "Account [account_id=" + account_id + ", username=" + username + ", real_name=" + real_name + ", gender="
				+ gender + ", phone=" + phone + ", address=" + address + ", grade=" + grade + ", aboutMe=" + aboutMe
				+ ", point_count=" + point_count + ", photo=" + photo + "]";
	}
	
}
