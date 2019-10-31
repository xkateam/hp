package com.tedu.pojo;

import java.io.Serializable;
import java.util.Date;

import com.mysql.jdbc.Util;

public class Zpinfo  {
	private Integer zpxx_id;
	private String subject_id;
	private String grade_id;
	private String teacher_name;
	private Integer price ;
	private String city_name;	
	private String teacher_phone;
	private Date start_time;
	private Date finish_time;
	

	@Override
	public String toString() {
		return "Zpinfo [zpxx_id=" + zpxx_id + ", subject_id=" + subject_id + ", grade_id=" + grade_id
				+ ", teacher_name=" + teacher_name + ", price=" + price + ", city_name=" + city_name
				+ ", teacher_phone=" + teacher_phone + ", start_time=" + start_time + ", finish_time=" + finish_time
				+ "]";
	}
	public Zpinfo() {
		super();
	}
	public Zpinfo(Integer zpxx_id, String subject_id, String grade_id, String teacher_name, Integer price,
			String city_name, String teacher_phone, Date start_time, Date finish_time) {
		super();
		this.zpxx_id = zpxx_id;
		this.subject_id = subject_id;
		this.grade_id = grade_id;
		this.teacher_name = teacher_name;
		this.price = price;
		this.city_name = city_name;
		this.teacher_phone = teacher_phone;
		this.start_time = start_time;
		this.finish_time = finish_time;
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
	public Date getStart_time() {
		return start_time;
	}
	public void setStart_time(Date start_time) {
		this.start_time = start_time;
	}
	public Date getFinish_time() {
		return finish_time;
	}
	public void setFinish_time(Date finish_time) {
		this.finish_time = finish_time;
	}
	public void setZpxx_id(Integer zpxx_id) {
		this.zpxx_id = zpxx_id;
	}
	public Integer getZpxx_id() {
		return zpxx_id;
	}
	public String getSubject_id() {
		return subject_id;
	}
	public void setSubject_id(String subject_id) {
		this.subject_id = subject_id;
	}
	public String getGrade_id() {
		return grade_id;
	}
	public void setGrade_id(String grade_id) {
		this.grade_id = grade_id;
	}
	
	
	
}
