package com.tedu.pojo;

public class Course {
	private Integer course_id;
	private String subject_id;
	private Integer grade_id;
	private String teacher_name;
	private Integer price ;
	private String city_name;	
	private String teacher_phone;
	private String view;
	private String grade_description;
	public Integer getCourse_id() {
		return course_id;
	}
	public void setCourse_id(Integer course_id) {
		this.course_id = course_id;
	}

	public String getSubject_id() {
		return subject_id;
	}
	public void setSubject_id(String subject_id) {
		this.subject_id = subject_id;
	}
	public Integer getGrade_id() {
		return grade_id;
	}
	public void setGrade_id(Integer grade_id) {
		this.grade_id = grade_id;
	}
	public String getTeacher_name() {
		return teacher_name;
	}
	public void setTeacher_name(String teacher_name) {
		this.teacher_name = teacher_name;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public String getCity_name() {
		return city_name;
	}
	public void setCity_name(String city_name) {
		this.city_name = city_name;
	}
	public String getTeacher_phone() {
		return teacher_phone;
	}
	public void setTeacher_phone(String teacher_phone) {
		this.teacher_phone = teacher_phone;
	}
	public String getView() {
		return view;
	}
	public void setView(String view) {
		this.view = view;
	}
	public String getGrade_description() {
		return grade_description;
	}
	public void setGrade_description(String grade_description) {
		this.grade_description = grade_description;
	}
	public Course(Integer course_id, String subject_id, Integer grade_id, String teacher_name, Integer price,
			String city_name, String teacher_phone, String view, String grade_description) {
		super();
		this.course_id = course_id;
		this.subject_id = subject_id;
		this.grade_id = grade_id;
		this.teacher_name = teacher_name;
		this.price = price;
		this.city_name = city_name;
		this.teacher_phone = teacher_phone;
		this.view = view;
		this.grade_description = grade_description;
	}
	public Course() {
		super();
	}
	@Override
	public String toString() {
		return "Course [course_id=" + course_id + ", subject_id=" + subject_id + ", grade_id=" + grade_id
				+ ", teacher_name=" + teacher_name + ", price=" + price + ", city_name=" + city_name
				+ ", teacher_phone=" + teacher_phone + ", view=" + view + ", grade_description=" + grade_description
				+ "]";
	}
	
	}
