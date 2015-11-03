package com.share.action;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.share.bean.Library;
import com.share.bean.News;
import com.share.bean.Qa;
import com.share.bean.PageBean;
import com.share.bean.Resource;
import com.share.bean.SourceBrowse;
import com.share.dao.LibraryDao;
import com.share.dao.NewsDao;
import com.share.dao.QaDao;
import com.share.dao.ResourceDao;
import com.share.dao.SourceBrowseDao;
import com.share.util.PagingUtil;

public class PageIndexAction extends ActionSupport implements
		ServletRequestAware, SessionAware {

	private static final long serialVersionUID = 4406645084763742584L;

	private HttpServletRequest request; 

	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	private Map session;
	private String[] src;
	private News news = new News();
	private Qa qa = new Qa();

	public Qa getQa() {
		return qa;
	}

	public void setQa(Qa qa) {
		this.qa = qa;
	}

	public String[] getSrc() {
		return src;
	}

	public void setSrc(String[] src) {
		this.src = src;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	private PageBean pageBean = new PageBean();

	public PageBean getPageBean() {
		return pageBean;
	}

	public void setPageBean(PageBean pageBean) {
		this.pageBean = pageBean;
	}

	private Resource resource;

	public Resource getResource() {
		return resource;
	}

	public void setResource(Resource resource) {
		this.resource = resource;
	}

	
	
	

	public News getNews() {
		return news;
	}

	public void setNews(News news) {
		this.news = news;
	}

	/**
	 * 首页
	 */
	@Override
	public String execute() {
		newsList();
		qaList();
		return SUCCESS;
	}

	/**
	 * 联系我们
	 */
	public String contact() {
		request.setAttribute("tabon", "contact");
		return "contact";
	}
	
	/**
	 * 下载专区
	 */
	public String download() {
		request.setAttribute("tabon", "download");
		return "download";
	}
	
	
	/**
	 * 奖项设置
	 */
	public String prize() {
		request.setAttribute("tabon", "prize");
		return "prize";
	}	

	/**
	 * 科技资源与资源共享
	 */
	public String share() {
		request.setAttribute("tabon", "share");
		newsList();
		return "share";
	}
	/**
	 * 问答
	 */
	public String qa() {
		request.setAttribute("tabon", "qa");
		qaList();
		return "qa";
	}
	/**
	 *协办单位 
	 */
	public String organizer(){
		request.setAttribute("tabon", "organizer");

		return "organizer";
	}
	/**
	 * 竞赛流程
	 */
	public String flow() {
		request.setAttribute("tabon", "flow");
		
		return "flow";
	}

	/**
	 * 竞赛主题
	 */
	public String theme() {
		request.setAttribute("tabon", "theme");

		return "theme";
	}

	/**
	 * 竞赛介绍
	 */
	public String intro() {
		request.setAttribute("tabon", "intro");

		return "intro";
	}
	/**
	 * 知识竞赛
	 */
	public String knowledge(){
		request.setAttribute("tabon", "knowledge");

		return "knowledge" ; 
		
	}
	
	/**
	 * 登录
	 * @return
	 */
	public String loginui() {
		return "loginui";
	}
	
	/**
	 * 分页显示最新动态
	 * 
	 * @return
	 */
public String qaList() {
		
		String tmp = request.getParameter("page");
		if (tmp==null) {
			tmp = "1";
		}
		int page = Integer.parseInt(tmp);
		request.setAttribute("currPage", page);
		int pageSize = 0;
		int itemCount = 0;
		
		QaDao qadao = new QaDao();
		List<Qa> qalist = qadao.getAnswerQa();

		
		pageSize = PagingUtil.getPage(qalist, "12");
		itemCount = qalist.size();
		request.setAttribute("itemCount", itemCount);
		request.setAttribute("pageSize", pageSize);
		
		request.setAttribute("qalist", qalist);
		return "qalist";
	}
	
	public String newsList() {
		
		String tmp = request.getParameter("page");
		if (tmp==null) {
			tmp = "1";
		}
		int page = Integer.parseInt(tmp);
		request.setAttribute("currPage", page);
		int pageSize = 0;
		int itemCount = 0;
		
		NewsDao newsdao = new NewsDao();
		List<News> newslist = newsdao.getNews();
		List<News> newslist1 = newsdao.getNews1();
		List<News> newslist2 = newsdao.getNews2();
		List<News> newslist3 = newsdao.getNews3();
		for(int i=0;i<newslist.size();i++){
			if(newslist.get(i).getContent_pic()!=null){
				src = newslist.get(i).getContent_pic().split(",");
				newslist.get(i).setSrc(src);
			}
		}
		
		pageSize = PagingUtil.getPage(newslist, "12");
		itemCount = newslist.size();
		request.setAttribute("itemCount", itemCount);
		request.setAttribute("pageSize", pageSize);
		
		request.setAttribute("newslist", newslist);
		request.setAttribute("newslist1", newslist1);
		request.setAttribute("newslist2", newslist2);
		request.setAttribute("newslist3", newslist3);
		return "newslist";
	}

	/**
	 * 分页显示文库
	 * 
	 * @return
	 */
	public String libraryList() {
		int pagesize = pageBean.getPagesize(); // 每页大小
		int pagenum = pageBean.getPagenum();
		LibraryDao librarydao = new LibraryDao();
		List<Library> librarylist = librarydao.findPagesList("Library", null,
				pagesize, pagenum);
		int resultcount = librarydao.getCount("Library", null);
		int pagecount = resultcount / pagesize;
		if (resultcount % pagesize != 0) {
			pagecount++;
		}
		pageBean.setPagecount(pagecount);
		pageBean.setResultcount(resultcount);
		request.setAttribute("librarylist", librarylist);
		return "libraryList";
	}

	/**
	 * 分页显示资源
	 * 
	 * @return
	 */
	public String resourceList() {
		int pagesize = pageBean.getPagesize(); // 每页大小
		int pagenum = pageBean.getPagenum();
		ResourceDao resourcedao = new ResourceDao();
		List<Resource> resourcelist = resourcedao.findPagesList("Resource",
				null, pagesize, pagenum);
		int resultcount = resourcedao.getCount("Resource", null);
		int pagecount = resultcount / pagesize;
		if (resultcount % pagesize != 0) {
			pagecount++;
		}
		pageBean.setPagecount(pagecount);
		pageBean.setResultcount(resultcount);
		request.setAttribute("resourcelist", resourcelist);
		return "resourceList";
	}

	public String newsContent() {
		String id = request.getParameter("id");
		NewsDao newsDao = new NewsDao();
		news = (News) newsDao.findById(Integer.parseInt(id), "News");
		return "newsContent";
	}

	public String region() {
		request.setAttribute("method", "person");
		request.setAttribute("tabon", "region");

		return "region";
	}
	
	public String resourceDetail() {
		String id = request.getParameter("id");
		ResourceDao resourceDao = new ResourceDao();
		resource = (Resource) resourceDao.findById(Integer
				.parseInt(id), "com.share.bean.Resource");
		SourceBrowse sourceBrowse = null;
		if(resource.getSourceBrowse()==null){
			sourceBrowse = new SourceBrowse();
			sourceBrowse.setBrowseNum(1);
			resource.setSourceBrowse(sourceBrowse);
			new ResourceDao().merge(resource);
		}else {
			sourceBrowse = resource.getSourceBrowse();
			sourceBrowse.setBrowseNum(sourceBrowse.getBrowseNum()+1);
			sourceBrowse.setResource(resource);
			new SourceBrowseDao().merge(sourceBrowse);
		}
		return "resourceDetail";
	}

}
