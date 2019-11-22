package com.tedu.pojo;

public class Teacher {
	private String  teacher_name;
	private String  gender;
	private String  age;
	private String  phone;
	private String  email;
	private String  aboutMe;
	private String  username;
	private String  city_id;
	private String  teacherGrade;
	 public Teacher() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Teacher(String teacher_name, String gender, String age, String phone, String email, String aboutMe,
			String username, String city_id, String teacherGrade) {
		super();
		this.teacher_name = teacher_name;
		this.gender = gender;
		this.age = age;
		this.phone = phone;
		this.email = email;
		this.aboutMe = aboutMe;
		this.username = username;
		this.city_id = city_id;
		this.teacherGrade = teacherGrade;
	}
	public String getCity_id() {
		return city_id;
	}
	public void setCity_id(String city_id) {
		this.city_id = city_id;
	}
	public String getTeacherGrade() {
		return teacherGrade;
	}
	public void setTeacherGrade(String teacherGrade) {
		this.teacherGrade = teacherGrade;
	}	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getTeacher_name() {
		return teacher_name;
	}
	
	public void setTeacher_name(String teacher_name) {
		this.teacher_name = teacher_name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAboutMe() {
		return aboutMe;
	}
	public void setAboutMe(String aboutMe) {
		this.aboutMe = aboutMe;
	}
	@Override
	public String toString() {
		return "Teacher [teacher_name=" + teacher_name + ", gender=" + gender + ", age=" + age + ", phone=" + phone
				+ ", email=" + email + ", aboutMe=" + aboutMe + "]";
	}
	
	
	
}
