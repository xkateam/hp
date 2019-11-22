package com.tedu.controller;

import java.util.List;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
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
	//鐧诲綍鍚庤繑鍥炲綋鍓嶇櫥褰曠敤鎴风殑涓汉鐨勪俊鎭�
	@RequestMapping("/student/selectAccountInfo")	
	@ResponseBody
	public AjaxJson chaxun2(HttpServletRequest request, HttpServletResponse response, String username) {
		 
		AjaxJson j = new AjaxJson();
		// 瀛︽牎鍒楄〃
		Account account = accountService.selectInfoByUsername(username);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("data", account);
		j.setCode(0);
		j.setMsg("鎿嶄綔鎴愬姛!");
		j.setData(map);
		System.out.println("杩涘叆鏌ヨcontroller浜�");
		System.out.println(accountService.selectInfoByUsername(username));
		return j;
		
	}
	
	@RequestMapping(value="/student/studentIndex")
	public String index(String username) {
		return "student/studentIndex";
}
//	
//	@RequestMapping(value="/student/selectAccountInfo",method=RequestMethod.POST)
//	@ResponseBody
//	public Account chaxun(String username) {
//		System.out.println("杩涘叆鏌ヨcontroller浜�");
//		System.out.println(accountService.selectInfoByUsername(username));
//		
//		return accountService.selectInfoByUsername(username);
//}
//	

	
	
	@RequestMapping("/student/saveAccountInfo")
	@ResponseBody
	public AjaxJson saveAccountInfo1(HttpServletRequest request,@RequestBody Account account) {
	
		System.out.println("=====account:"+account);

		AjaxJson j = new AjaxJson();
		try {
			accountService.saveAccountInfo(account);
			j.setCode(0);
			j.setMsg("鎿嶄綔鎴愬姛!");
		} catch (Exception e) {
			e.printStackTrace();
			j.setCode(1);
			j.setMsg("鎿嶄綔澶辫触!");
		}

		j.setMsg("鎿嶄綔鎴愬姛!");
		
		return j;

	}
//瀛︾敓棣栭〉鎺у埗鍣ㄨ绋嬮〉闈㈣烦杞�=================================================================
	
	@RequestMapping(value="/student/courseInfo")
	public String courseInfo() {
		return "student/courseInfo";

		
}
	
	@RequestMapping(value="/student/kefu")
	public String kefu() {
		return "student/kefu";

		
}
	@RequestMapping(value="/student/chongzhi")
	public String chongzhi() {
		return "student/chongzhi";

	}
	@RequestMapping(value="/student/ChuZhong")
	public String ChuZhong() {
		System.out.println("杩涘垵涓簡");
		return "student/ChuZhong";

		
}
	@RequestMapping(value="/student/GaoZhong")
	public String GaoZhong() {
		return "student/GaoZhong";

		
}
	@RequestMapping(value="/student/DaXue")
	public String DaXue() {
		return "student/DaXue";

		
}
	
//鍒濅腑璇剧▼鎺у埗鍣ㄨ烦杞�=================================================================
//	
	

	@RequestMapping(value="/student/fbzp")
	public String fbzp() {
		return "student/fbzp";
}
	
	@RequestMapping(value="/student/czHuaXue")
	public String czHuaXue() {
		return "student/czHuaXue";
}

	@RequestMapping(value="/student/czShengWu")
	public String czShengWu() {
		return "student/czShengWu";
}

	@RequestMapping(value="/student/czShuXue")
	public String czShuXue() {
		return "student/czShuXue";
}
	@RequestMapping(value="/student/czWuLi")
	public String czWuLi() {
		return "student/czWuLi";
}
	@RequestMapping(value="/student/czYingYu")
	public String czYingYu() {
		return "student/czYingYu";
}
	@RequestMapping(value="/student/czYuWen")
	public String czYuWen() {
		return "student/czYuWen";
}
	
//楂樹腑璇剧▼鎺у埗鍣ㄨ烦杞�=================================================================
	@RequestMapping(value="/student/gzHuaXue")
	public String gzHuaXue() {
		return "student/gzHuaXue";
}

	@RequestMapping(value="/student/gzShengWu")
	public String gzShengWu() {
		return "student/gzShengWu";
}

	@RequestMapping(value="/student/gzShuXue")
	public String gzShuXue() {
		return "student/gzShuXue";
}
	@RequestMapping(value="/student/gzWuLi")
	public String gzWuLi() {
		return "student/gzWuLi";
}
	@RequestMapping(value="/student/gzYingYu")
	public String gzYingYu() {
		return "student/gzYingYu";
}
	@RequestMapping(value="/student/gzYuWen")
	public String gzYuWen() {
		return "student/gzYuWen";
}	
	
	@RequestMapping(value="/student/integralPay")
	public String integralPay() {
		return "student/integralPay";
}	
	@RequestMapping(value="/student/testTupian")
	public String testTupian() {
		return "student/testTupian";
}	
	@RequestMapping(value="/student/zhaojiajiao")
	public String zhaojiajiao() {
		return "student/zhaojiajiao";
}	
	@RequestMapping(value="/student/Application")
	public String Application() {
		return "student/Application";
}	
	@RequestMapping(value="/student/dashuju")
	public String dashuju() {
		return "student/dashuju";
}	
	
}