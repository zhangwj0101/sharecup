package com.share.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

@Entity
@Table(name = "des_library")
@Cache(usage=CacheConcurrencyStrategy.READ_WRITE)
public class Library implements java.io.Serializable {

	private static final long serialVersionUID = -4705232159245456950L;
	
	@Id
	@GeneratedValue
	private Integer id;
	
	@Column(name = "title", length = 255)
	private String title;
	
	@Column(name = "url", length = 255)
	private String url;


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

	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

}