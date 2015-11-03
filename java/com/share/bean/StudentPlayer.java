package com.share.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "des_studentplayer")
public class StudentPlayer implements java.io.Serializable {

	private static final long serialVersionUID = -2131463837925585884L;

	@Id
	@GeneratedValue
	private Integer id;

	@Column(name = "name", length = 255)
	private String name;

	@Column(name = "school", length = 255)
	private String school;

	@Column(name = "faculty", length = 255)
	private String faculty;

	@Column(name = "classes", length = 255)
	private String classes;

	@Column(name = "major", length = 255)
	private String major;

	@Column(name = "code", length = 255)
	private String code;

	@Column(name = "phone", length = 255)
	private String phone;

	@ManyToOne(fetch = FetchType.LAZY)
	private StudentHeader studentHeader;

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

	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public String getFaculty() {
		return faculty;
	}

	public void setFaculty(String faculty) {
		this.faculty = faculty;
	}

	public String getClasses() {
		return classes;
	}

	public void setClasses(String classes) {
		this.classes = classes;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getPhone() {
		return phone;
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
