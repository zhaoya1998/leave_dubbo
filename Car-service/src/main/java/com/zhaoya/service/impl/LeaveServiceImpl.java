package com.zhaoya.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.dubbo.config.annotation.Service;
import org.springframework.beans.factory.annotation.Autowired;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zhaoya.dao.LeaveDao;
import com.zhaoya.pojo.Leave;
import com.zhaoya.pojo.User;
import com.zhaoya.service.LeaveService;

@Service(interfaceClass = LeaveService.class)
public class LeaveServiceImpl implements LeaveService{

	@Autowired 
	LeaveDao leaveDao;

	@Override
	public ArrayList<User> login(String name, String pwd) {
		// TODO Auto-generated method stub
		return leaveDao.login(name, pwd);
	}

	@Override
	public PageInfo<Leave> list(int pageNum) {
		// TODO Auto-generated method stub
		PageHelper.startPage(pageNum, 3);
		ArrayList<Leave> list=leaveDao.list();
		PageInfo<Leave> info=new PageInfo<Leave>(list);
		return info;
	}

	@Override
	public List<Leave> look(int id) {
		// TODO Auto-generated method stub
		List<Leave> list=leaveDao.look(id);
		return list;
	}

	@Override
	public void add(Leave leave) {
		// TODO Auto-generated method stub
		leaveDao.add(leave);
	}

	
	
}
