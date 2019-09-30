package com.tedu.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.parser.deserializer.StringFieldDeserializer;
import com.fasterxml.jackson.annotation.JsonTypeInfo.Id;
import com.tedu.pojo.Account;
import com.tedu.pojo.Door;
import com.tedu.pojo.Login;
import com.tedu.pojo.Regist;
import com.tedu.service.AccountService;
import com.tedu.service.DoorServiceImpl;
import com.tedu.service.LoginService;
import com.tedu.service.LoginServiceImpl;

@Controller
public class LoginController {

	@Autowired
	LoginService loginService;

	@RequestMapping("/teacherInfo")
	public String teacher() {
		return "student/teacherInfo";
	}

	@RequestMapping("/personInfo")
	public String personInfo() {
		return "student/personInfo";
	}

	@RequestMapping("/login")
	public String login() {
		return "user/login";
	}

	@RequestMapping(value = "/checkAccountInfo", method = RequestMethod.POST)
	@ResponseBody
	public Login checkAccoutnInfo(String username, String password, HttpSession session) {
		Login login = null;
		if (loginService.checkLogin(username, password) != null) {
			System.out.println("登录成功");
			login = loginService.checkLogin(username, password);
			session.setAttribute("current_user", login);
		} else {
			System.out.println("密码或者用户名不正确");
		}
		return login;
	}

	@RequestMapping(value = "/success", method = RequestMethod.POST)
	@ResponseBody
	public Integer success(String username) {
		return loginService.checkRole(username);

	}
	@ResponseBody
	@RequestMapping(value = "/user/regist")
	public ModelAndView regist() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("user/regist");
		return modelAndView;
	}
	
	
	@ResponseBody
	@RequestMapping(value = "/user/addAccount")
	public void addAccount(String username,String password,String phone,String role) {
		System.out.println("正在执行注册！！！");
		loginService.addLogin(username, password, phone,role);
		System.out.println("addLogin正在执行");
		loginService.addAccount(username, password, phone,role);
		System.out.println("addAccout正在执行！！！1");
		
	}
}
