package com.share.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.share.bean.News;
import com.share.dao.NewsDao;
import com.share.util.PagingUtil;
import com.share.util.StringUtil;

public class NewsAction extends ActionSupport implements
		ServletRequestAware, ServletResponseAware, SessionAware {

	private HttpServletRequest request;
	private HttpServletResponse response;
	private Map<String, Object> session;
	
	private String unicode = UUID.randomUUID().toString();

	private static final long serialVersionUID = 1L;

	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	
	private String aftertitle;
	private String beforetitle;
	private NewsDao newsDao = new NewsDao();
	private News news = new News();

	public String getAftertitle() {
		return aftertitle;
	}

	public void setAftertitle(String aftertitle) {
		this.aftertitle = aftertitle;
	}

	public String getBeforetitle() {
		return beforetitle;
	}

	public void setBeforetitle(String beforetitle) {
		this.beforetitle = beforetitle;
	}

	public NewsDao getNewsDao() {
		return newsDao;
	}

	public void setNewsDao(NewsDao newsDao) {
		this.newsDao = newsDao;
	}

	public void setNews(News news) {
		this.news = news;
	}

	public void getNews(){
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String tmp = request.getParameter("page");
		if (StringUtil.isNullOrBlank(tmp)) {
			tmp = "1";
		}
		
		int page = Integer.parseInt(tmp);
		request.setAttribute("currPage", page);
		int pageSize = 0;
		int itemCount = 0;
		
		List<News> newsList = newsDao.getNews(); 
		request.setAttribute("newsList", newsList);
		
		pageSize = PagingUtil.getPage(newsList, "12");
		itemCount = newsList.size();
		request.setAttribute("itemCount", itemCount);
		request.setAttribute("pageSize", pageSize);

		PrintWriter writer;
		try {
			writer = response.getWriter();
			String path = request.getContextPath();
			String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
			for(int i=0;i<newsList.size()&&i<9;i++){
				writer.write("<li><a href='" + basePath + "getNewsById.action?id="+ newsList.get(i).getId() +"'>" + newsList.get(i).getTitle() + "</a></li>");
			}
			writer.flush();
			writer.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public String getNewsById(){
		
		Integer id = Integer.parseInt(request.getParameter("id"));
		news = newsDao.getNewsById(id);
		request.setAttribute("news", news);
		request.setAttribute("tabon", "share");
		
		
		return SUCCESS;
		
	}
	
	public String updateNews(){
		
		String id = request.getParameter("id");
		System.out.println(id);
		String title = request.getParameter("title");
		System.out.println(title);
		String text = request.getParameter("content");
		System.out.println(text);
		SimpleDateFormat dateFormat = new SimpleDateFormat(
		"yyyy-MM-dd HH:mm:ss");
		String time = dateFormat.format(new Date());
		
		List<String> imguri = (List<String>) session.get("imguri");
		if (imguri != null && imguri.size() != 0) {
			
			for(int i = 0 ; i<imguri.size();i++){
				news.setContent_pic(imguri.get(i)+",");
			}
			
		}
		
		session.remove("imguri");
		if(!id.isEmpty())
			news.setId(Integer.parseInt(id));
		news.setContent(text);
		news.setTimes(time);
		news.setTitle(title);
		newsDao.updateNews(news);
		return SUCCESS;
	}
	
	public String deleteNews(){
		
		String id = request.getParameter("id");
		
		//newsDao.deleteNews(Integer.parseInt(id));
		
		return SUCCESS;
	}
}