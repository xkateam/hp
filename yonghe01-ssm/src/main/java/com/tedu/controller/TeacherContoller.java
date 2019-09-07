package com.tedu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tedu.pojo.Account;
import com.tedu.pojo.Door;
import com.tedu.pojo.Teacher;
import com.tedu.service.TeacherServiceImpl;

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
    
}
