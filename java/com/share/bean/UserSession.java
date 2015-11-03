package com.share.bean;

public class UserSession {

	private Integer id;
	private String username;
	private String Name;
	private String question;
	private String answer;
	private int flag;
	private boolean haveOpus = false;
	
	private String userType; // 1student 2platform
	
	public void setUserType(String userType) {
		this.userType = userType;
	}
	
	public String getUserType() {
		return userType;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public boolean isHaveOpus() {
		return haveOpus;
	}

	public void setHaveOpus(boolean haveOpus) {
		this.haveOpus = haveOpus;
	}

	public int getFlag() {
		return flag;
	}

	public void setFlag(int flag) {
		this.flag = flag;
	}

}
