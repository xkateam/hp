package com.tedu.controller;

import java.util.List;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tedu.pojo.Account;
import com.tedu.pojo.Login;
import com.tedu.pojo.Teacher;
import com.tedu.service.AccountService;
import com.tedu.util.AjaxJson;



import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class StudentController {
	@Autowired
	private AccountService accountService;
	@RequestMapping("/student/selectAccountInfo1")	
	@ResponseBody
	public AjaxJson chaxun2(HttpServletRequest request, HttpServletResponse response, String username) {
		AjaxJson j = new AjaxJson();
		// 学校列表
		Account account = accountService.selectInfoByUsername("zhangsan");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("data", account);
		j.setCode(0);
		j.setMsg("操作成功!");
		j.setData(map);
		return j;
		
	}
	
	@RequestMapping(value="/student/studentIndex")
	public String index(String username) {
		return "student/studentIndex";
}
	
	@RequestMapping(value="/student/selectAccountInfo",method=RequestMethod.POST)
	@ResponseBody
	public Account chaxun(String username) {
		System.out.println("进入查询controller了");
		System.out.println(accountService.selectInfoByUsername(username));
		
		return accountService.selectInfoByUsername(username);
}
	

	@RequestMapping(value="/student/saveAccountInfo",method=RequestMethod.POST)
	@ResponseBody
	public void saveAccountInfo(Account account ) {
		System.out.println("进入保存细信息controller了");
		
		 accountService.saveAccountInfo(account);
}
	

	
}