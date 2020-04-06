package com.zhaoya.service;

import java.util.ArrayList;
import java.util.List;

import com.github.pagehelper.PageInfo;
import com.zhaoya.pojo.Leave;
import com.zhaoya.pojo.User;

public interface LeaveService {

	ArrayList<User> login(String name, String pwd);

	PageInfo<Leave> list(int pageNum);

	List<Leave> look(int id);

	void add(Leave leave);

}
