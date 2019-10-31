package com.tedu.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tedu.pojo.Account;
import com.tedu.pojo.Zpinfo;
import com.tedu.service.ZpinfoService;
import com.tedu.util.AjaxJson;

@Controller
public class ZpinfoController {
	@Autowired
	private ZpinfoService zpinfoService;
	@RequestMapping("/zpinfo/insertzpinfo")
	@ResponseBody
	public AjaxJson insertZpinfo(HttpServletRequest request,@RequestBody Zpinfo zpinfo) {
		System.out.println("进入查询！！！");
		System.out.println("=====zpinfo:"+zpinfo);

		AjaxJson j = new AjaxJson();
		try {
			zpinfoService.insertzpinfo(zpinfo);
			j.setCode(0);
			j.setMsg("操作成功!");
		} catch (Exception e) {
			e.printStackTrace();
			j.setCode(1);
			j.setMsg("操作失败!");
		}

		j.setMsg("操作成功!");
		
		return j;

	}

}
