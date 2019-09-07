package com.tedu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tedu.dao.DoorMapper;
import com.tedu.dao.TeacherMapper;
import com.tedu.pojo.Teacher;

@Service
public class TeacherServiceImpl {
	@Autowired
	TeacherMapper teacherMapper;
	
	public List<Teacher> findAll() {
		return teacherMapper.findAll();
	}
}
