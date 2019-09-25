package com.tedu.pojo;



public class Order2{
	
	private Integer order_id;
	private String username;
	private String create_time;
	private String grade_description;
	private String teacher_name;
	private Integer price;
	public Integer getOrder_id() {
		return order_id;
	}
	public void setOrder_id(Integer order_id) {
		this.order_id = order_id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getCreate_time() {
		return create_time;
	}
	public void setCreate_time(String create_time) {
		this.create_time = create_time;
	}
	public String getGrade_description() {
		return grade_description;
	}
	public void setGrade_description(String grade_description) {
		this.grade_description = grade_description;
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
	public Order2(Integer order_id, String username, String create_time, String grade_description, String teacher_name,
			Integer price) {
		super();
		this.order_id = order_id;
		this.username = username;
		this.create_time = create_time;
		this.grade_description = grade_description;
		this.teacher_name = teacher_name;
		this.price = price;
	}
	public Order2() {
		super();
	}
	@Override
	public String toString() {
		return "Order2 [order_id=" + order_id + ", username=" + username + ", create_time=" + create_time
				+ ", grade_description=" + grade_description + ", teacher_name=" + teacher_name + ", price=" + price
				+ "]";
	}
	
	
}
