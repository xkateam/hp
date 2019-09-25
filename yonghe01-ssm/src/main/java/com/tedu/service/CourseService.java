package com.tedu.service;

import java.util.List;

import com.tedu.pojo.Account;
import com.tedu.pojo.Course;


public interface CourseService {
	public Course findCourseById(Integer course_id);
	public List<Course> findAllCourse(String grade_description);
	public Integer getPriceByCourseId(Integer course_id);
}


