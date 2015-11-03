package com.share.bean;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "des_platform")
public class Platform extends User implements java.io.Serializable {

	private static final long serialVersionUID = 656368896446231937L;

	@Column(name = "name", length = 255)
	private String name;

	@Column(name = "linkname", length = 255)
	private String linkname;

	@Column(name = "linkemail", length = 255)
	private String linkemail;

	@Column(name = "linkphone", length = 255)
	private String linkphone;

	@Column(name = "linkaddr", length = 255)
	private String linkaddr;

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "platform")
	private Set<Resource> resources;

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "platform")
	private Set<Apply> applies;

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLinkname() {
		return this.linkname;
	}

	public void setLinkname(String linkname) {
		this.linkname = linkname;
	}

	public String getLinkemail() {
		return this.linkemail;
	}

	public void setLinkemail(String linkemail) {
		this.linkemail = linkemail;
	}

	public String getLinkphone() {
		return this.linkphone;
	}

	public void setLinkphone(String linkphone) {
		this.linkphone = linkphone;
	}

	public String getLinkaddr() {
		return this.linkaddr;
	}

	public void setLinkaddr(String linkaddr) {
		this.linkaddr = linkaddr;
	}

	public Set<Resource> getResources() {
		return resources;
	}

	public void setResources(Set<Resource> resources) {
		this.resources = resources;
	}

	public Set<Apply> getApplies() {
		return applies;
	}

	public void setApplies(Set<Apply> applies) {
		this.applies = applies;
	}

}