package com.share.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "des_inform")
public class Inform implements java.io.Serializable {

	private static final long serialVersionUID = -5892444078860463333L;
	
	@Id
	@GeneratedValue
	private Integer id;
	
	@Column(name = "title", length = 255)
	private String title;
	
	@Column(name = "content", length = 2000)
	private String content;
	
	@Column(name = "times", length = 255)
	private String times;


	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getTimes() {
		return this.times;
	}

	public void setTimes(String times) {
		this.times = times;
	}

}