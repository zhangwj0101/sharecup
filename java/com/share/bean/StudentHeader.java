package com.share.bean;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name = "des_studentheader")
public class StudentHeader extends User implements java.io.Serializable {

	private static final long serialVersionUID = -5580616486654574151L;

	@Column(name = "subject", length = 255)
	private String subject;
	
	@Column(name = "email", length = 255)
	private String email;

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

	@Column(name = "addr", length = 255)
	private String addr;

	@Column(name = "opus", length = 255)
	private String opus;
	
	@Column(name = "province", length = 50)
	private String province;

	@Column(nullable = false)
	private boolean ifperson = false;

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "student")
	private Set<SourceDown> sourceDowns;

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "studentHeader")
	private Set<StudentPlayer> studentPlayers;

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "studentHeader")
	private Set<Teacher> teachers;
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "student")
	private Set<SourceScore> sourceScores;
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "header")
	private Set<DLResource> resources;	

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public Set<DLResource> getResources() {
		return resources;
	}

	public void setResources(Set<DLResource> resources) {
		this.resources = resources;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}
	
	public String getSubject() {
		return subject;
	}
	
	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
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

	public String getFaculty() {
		return faculty;
	}

	public void setFaculty(String faculty) {
		this.faculty = faculty;
	}

	public String getClasses() {
		return this.classes;
	}

	public void setClasses(String classes) {
		this.classes = classes;
	}

	public String getMajor() {
		return this.major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public String getCode() {
		return this.code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddr() {
		return this.addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getOpus() {
		return opus;
	}

	public void setOpus(String opus) {
		this.opus = opus;
	}

	public Set<SourceDown> getSourceDowns() {
		return sourceDowns;
	}

	public void setSourceDowns(Set<SourceDown> sourceDowns) {
		this.sourceDowns = sourceDowns;
	}

	public Set<StudentPlayer> getStudentPlayers() {
		return studentPlayers;
	}

	public void setStudentPlayers(Set<StudentPlayer> studentPlayers) {
		this.studentPlayers = studentPlayers;
	}

	public Set<Teacher> getTeachers() {
		return teachers;
	}

	public void setTeachers(Set<Teacher> teachers) {
		this.teachers = teachers;
	}

	public boolean isIfperson() {
		return ifperson;
	}

	public void setIfperson(boolean ifperson) {
		this.ifperson = ifperson;
	}

}