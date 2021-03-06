package com.tedu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.tedu.dao.AccountMapper;
import com.tedu.dao.CourseMapper;
import com.tedu.dao.DoorMapper;
import com.tedu.pojo.Account;
import com.tedu.pojo.Course;
@Service
public class CourseServiceImpl implements CourseService {
	@Autowired
	CourseMapper courseMapper;

	public Course findCourseById(Integer course_id) {
		// TODO Auto-generated method stub
		return courseMapper.findCourseById(course_id);
	}

	public List<Course> findAllCourse(String grade_description) {
		// TODO Auto-generated method stub
		return courseMapper.findAllCourse(grade_description);
	}

	public Integer getPriceByCourseId(Integer course_id) {
		// TODO Auto-generated method stub
		return courseMapper.getPriceByCourseId(course_id);
	}

	public PageInfo<Course> selectRoleList(Integer pageNum, Integer pageSize, String grade_description) {
		// TODO Auto-generated method stub
		PageHelper.startPage(pageNum, pageSize);
		List<Course> list = courseMapper.findAllCourse(grade_description);
		PageInfo<Course> pageInfo = new PageInfo<Course>(list);
		return pageInfo;

	}

	
	

}
