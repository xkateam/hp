package com.tedu.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tedu.pojo.Account;
import com.tedu.pojo.Door;
import com.tedu.pojo.Teacher;
import com.tedu.pojo.Zhaopin;
import com.tedu.service.TeacherServiceImpl;
import com.tedu.util.AjaxJson;

@Controller
public class TeacherContoller {
	@Autowired
	TeacherServiceImpl teacherServiceImpl;
	
    @ResponseBody
	@RequestMapping("/TeacherTest")
	public List<Teacher> teacherList() {
		List<Teacher> list = teacherServiceImpl.findAll();
		return list;
}
    
	@RequestMapping("/teacher/teacherIndex")
	public String teacherIndex() {
		
		return "teacher/teacherIndex";
}
      
	@RequestMapping("/teacher/teacherInfo")
	public String teacherInfo() {
		
		return "teacher/teacherInfo";
}
	@RequestMapping("/teacher/selectTeacherInfoByusername")
	@ResponseBody
	public List<Teacher> selectTeacherInfoByusername(String username) {
		
		List<Teacher> list = teacherServiceImpl.selectTeacherInfoByusername(username);

		return list;
		
	}
	
	@RequestMapping("/teacher/updateTeacherInfoByusername")
	@ResponseBody
	public String updateTeacherInfoByusername(Teacher teacher) {
		
		
		System.out.println("teacher"+teacher.getUsername());
		
		teacherServiceImpl.updateTeacherInfoByusername(teacher);
		
		return "teacher/teacherInfo";
}
	
	@RequestMapping("/teacher/Application2")
	public String Application2() {
		
		return "teacher/Application2";
}
	
	@RequestMapping("/teacher/insertJobExpect")
	
	public String insertJobExpect(String username,String jobname,String jobcat,String jobDescription,String sallary,String joblocation,HttpServletRequest request, HttpServletRequest response) {
		
		teacherServiceImpl.insertJobExpect(username, jobname, jobcat, jobDescription, sallary, joblocation);
		
		System.out.println("11111111111111:"+jobcat);
		System.out.println("11111111111111:"+username);
		System.out.println("11111111111111:"+jobname);
		System.out.println("11111111111111:"+jobDescription);
		return "teacher/Application2";
		
	}
	
	@RequestMapping("/teacher/selectZhaopin")
	@ResponseBody
	public List<Zhaopin> selectZhaopin(String classLevel,String classInfo,String className) {
		
		
		List<Zhaopin> list = teacherServiceImpl.selectZhaopin(classLevel, classInfo,className);
		
		
		return list;
}
}
