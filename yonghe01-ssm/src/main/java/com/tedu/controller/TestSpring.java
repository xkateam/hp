package com.tedu.controller;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.tedu.pojo.User;

/**
 *测试spring开发环境 
 */
public class TestSpring {
	public static void main(String[] args) {
		ClassPathXmlApplicationContext cpl = 
				new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		User user = (User)cpl.getBean("user");
		System.out.println(user);
	}
}
