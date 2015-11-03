package com.share.bean;

public class Statistics2 {
	private String province;
	private String school;
	private String name;
	private String type;
	private Integer count;
	private String phone;
	private String email;

	public String getProvince() {
		return province == null ? "":province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getSchool() {
		return school == null ? "":school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public String getName() {
		return name == null ? "":name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type == null ? "":type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Integer getCount() {
		return count == null ? 1:count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}

	public String getPhone() {
		return phone == null ? "":phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email == null ? "":email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	@Override
	public String toString() {
		return getProvince() + "\t" + getSchool() + "\t" + getName() + "\t" + getType() + "\t" + getCount() + "\t" + getPhone() + "\t" + getEmail() + "\n";
	}

}