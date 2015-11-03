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
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

@Entity
@Table(name = "dl_resource")
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class DLResource implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2605654263458257559L;
	@Id
	@GeneratedValue
	private Integer id;
	@Column(name = "filepath", length = 500)
	private String filepath;
	@Column(name = "filename", length = 500)
	private String filename;
	@Column(name = "uptime", length = 20)
	private String uptime;
	@Column(name = "filesize", length = 11)
	private Integer filesize;
	@Column(name = "dltime", length = 11)
	private String dltime;
	@Column(name = "subject", length = 255)
	private String subject;
	@ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	@JoinColumn(name = "header_id", referencedColumnName = "id", unique = true)
	private StudentHeader header;
	
	@Column(name = "platname", length = 100)
	private String platname;
	@Column(name = "reference")
	private String reference;
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getFilepath() {
		return filepath;
	}

	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public String getUptime() {
		return uptime;
	}

	public void setUptime(String uptime) {
		this.uptime = uptime;
	}

	public Integer getFilesize() {
		return filesize;
	}

	public void setFilesize(Integer filesize) {
		this.filesize = filesize;
	}

	public String getDltime() {
		return dltime;
	}

	public void setDltime(String dltime) {
		this.dltime = dltime;
	}

	public StudentHeader getHeader() {
		return header;
	}

	public void setHeader(StudentHeader header) {
		this.header = header;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getPlatname() {
		return platname;
	}

	public void setPlatname(String platname) {
		this.platname = platname;
	}

	public String getReference() {
		return reference;
	}

	public void setReference(String reference) {
		this.reference = reference;
	}
}
