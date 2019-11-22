package com.tedu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tedu.service.PayServiceImpl;

@Controller
public class payController {

	@Autowired
	PayServiceImpl payService;
	
	@RequestMapping("/pay/payClass")
	@ResponseBody
	public boolean payClass(String username,String jifen) {
		int jifen1 = Integer.parseInt(jifen);
		int point = payService.selectPoint_countByusername(username);
		if(point>=jifen1) {
			int point_count = point-jifen1;
			payService.updatePoint_countByusername(username, point_count);
			return true;
		}
		else {
			return false;
		}
		
	}
	
}
