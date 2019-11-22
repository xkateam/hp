package com.tedu.service;

import java.util.List;

import com.tedu.pojo.Teacher;
import com.tedu.pojo.Zhaopin;

public interface TeacherService {
	public List<Teacher> findAll();
	
	public List<Teacher> selectTeacherInfoByusername(String username);
	
	public void updateTeacherInfoByusername(Teacher teacher);
	
	public void insertJobExpect(String username,String jobname,String jobcat,String jobDescription,String sallary,String joblocation);
	
	public List<Zhaopin> selectZhaopin(String classLevel,String classInfo,String className);
}
