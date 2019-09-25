package com.tedu.dao;

import java.sql.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.tedu.pojo.Order;

public interface OrderMapper {
	/**
	 * 查询所有订单
	 */
	public List<Order> findAllOrder(String username);
	
	/**
	 * 按id查询订单信息
	 */
	public Order findById(Integer id);
	
	/**
	 * 新增订单信息
	 */
	public int addOrder(@Param("course_id")Integer course_id,@Param("username")String username,@Param("payTime")String payTime);

	public List<Order> orderList(String username);
	

}
