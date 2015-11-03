package com.share.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.Table;
import javax.persistence.Transient;


@Entity
@Table(name = "des_user")
@Inheritance(strategy = InheritanceType.JOINED)
public class User implements java.io.Serializable {

	private static final long serialVersionUID = -9209881341827729413L;

	@Id
	@GeneratedValue
	private Integer id;

	@Column(name = "username", length = 255)
	private String username;

	@Column(name = "password", length = 255)
	private String password;

	@Transient
	private String password2;

	@Column(name = "question", length = 255)
	private String question;

	@Column(name = "answer", length = 255)
	private String answer;

	@Column(nullable = false)
	private boolean flag = true;

	@Column(name = "usertype", length = 11)
	private String usertype;

	public String getUsertype() {
		return usertype;
	}

	public void setUsertype(String usertype) {
		this.usertype = usertype;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getQuestion() {
		return this.question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getAnswer() {
		return this.answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public String getPassword2() {
		return password2;
	}

	public void setPassword2(String password2) {
		this.password2 = password2;
	}

	public boolean isFlag() {
		return flag;
	}

	public void setFlag(boolean flag) {
		this.flag = flag;
	}
	
	@SuppressWarnings("unchecked")
	public boolean instanceOf(String className) {
		Class thisClass = this.getClass();
		boolean rt = false;
		while (true) {
			if (thisClass == null) {
				break;
			}
			if (thisClass.getName().equals(className) || thisClass.getSimpleName().equals(className)) {
				rt = true;
				break;
			}
			thisClass = thisClass.getSuperclass();
		}
		return rt;
	}

	@SuppressWarnings("unchecked")
	public boolean instanceOf(Class c) {
		Class thisClass = this.getClass();
		boolean rt = false;
		while (true) {
			if (thisClass == null) {
				break;
			}
			if (thisClass == c) {
				rt = true;
				break;
			}
			thisClass = thisClass.getSuperclass();
		}
		return rt;
	}

}