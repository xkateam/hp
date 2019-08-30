package com.tedu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tedu.dao.OrderMapper;
import com.tedu.pojo.Order;

@Service
public class OrderServiceImpl implements OrderService{
	@Autowired
	OrderMapper orderMapper;

	public List<Order> findAll() {
		// TODO Auto-generated method stub
		return orderMapper.orderList();
	}

	public Order findById(Integer id) {
		// TODO Auto-generated method stub
		return orderMapper.findById(id);
	}

	public int addOrder(Order order) {
		// TODO Auto-generated method stub
		return orderMapper.addOrder(order);
	}

	public int updateOrder(Order order) {
		// TODO Auto-generated method stub
		return orderMapper.updateOrder(order);
	}

	public int deleteOrder(Integer id) {
		// TODO Auto-generated method stub
		return orderMapper.deleteOrder(id);
	}
	
}
