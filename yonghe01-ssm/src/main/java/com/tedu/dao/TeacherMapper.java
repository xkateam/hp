package com.tedu.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.tedu.pojo.Teacher;
import com.tedu.pojo.Zhaopin;

public interface TeacherMapper {
	public List<Teacher> findAll() ;
	
	public List<Teacher> selectTeacherInfoByusername(String username);
	
	public void updateTeacherInfoByusername(Teacher teacher);
	
	public void insertJobExpect(@Param("username")String username,@Param("jobname")String jobname,@Param("jobcat")String jobcat,@Param("jobDescription")String jobDescription,@Param("sallary")String sallary,@Param("joblocation")String joblocation);

	public List<Zhaopin> selectZhaopin(@Param("classLevel")String classLevel,@Param("classInfo")String classInfo,@Param("className")String className);
}
