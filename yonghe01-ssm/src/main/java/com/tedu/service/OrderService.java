package com.tedu.service;

import java.sql.Date;
import java.util.List;

import com.tedu.pojo.Order;

public interface OrderService {
	/**
	 * 查询所有订单
	 */
	public List<Order> findAllOrder(String username);
	

	/**
	 * 新增订单信息
	 */
	public int addOrder(Integer course_id,String username,String payTime);
	

}
