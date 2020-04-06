package com.zhaoya.pojo;

import java.io.Serializable;

import javax.jws.soap.SOAPBinding.Use;

public class Leave implements Serializable{

	/**
	 * @fieldName: serialVersionUID
	 * @fieldType: long
	 * @Description: TODO
	 */
	private static final long serialVersionUID = 1L;

	private Integer id;
	private String name;
	private String depart;
	private String title;
	private String start;
	private String end;
	private String days;
	private String time;
	private String type;
	private String context;
	
	private User user;

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

	public String getDepart() {
		return depart;
	}

	public void setDepart(String depart) {
		this.depart = depart;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getStart() {
		return start;
	}

	public void setStart(String start) {
		this.start = start;
	}

	public String getEnd() {
		return end;
	}

	public void setEnd(String end) {
		this.end = end;
	}

	public String getDays() {
		return days;
	}

	public void setDays(String days) {
		this.days = days;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getContext() {
		return context;
	}

	public void setContext(String context) {
		this.context = context;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public Leave() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Leave(Integer id, String name, String depart, String title, String start, String end, String days,
			String time, String type, String context, User user) {
		super();
		this.id = id;
		this.name = name;
		this.depart = depart;
		this.title = title;
		this.start = start;
		this.end = end;
		this.days = days;
		this.time = time;
		this.type = type;
		this.context = context;
		this.user = user;
	}

	
}
