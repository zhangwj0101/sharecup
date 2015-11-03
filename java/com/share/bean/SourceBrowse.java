package com.share.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "des_sourcebrowse")
public class SourceBrowse {
	@Id
	@GeneratedValue
	private Integer id;

	@OneToOne(fetch = FetchType.LAZY, mappedBy = "sourceBrowse")
	private Resource resource;

	@Column(name = "browsenum")
	private Integer browseNum = 0;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Resource getResource() {
		return resource;
	}

	public void setResource(Resource resource) {
		this.resource = resource;
	}

	public Integer getBrowseNum() {
		return browseNum;
	}

	public void setBrowseNum(Integer browseNum) {
		this.browseNum = browseNum;
	}

}
