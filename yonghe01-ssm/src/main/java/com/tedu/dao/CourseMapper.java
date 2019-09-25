package com.tedu.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.tedu.pojo.Account;
import com.tedu.pojo.Course;

public interface CourseMapper {
	public Course findCourseById(Integer course_id);
	
	public List<Course> findAllCourse(String grade_description);

	public Integer getPriceByCourseId(Integer course_id);
	
}
