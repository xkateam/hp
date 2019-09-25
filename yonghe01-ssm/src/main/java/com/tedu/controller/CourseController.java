package com.tedu.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.parser.deserializer.StringFieldDeserializer;
import com.tedu.pojo.Account;
import com.tedu.pojo.Course;
import com.tedu.pojo.Login;
import com.tedu.service.AccountService;
import com.tedu.service.AccountServiceImpl;
import com.tedu.service.CourseService;
import com.tedu.service.CourseServiceImpl;
import com.tedu.service.OrderService;
import com.tedu.util.AjaxJson;

@Controller
public class CourseController {
	@Autowired
	private CourseService couseService;
	@Autowired
	private AccountService accountService;
	@Autowired
	private LoginController loginController;
	
	@Autowired
	private OrderService orderService;
	
	@RequestMapping("/course/findCourseById")	
	@ResponseBody
	public AjaxJson findCourseById(HttpServletRequest request, HttpServletResponse response,Integer course_id) {
		 
		AjaxJson j = new AjaxJson();
		// 课程管理
		
		Course course = (Course) couseService.findCourseById(course_id);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("data", course);
		j.setCode(0);
		j.setMsg("操作成功!");
		j.setData(map);
		System.out.println("进入课程查询controller了");
		System.out.println(couseService.findCourseById(course_id));
		return j;
		
	}
	
	//页面加载的时候返回所有课程的所有信息
		@RequestMapping("/course/findAllCourse")	
		@ResponseBody
		public AjaxJson findAllCourse(HttpServletRequest request, HttpServletResponse response,String grade_description) {
			System.out.println("所有课程查询开始。。。。。");
			AjaxJson j = new AjaxJson();
			// 学校列表
			List<Course> courses = couseService.findAllCourse(grade_description);
			
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("data", courses);
			j.setCode(0);
			j.setMsg("操作成功!");
			j.setData(map);
			return j;
			
		}
		@RequestMapping("/course/payPoint")
		@ResponseBody
		public AjaxJson toPayPonint(Integer course_id,HttpServletRequest request,String username){
			
			String message= null;
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String payTime= df.format(new Date());
		
			int price = couseService.getPriceByCourseId(course_id);
			System.out.println("拿到课程号"+course_id);
			System.out.println("拿到price"+price);
			System.out.println(price);
			System.out.println(username);
			
            int point_count = accountService.selectInfoByUsername(username).getPoint_count();
        	System.out.println("point_count"+point_count);
            if(price<=point_count){
            	accountService.updatePointCountByUsernameAndPrice(price,username);
    			System.out.println("正在进行购买");
    			System.out.println(payTime);
    			orderService.addOrder(course_id, username, payTime);
    			System.out.println("正在加入订单");
    			message="购买成功";
    	
            }
            else {
        		System.out.println("钱不够");
            	 message="购买失败，积分不足请进行充值";
            	
			}
        	AjaxJson j = new AjaxJson();
			// 学校列表
			
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("data", message);
			j.setCode(0);
			j.setMsg("操作成功!");
			j.setData(map);
			return j;
			
		}
		

	
}
