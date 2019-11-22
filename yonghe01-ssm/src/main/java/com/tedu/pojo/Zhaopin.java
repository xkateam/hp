package com.tedu.pojo;

import java.util.Date;

public class Zhaopin {
	
	private String className ;
	private Date create_time  ;
	private String  salary;
	private String  username;
	private String  phone;
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public Date getCreate_time() {
		return create_time;
	}
	public void setCreate_time(Date create_time) {
		this.create_time = create_time;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	@Override
	public String toString() {
		return "Zhaopin [className=" + className + ", create_time=" + create_time + ", salary=" + salary + ", username="
				+ username + ", phone=" + phone + "]";
	}

}
