package com.share.bean;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "des_systeminfo")
public class SystemInfo implements java.io.Serializable {

	private static final long serialVersionUID = -2095295609867236133L;

	@Id
	@GeneratedValue
	private Integer id;

	@Column(nullable = false)
	private boolean login = false;

	@Column(name = "flag")
	private int flag = 0;

	@Column(name = "workstation", length = 100)
	private String workstation;

	@Column(name = "sessionID", length = 100)
	private String sessionID;

	@Temporal(TemporalType.DATE)
	private Date accessDate;

	@Column(name = "agent", length = 255)
	private String agent;

	@Column(name = "hashticket", length = 100)
	private String hashticket;

	@ManyToOne(fetch = FetchType.LAZY)
	private StudentHeader header;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public boolean isLogin() {
		return login;
	}

	public void setLogin(boolean login) {
		this.login = login;
	}

	public String getWorkstation() {
		return workstation;
	}

	public void setWorkstation(String workstation) {
		this.workstation = workstation;
	}

	public String getAgent() {
		return agent;
	}

	public void setAgent(String agent) {
		this.agent = agent;
	}

	public StudentHeader getHeader() {
		return header;
	}

	public void setHeader(StudentHeader header) {
		this.header = header;
	}

	public String getSessionID() {
		return sessionID;
	}

	public void setSessionID(String sessionID) {
		this.sessionID = sessionID;
	}

	public String getHashticket() {
		return hashticket;
	}

	public void setHashticket(String hashticket) {
		this.hashticket = hashticket;
	}

	public Date getAccessDate() {
		return accessDate;
	}

	public void setAccessDate(Date accessDate) {
		this.accessDate = accessDate;
	}

	public int getFlag() {
		return flag;
	}

	public void setFlag(int flag) {
		this.flag = flag;
	}

}
