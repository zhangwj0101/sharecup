package com.share.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "des_teacher")
public class Teacher implements java.io.Serializable {

	private static final long serialVersionUID = 4816403305461820657L;

	@Id
	@GeneratedValue
	private Integer id;
	
	@Column(name = "name", length = 255)
	private String name;
	
	@Column(name = "school", length = 255)
	private String school;
	
	@Column(name = "major", length = 255)
	private String major;
	
	@Column(name = "title", length = 255)
	private String title;
	
	@Column(name = "phone", length = 255)
	private String phone;
	
	@ManyToOne(fetch = FetchType.LAZY)
	private StudentHeader studentHeader;

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSchool() {
		return this.school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public String getMajor() {
		return this.major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public StudentHeader getStudentHeader() {
		return studentHeader;
	}

	public void setStudentHeader(StudentHeader studentHeader) {
		this.studentHeader = studentHeader;
	}

}