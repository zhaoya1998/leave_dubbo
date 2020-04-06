package com.zhaoya.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.dubbo.config.annotation.Reference;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageInfo;
import com.zhaoya.pojo.Leave;
import com.zhaoya.pojo.User;
import com.zhaoya.service.LeaveService;

@Controller
public class LeaveController {

	@Reference
	private LeaveService service;

	@RequestMapping("tologin")
	public String toLogin() {
		return "login";
	}

	@RequestMapping("login")
	public String login(HttpServletRequest request, String name, String pwd) {
		ArrayList<User> list = service.login(name, pwd);
		request.setAttribute("name", name);
		request.setAttribute("pwd", pwd);
		request.setAttribute("list", list);
		return "redirect:/list";
	}

	@RequestMapping("list")
	public String list(HttpServletRequest request, @RequestParam(defaultValue = "1") int pageNum) {
		PageInfo<Leave> info = service.list(pageNum);
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("info", info);
		return "list";
	}

	@RequestMapping("look")
	public String look(HttpServletRequest request, int id) {
		List<Leave> list = service.look(id);
		request.setAttribute("list", list);
		return "look";
	}

	// 下拉框
	@RequestMapping("toAdd")
	public String toAdd() {
		return "add";
	}

	// 增加
	@ResponseBody
	@RequestMapping("add")
	public boolean add(Leave leave) {
		try {
			service.add(leave);
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return false;
		}
	}
}
