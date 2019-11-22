package com.tedu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tedu.dao.DoorMapper;
import com.tedu.dao.TeacherMapper;
import com.tedu.pojo.Teacher;
import com.tedu.pojo.Zhaopin;

@Service
public class TeacherServiceImpl implements TeacherService {
	@Autowired
	TeacherMapper teacherMapper;
	
	public List<Teacher> findAll() {
		return teacherMapper.findAll();
	}

	public List<Teacher> selectTeacherInfoByusername(String username) {
		// TODO Auto-generated method stub
		return teacherMapper.selectTeacherInfoByusername(username);
	}

	public void updateTeacherInfoByusername(Teacher teacher) {
		// TODO Auto-generated method stub
		teacherMapper.updateTeacherInfoByusername(teacher);
	}

	public void insertJobExpect(String username, String jobname, String jobcat, String jobDescription, String sallary,
			String joblocation) {
		// TODO Auto-generated method stub
		teacherMapper.insertJobExpect(username, jobname, jobcat, jobDescription, sallary, joblocation);
	}

	public List<Zhaopin> selectZhaopin(String classLevel, String classInfo,String className) {
		// TODO Auto-generated method stub
		return teacherMapper.selectZhaopin(classLevel, classInfo,className);
	}
}
