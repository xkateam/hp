package com.tedu.pojo;



public class Order{
	
	private Integer order_id;
	private String create_time;
	private Integer course_id;
	public Integer getOrder_id() {
		return order_id;
	}
	public void setOrder_id(Integer order_id) {
		this.order_id = order_id;
	}
	public String getCreate_time() {
		return create_time;
	}
	public void setCreate_time(String create_time) {
		this.create_time = create_time;
	}
	public Integer getCourse_id() {
		return course_id;
	}
	public void setCourse_id(Integer course_id) {
		this.course_id = course_id;
	}
	public Order(Integer order_id, String create_time, Integer course_id) {
		super();
		this.order_id = order_id;
		this.create_time = create_time;
		this.course_id = course_id;
	}
	public Order() {
		super();
	}
	@Override
	public String toString() {
		return "Order [order_id=" + order_id + ", create_time=" + create_time + ", course_id=" + course_id + "]";
	}
	
	
}
