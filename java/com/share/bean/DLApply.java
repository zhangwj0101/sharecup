package com.share.bean;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

@Entity
@Table(name = "dl_apply")
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class DLApply implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2605654263458257559L;
	@Id
	@GeneratedValue
	private Integer id;

	@Column(name = "dltime", length = 20)
	private String dltime;

	@Column(name = "resourcename", length = 500)
	private String resourcename;

	@Column(name = "platformname", length = 500)
	private String platformname;	
	
	@ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	@JoinColumn(name = "header_id", referencedColumnName = "id", unique = true)
	private StudentHeader header;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getDltime() {
		return dltime;
	}

	public void setDltime(String dltime) {
		this.dltime = dltime;
	}

	public String getResourcename() {
		return resourcename;
	}

	public void setResourcename(String resourcename) {
		this.resourcename = resourcename;
	}

	public StudentHeader getHeader() {
		return header;
	}

	public void setHeader(StudentHeader header) {
		this.header = header;
	}

	public String getPlatformname() {
		return platformname;
	}

	public void setPlatformname(String platformname) {
		this.platformname = platformname;
	}

}
