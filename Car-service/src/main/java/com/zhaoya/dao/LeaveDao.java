package com.zhaoya.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.zhaoya.pojo.Leave;
import com.zhaoya.pojo.User;

public interface LeaveDao {

	ArrayList<User> login(@Param("name")String name, @Param("pwd")String pwd);

	ArrayList<Leave> list();

	List<Leave> look(@Param("id")Integer id);

	void add(Leave leave);

}
