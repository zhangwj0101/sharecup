package com.share.bean;

public class PageBean implements java.io.Serializable{

	private static final long	serialVersionUID	= 5272723089610077803L;
	private int pagesize;		//每页大小
	private int pagecount;		//总页数
	private int pagenum;		//当前页码
	private int resultcount; 	//结果总数
	
	public PageBean() {
		super();
		this.pagesize=10;
		this.pagenum=1;
		this.pagecount=0;
		this.resultcount=0;
	}
	
	public int getPagesize() {
		return pagesize;
	}
	public void setPagesize(int pagesize) {
		this.pagesize = pagesize;
	}
	public int getPagecount() {
		return pagecount;
	}
	public void setPagecount(int pagecount) {
		this.pagecount = pagecount;
	}
	public int getPagenum() {
		return pagenum;
	}
	public void setPagenum(int pagenum) {
		this.pagenum = pagenum;
	}
	public int getResultcount() {
		return resultcount;
	}
	public void setResultcount(int resultcount) {
		this.resultcount = resultcount;
	}

}
