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
@Table(name = "des_qa")
@Cache(usage=CacheConcurrencyStrategy.READ_WRITE)
public class Qa implements java.io.Serializable {

	private static final long serialVersionUID = 6272549550525740839L;

	@Id
	@GeneratedValue
	private Integer id;

	@Column(name = "question", length = 500)
	private String question;

	@Column(name = "q_time", length = 20)
	private String q_time;

	@Column(name = "answer", length = 500)
	private String answer;
	
	@Column(name = "a_time", length = 20)
	private String a_time;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getQ_time() {
		return q_time;
	}

	public void setQ_time(String q_time) {
		this.q_time = q_time;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public String getA_time() {
		return a_time;
	}

	public void setA_time(String a_time) {
		this.a_time = a_time;
	}
	
}