package com.tedu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {
	/**
	 * 通用的页面跳转方法
	 * @param page
	 * @return
	 */
	@RequestMapping("/{page}")
    public String page(@PathVariable String page){
        return page;
    }
}
