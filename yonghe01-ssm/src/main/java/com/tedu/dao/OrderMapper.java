package com.tedu.dao;

import java.util.List;

import com.tedu.pojo.Order;

public interface OrderMapper {
	/**
	 * 查询所有订单
	 */
	public List<Order> orderList();
	
	/**
	 * 按id查询订单信息
	 */
	public Order findById(Integer id);
	
	/**
	 * 新增订单信息
	 */
	public int addOrder(Order order);
	
	/**
	 * 修改订单信息
	 */
	public int updateOrder(Order order);
	
	/**
	 * 删除订单信息
	 * @param id
	 * @return
	 */
	public int deleteOrder(Integer id);
}
