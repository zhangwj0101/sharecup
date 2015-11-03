package com.share.bean;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

@Entity
@Table(name = "des_resource")
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class Resource implements java.io.Serializable {

	private static final long serialVersionUID = 4677370433289618657L;

	@Id
	@GeneratedValue
	private Integer id;

	@Column(name = "ftp", length = 500)
	private String ftp;
	
	@Column(name = "name", length = 255)
	private String name;

	@Column(name = "detail", length = 2000)
	private String detail;

	@Column(name = "origin", length = 500)
	private String origin;

	@Column(name = "timerange", length = 255)
	private String timerange;

	@Column(name = "sciencerange", length = 500)
	private String sciencerange;

	@Column(name = "quantity", length = 255)
	private String quantity;

	@Column(name = "datatype", length = 100)
	private String datatype;

	@Column(name = "viewtool", length = 255)
	private String viewtool;

	@Column(name = "updaterate", length = 100)
	private String updaterate;

	@Column(name = "otherdetail", length = 2000)
	private String otherdetail;

	@Column(name = "description", length = 2000)
	private String description;

	@Column(name = "processmode", length = 100)
	private String processmode;

	@Column(name = "quality", length = 2000)
	private String quality;

	@ManyToOne(fetch = FetchType.LAZY)
	private Platform platform;

	@Column(name = "flag", length = 11)
	private String flag;

	@Column(name = "filet", length = 500)
	private String filet;

	@Column(name = "files", length = 500)
	private String files;

	@Column(name = "score", length = 20)
	private String score;

	@OneToMany(fetch = FetchType.EAGER, mappedBy = "resource")
	private Set<SourceDown> sourceDowns;

	@OneToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	private SourceBrowse sourceBrowse;

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

	public String getDetail() {
		return this.detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public String getOrigin() {
		return origin;
	}

	public void setOrigin(String origin) {
		this.origin = origin;
	}

	public String getTimerange() {
		return this.timerange;
	}
	
	public void setFtp(String ftp) {
		this.ftp = ftp;
	}
	
	public String getFtp() {
		return ftp;
	}

	public void setTimerange(String timerange) {
		this.timerange = timerange;
	}

	public String getSciencerange() {
		return this.sciencerange;
	}

	public void setSciencerange(String sciencerange) {
		this.sciencerange = sciencerange;
	}

	public String getQuantity() {
		return this.quantity;
	}

	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}

	public String getDatatype() {
		return this.datatype;
	}

	public void setDatatype(String datatype) {
		this.datatype = datatype;
	}

	public String getViewtool() {
		return this.viewtool;
	}

	public void setViewtool(String viewtool) {
		this.viewtool = viewtool;
	}

	public String getUpdaterate() {
		return this.updaterate;
	}

	public void setUpdaterate(String updaterate) {
		this.updaterate = updaterate;
	}

	public String getOtherdetail() {
		return this.otherdetail;
	}

	public void setOtherdetail(String otherdetail) {
		this.otherdetail = otherdetail;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getProcessmode() {
		return this.processmode;
	}

	public void setProcessmode(String processmode) {
		this.processmode = processmode;
	}

	public String getQuality() {
		return this.quality;
	}

	public void setQuality(String quality) {
		this.quality = quality;
	}

	public Platform getPlatform() {
		return platform;
	}

	public void setPlatform(Platform platform) {
		this.platform = platform;
	}

	public String getFlag() {
		return flag;
	}

	public void setFlag(String flag) {
		this.flag = flag;
	}

	public String getFilet() {
		return filet;
	}

	public void setFilet(String filet) {
		this.filet = filet;
	}

	public String getFiles() {
		return files;
	}

	public void setFiles(String files) {
		this.files = files;
	}

	public Set<SourceDown> getSourceDowns() {
		return sourceDowns;
	}

	public void setSourceDowns(Set<SourceDown> sourceDowns) {
		this.sourceDowns = sourceDowns;
	}

	public String getScore() {
		return score;
	}

	public void setScore(String score) {
		this.score = score;
	}

	public SourceBrowse getSourceBrowse() {
		return sourceBrowse;
	}

	public void setSourceBrowse(SourceBrowse sourceBrowse) {
		this.sourceBrowse = sourceBrowse;
	}

}