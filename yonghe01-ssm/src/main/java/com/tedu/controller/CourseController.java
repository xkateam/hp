package com.tedu.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tedu.pojo.Account;
import com.tedu.pojo.Course;
import com.tedu.service.AccountService;
import com.tedu.service.CourseService;
import com.tedu.service.CourseServiceImpl;
import com.tedu.util.AjaxJson;

@Controller
public class CourseController {
	@Autowired
	private CourseService couseService;
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
	
}
