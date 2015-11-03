package com.share.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "des_apply")
public class Apply implements java.io.Serializable {

	private static final long serialVersionUID = 744963997120370190L;

	@Id
	@GeneratedValue
	private Integer id;
	
	@Column(name = "name", length = 255)
	private String name;

	@Column(name = "url", length = 255)
	private String url;

	@Column(name = "source", length = 255)
	private String source;

	@Column(name = "type", length = 100)
	private String type;

	@Column(name = "times", length = 100)
	private String times;

	@Column(name = "claim", length = 1000)
	private String claim;

	@ManyToOne(fetch = FetchType.LAZY)
	private Platform platform;

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

	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getSource() {
		return this.source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getTimes() {
		return this.times;
	}

	public void setTimes(String times) {
		this.times = times;
	}

	public String getClaim() {
		return this.claim;
	}

	public void setClaim(String claim) {
		this.claim = claim;
	}

	public Platform getPlatform() {
		return platform;
	}

	public void setPlatform(Platform platform) {
		this.platform = platform;
	}

}