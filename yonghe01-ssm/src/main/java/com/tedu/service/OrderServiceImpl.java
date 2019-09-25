package com.tedu.service;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tedu.dao.OrderMapper;
import com.tedu.pojo.Order;

@Service
public class OrderServiceImpl implements OrderService{
	@Autowired
	OrderMapper orderMapper;

	public Order findById(Integer id) {
		// TODO Auto-generated method stub
		return orderMapper.findById(id);
	}

	public int addOrder(Integer course_id,String username,String payTime){
		return orderMapper.addOrder(course_id,username,payTime);
	}

	public List<Order> findAllOrder(String username) {
		// TODO Auto-generated method stub
		System.out.println("运行daoc层方法");

		return orderMapper.findAllOrder(username);
	
		
		
	}

	
}
