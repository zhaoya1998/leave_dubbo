package com.zhaoya.pojo;

import java.io.Serializable;

public class User implements Serializable{

	/**
	 * @fieldName: serialVersionUID
	 * @fieldType: long
	 * @Description: TODO
	 */
	private static final long serialVersionUID = 1L;

	private Integer id;
	private String name;
	private String pwd;
	private String days;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getDays() {
		return days;
	}
	public void setDays(String days) {
		this.days = days;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public User(Integer id, String name, String pwd, String days) {
		super();
		this.id = id;
		this.name = name;
		this.pwd = pwd;
		this.days = days;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
