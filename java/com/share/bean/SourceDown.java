package com.share.bean;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "des_sourcedown")
public class SourceDown implements java.io.Serializable {

	private static final long serialVersionUID = -8023323351059503695L;

	@Id
	@GeneratedValue
	private Integer id;

	@ManyToOne(fetch = FetchType.LAZY)
	private StudentHeader student;

	@ManyToOne(fetch = FetchType.LAZY)
	private Resource resource;

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public StudentHeader getStudent() {
		return student;
	}

	public void setStudent(StudentHeader student) {
		this.student = student;
	}

	public Resource getResource() {
		return resource;
	}

	public void setResource(Resource resource) {
		this.resource = resource;
	}

}