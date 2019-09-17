package com.tedu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	

}
