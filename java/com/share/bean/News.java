package com.share.bean;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

@Entity
@Table(name = "des_news")
@Cache(usage=CacheConcurrencyStrategy.READ_WRITE)
public class News implements java.io.Serializable {

	private static final long serialVersionUID = 6272549550525740839L;

	@Id
	@GeneratedValue
	private Integer id;

	@Column(name = "title", length = 500)
	private String title;

	@Column(name = "times", length = 20)
	private String times;

	@Column(name = "content", length = 20000)
	private String content;
	
	@Column(name = "content_pic", length = 2000)
	private String content_pic;
	
	@Column(name = "type", length = 2000)
	private String type;
	
	private String[] src;

	public String[] getSrc() {
		return src;
	}

	public void setSrc(String[] src) {
		this.src = src;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

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

	public String getTimes() {
		return this.times;
	}

	public void setTimes(String times) {
		this.times = times;
	}

	public String getContent_pic() {
		return content_pic;
	}

	public void setContent_pic(String content_pic) {
		this.content_pic = content_pic;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

}