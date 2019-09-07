package com.tedu.pojo;

public class Teacher {
	private int teacherId;
	private String  teacherName;
	private String  teacherGender;
	private String  teacherPhone;
	private String  teacherGrade;
	private String  teacherCourse;
	public int getTeacherId() {
		return teacherId;
	}
	public void setTeacherId(int teacherId) {
		this.teacherId = teacherId;
	}
	public String getTeacherName() {
		return teacherName;
	}
	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}
	public String getTeacherGender() {
		return teacherGender;
	}
	public void setTeacherGender(String teacherGender) {
		this.teacherGender = teacherGender;
	}
	public String getTeacherPhone() {
		return teacherPhone;
	}
	public void setTeacherPhone(String teacherPhone) {
		this.teacherPhone = teacherPhone;
	}
	public String getTeacherGrade() {
		return teacherGrade;
	}
	public void setTeacherGrade(String teacherGrade) {
		this.teacherGrade = teacherGrade;
	}
	public String getTeacherCourse() {
		return teacherCourse;
	}
	public void setTeacherCourse(String teacherCourse) {
		this.teacherCourse = teacherCourse;
	}
	public Teacher(int teacherId, String teacherName, String teacherGender, String teacherPhone, String teacherGrade,
			String teacherCourse) {
		super();
		this.teacherId = teacherId;
		this.teacherName = teacherName;
		this.teacherGender = teacherGender;
		this.teacherPhone = teacherPhone;
		this.teacherGrade = teacherGrade;
		this.teacherCourse = teacherCourse;
	}
	public Teacher() {
		super();
	}
	@Override
	public String toString() {
		return "Teacher [teacherId=" + teacherId + ", teacherName=" + teacherName + ", teacherGender=" + teacherGender
				+ ", teacherPhone=" + teacherPhone + ", teacherGrade=" + teacherGrade + ", teacherCourse="
				+ teacherCourse + "]";
	}
	
	
}
