package com.tedu.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tedu.pojo.Door;
import com.tedu.pojo.Order;
import com.tedu.service.DoorServiceImpl;
import com.tedu.service.OrderServiceImpl;

@Controller
public class OrderController {
	@Autowired
	OrderServiceImpl orderServiceImpl;
	@Autowired
	DoorServiceImpl doorServiceImpl;
	
	/**
	 * 查询所有订单信息
	 * @param session
	 * @return
	 */
	@RequestMapping("/orderList")
	public String selectAll(HttpSession session) {
		List<Order> orderList = orderServiceImpl.findAll();
		session.setAttribute("list", orderList);
		return "order_list";
	}
	
	/**
	 * 跳转到新增订单页面，查询所有门店信息
	 * @param session
	 * @return
	 */
	@RequestMapping("/order_add")
	public String toAddOrder(HttpSession session) {
		List<Door> doorList = doorServiceImpl.findAll();
		session.setAttribute("doorList", doorList);
		return "order_add";
	}
	
	/**
	 * 新增订单信息
	 * @param order
	 * @return
	 */
	@RequestMapping(value="/orderAdd",method=RequestMethod.POST)
	public String addOrder(Order order) {
		int count = orderServiceImpl.addOrder(order);
		if(count>0) {
			return "redirect:/orderList";
		}else {
			return "order_add";
		}
	}
	
	/**
	 * 修改订单信息，跳转到修改页面
	 */
	@RequestMapping("/orderInfo")
	public String orderInfo(int id,HttpSession session) {
		Order order = orderServiceImpl.findById(id);
		List<Door> doorList = doorServiceImpl.findAll();
		session.setAttribute("doorList", doorList);
		session.setAttribute("order", order);
		return "order_update";
	} 
	
	/**
	 * 修改订单信息
	 */
	@RequestMapping(value="/orderUpdate",method=RequestMethod.POST)
	public String orderUpdate(Order order) {
		System.out.println("asdasdsad-----------");
		int count = orderServiceImpl.updateOrder(order);
		if(count>0) {
			return "redirect:/orderList";
		}else {
			return "order_update";
		}
	}
	
	@RequestMapping("/orderDelete")
	public String orderDelete(Integer id) {
		orderServiceImpl.deleteOrder(id);
		return "redirect:/orderList";
	}
}
