package com.tedu.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tedu.pojo.Course;
import com.tedu.pojo.Door;
import com.tedu.pojo.Order;
import com.tedu.service.DoorServiceImpl;
import com.tedu.service.OrderService;
import com.tedu.service.OrderServiceImpl;
import com.tedu.util.AjaxJson;

import java.util.Iterator;
@Controller
public class OrderController {
	@Autowired
	OrderService orderService;
	
	/**
	 * 查询所有订单信息
	 * @param session
	 * @return
	 */

	@RequestMapping("/order/findAllOrder")	
	@ResponseBody
	public List<Order> getAllUser(String username){
			System.out.println("/order/findAllOrder,username:"+username);
		List<Order> list = new ArrayList<Order>();
		
		  list = orderService.findAllOrder(username);
		  System.out.println("size:"+list.size());
		  System.out.println("list:"+list);
		
		return list;
}

	
	@RequestMapping(value = "/student/orderList")
	public String userList(){

		return "student/orderList";
	}
}