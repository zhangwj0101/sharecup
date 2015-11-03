package com.share.action;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;
import com.share.bean.DLApply;
import com.share.bean.DLResource;
import com.share.bean.Inform;
import com.share.bean.PageBean;
import com.share.bean.Platform;
import com.share.bean.Resource;
import com.share.bean.SourceBrowse;
import com.share.bean.SourceScore;
import com.share.bean.StudentHeader;
import com.share.bean.User;
import com.share.bean.UserSession;
import com.share.dao.DLApplyDao;
import com.share.dao.DLResourceDao;
import com.share.dao.InformDao;
import com.share.dao.ResourceDao;
import com.share.dao.SourceBrowseDao;
import com.share.dao.SourceScoreDao;
import com.share.dao.StudentHeaderDao;
import com.share.dao.UserDao;
import com.share.support.Utils;
import com.share.util.MessageSender;
import com.share.util.StringUtil;

public class UserCenterAction extends ActionSupport implements
		ServletRequestAware {

	private static final long serialVersionUID = -640198748487514408L;

	private HttpServletRequest request;

	private StudentHeaderDao studentHeaderDao;

	private StudentHeader student;

	private PageBean pageBean = new PageBean();

	public StudentHeader getStudent() {
		return student;
	}

	public void setStudent(StudentHeader student) {
		this.student = student;
	}

	private DLResourceDao dlResourceDao;

	private DLApplyDao dlApplyDao;

	public UserCenterAction() {
		super();
		studentHeaderDao = new StudentHeaderDao();
		dlResourceDao = new DLResourceDao();
		dlApplyDao = new DLApplyDao();
	}

	public PageBean getPageBean() {
		return pageBean;
	}

	public void setPageBean(PageBean pageBean) {
		this.pageBean = pageBean;
	}

	public String index() {
		HttpSession session = request.getSession();
		UserSession userSession = (UserSession) session.getAttribute("user");
		Integer userid = userSession.getId();
		UserDao userDao = new UserDao();
		User user = (User) userDao.findById(userid, "com.share.bean.User");

		if (user.instanceOf(StudentHeader.class)) {
			return "studentCenter";
		} else if (user.instanceOf(Platform.class)) {
			return "platCenter";
		} else {
			return ERROR;
		}

	}

	/**
	 * 忘记密码
	 */
	public String forgetpass() {
		return SUCCESS;
	}

	private String email;

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEmail() {
		return email;
	}

	public String sendemail() {
		// 邮件已经发送到您的邮箱，请到邮箱重置密码！
		String msg = "";
		if (StringUtil.isNullOrBlank(email)) {
			msg = "请填写您注册时填写的邮箱地址！";
		} else {
			List<StudentHeader> headers = studentHeaderDao.findByProperty(
					"email", email, "StudentHeader");
			if (headers != null && headers.size() > 0) {
				StudentHeader header = headers.get(0);
				String newpass = System.currentTimeMillis() + "";
				try {
					MessageSender.setTo(email);
					MessageSender
							.send("密码重置通知",
									"<b>"
											+ header.getUsername()
											+ ":</b><p style='font-size:12px;'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;点击链接进行密码重置：<a href='http://share.escience.gov.cn/reset.action?s="
											+ StringUtil.md5(newpass)
													.toLowerCase()
											+ header.getId()
											+ "'>点此重置<a><br/><br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;或者复制下面链接到浏览器：http://share.escience.gov.cn/reset.action?s="
											+ StringUtil.md5(newpass)
													.toLowerCase()
											+ header.getId() + "</p>", "");
					// header.setPassword(StringUtil.md5(newpass).toLowerCase());
					// studentHeaderDao.merge(header);
					msg = "密码重置邮件已经发送到您的邮箱，请查收！";
				} catch (Exception e) {
					msg = "邮件发送失败！";
				}
			} else {
				msg = "邮箱地址不存在！";
			}
		}
		request.setAttribute("msg", msg);
		return "success";
	}

	/**
	 * 忘记密码
	 */
	public String reset() {
		String msg = null;
		String flag = request.getParameter("s");
		if (StringUtil.isNullOrBlank(flag)) {
			msg = "链接已经失效！";
		} else {
			String id = flag.substring(32);
			List<StudentHeader> headers = studentHeaderDao.findByProperty("id",
					Integer.parseInt(id), "StudentHeader");
			if (headers != null && headers.size() > 0) {
				StudentHeader header = headers.get(0);
				String question = header.getQuestion();
				request.setAttribute("question", question);
			} else {
				msg = "用户不存在！";
			}
		}
		request.setAttribute("msg", msg);
		request.setAttribute("s", flag);
		return SUCCESS;
	}

	public String passquestion() {
		String answer = request.getParameter("answer");
		String msg = null;
		String flag = request.getParameter("s");
		if (StringUtil.isNullOrBlank(flag)) {
			msg = "链接已经失效！";
		} else {
			String id = flag.substring(32);
			List<StudentHeader> headers = studentHeaderDao.findByProperty("id",
					Integer.parseInt(id), "StudentHeader");
			if (headers != null && headers.size() > 0) {
				StudentHeader header = headers.get(0);
				String realAnswer = header.getAnswer();
				if (realAnswer != null && realAnswer.equals(answer)) {
					request.setAttribute("r", 1);
				} else {
					msg = "密码回答错误！";
				}
			} else {
				msg = "用户不存在！";
			}
		}
		request.setAttribute("msg", msg);
		request.setAttribute("s", flag);
		return SUCCESS;
	}

	public String passsubmit() {
		String pass = request.getParameter("pass");
		String repass = request.getParameter("repass");
		String flag = request.getParameter("s");
		String msg = null;
		if (pass != null && pass.equals(repass)) {
			if (StringUtil.isNullOrBlank(flag)) {
				msg = "链接已经失效！";
			} else {
				String id = flag.substring(32);
				List<StudentHeader> headers = studentHeaderDao.findByProperty(
						"id", Integer.parseInt(id), "StudentHeader");
				if (headers != null && headers.size() > 0) {
					StudentHeader header = headers.get(0);
					header.setPassword(StringUtil.md5(pass).toLowerCase());
					studentHeaderDao.merge(header);
					msg = "密码重置成功，请重新登陆！";
				} else {
					msg = "用户不存在！";
				}
			}
		} else {
			msg = "两次输入密码不一致！";
		}

		request.setAttribute("msg", msg);
		return SUCCESS;
	}

	/**
	 * 参赛用户信息
	 * 
	 * @return
	 */
	public String studentList() {
		int pagesize = pageBean.getPagesize(); // 每页大小
		int pagenum = pageBean.getPagenum();
		HttpSession session = request.getSession();
		StudentHeaderDao headerDao = new StudentHeaderDao();
		List<StudentHeader> resourcelist = headerDao.findPagesList(
				"com.share.bean.StudentHeader", null, pagesize, pagenum);
		int resultcount = headerDao.getCount("com.share.bean.StudentHeader",
				null);
		int pagecount = resultcount / pagesize;
		if (resultcount % pagesize != 0) {
			pagecount++;
		}
		pageBean.setPagecount(pagecount);
		pageBean.setResultcount(resultcount);
		request.setAttribute("userlist", resourcelist);
		return SUCCESS;
	}

	/**
	 * 搜索参赛用户信息
	 * 
	 * @return
	 */
	public String searchStudent() {
		int pagesize = pageBean.getPagesize(); // 每页大小
		int pagenum = pageBean.getPagenum();
		HttpSession session = request.getSession();
		String field = request.getParameter("field");
		String searchWord = request.getParameter("searchWord");
		if (!"".equals(searchWord) && searchWord != null) {
			try {
				searchWord = URLDecoder.decode(searchWord, "UTF-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
		}
		if (!"1".equals(field) && !"2".equals(field) && !"3".equals(field)) {
			field = "1";
		}
		Map<String, Object> map = new HashMap<String, Object>();
		if ("1".equals(field)) {
			map.put("name", searchWord);
		} else if ("2".equals(field)) {
			map.put("school", searchWord);
		} else if ("3".equals(field)) {
			map.put("phone", searchWord);
		}

		StudentHeaderDao headerDao = new StudentHeaderDao();
		List<StudentHeader> resourcelist = headerDao.findPagesList(
				"com.share.bean.StudentHeader", map, pagesize, pagenum);
		int resultcount = headerDao.getCount("com.share.bean.StudentHeader",
				map);
		int pagecount = resultcount / pagesize;
		if (resultcount % pagesize != 0) {
			pagecount++;
		}
		pageBean.setPagecount(pagecount);
		pageBean.setResultcount(resultcount);
		request.setAttribute("userlist", resourcelist);
		return SUCCESS;
	}

	public String subjectList() {
		int pagesize = pageBean.getPagesize(); // 每页大小
		int pagenum = pageBean.getPagenum();
		HttpSession session = request.getSession();
		List<DLResource> tmpList = dlResourceDao.findPagesList(
				"com.share.bean.DLResource", null, pagesize, pagenum);
		List<DLResource> resourcelist = new ArrayList<DLResource>();
		List<StudentHeader> headerList = new ArrayList<StudentHeader>();
		for (DLResource resource : tmpList) {
			if (!headerList.contains(resource.getHeader())) {
				resourcelist.add(resource);
				headerList.add(resource.getHeader());
			}
		}

		int headercount = dlResourceDao.getDistinctCount(
				"com.share.bean.DLResource", "header.id");

		int resultcount = dlResourceDao.getCount("com.share.bean.DLResource",
				null);
		int pagecount = resultcount / pagesize;
		if (resultcount % pagesize != 0) {
			pagecount++;
		}
		pageBean.setPagecount(pagecount);
		pageBean.setResultcount(resultcount);
		request.setAttribute("resourcelist", resourcelist);
		request.setAttribute("headercount", headercount);
		return SUCCESS;
	}

	public String searchSubject() {
		int pagesize = pageBean.getPagesize(); // 每页大小
		int pagenum = pageBean.getPagenum();
		HttpSession session = request.getSession();

		String field = request.getParameter("field");
		String searchWord = request.getParameter("searchWord");
		if (!"".equals(searchWord) && searchWord != null) {
			try {
				searchWord = URLDecoder.decode(searchWord, "UTF-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
		}
		if (!"1".equals(field) && !"2".equals(field) && !"3".equals(field)
				&& !"4".equals(field)) {
			field = "4";
		}
		Map<String, Object> map = new HashMap<String, Object>();
		if ("1".equals(field)) {
			map.put("header.name", searchWord);
		} else if ("2".equals(field)) {
			map.put("header.school", searchWord);
		} else if ("3".equals(field)) {
			map.put("header.phone", searchWord);
		} else if ("4".equals(field)) {
			map.put("subject", searchWord);
		}

		List<DLResource> tmpList = dlResourceDao.findPagesList(
				"com.share.bean.DLResource", map, pagesize, pagenum);
		List<DLResource> resourcelist = new ArrayList<DLResource>();
		List<StudentHeader> headerList = new ArrayList<StudentHeader>();
		for (DLResource resource : tmpList) {
			if (!headerList.contains(resource.getHeader())) {
				resourcelist.add(resource);
				headerList.add(resource.getHeader());
			}
		}

		int headercount = dlResourceDao.getDistinctCount(
				"com.share.bean.DLResource", "header.id");

		int resultcount = dlResourceDao.getCount("com.share.bean.DLResource",
				map);
		int pagecount = resultcount / pagesize;
		if (resultcount % pagesize != 0) {
			pagecount++;
		}
		pageBean.setPagecount(pagecount);
		pageBean.setResultcount(resultcount);
		request.setAttribute("resourcelist", resourcelist);
		request.setAttribute("headercount", headercount);
		return SUCCESS;
	}

	/**
	 * 用户中心首页
	 * 
	 * @return
	 */
	@Override
	public String execute() {
		return SUCCESS;
	}

	/**
	 * 报名信息
	 * 
	 * @return
	 */
	public String regionInfo() {
		HttpSession session = request.getSession();
		UserSession userSession = (UserSession) session.getAttribute("user");
		List<StudentHeader> headers = studentHeaderDao.findByProperty("id",
				userSession.getId(), "StudentHeader");
		if (headers != null && headers.size() > 0) {
			StudentHeader header = headers.get(0);
			student = header;
		}
		return SUCCESS;
	}

	/**
	 * 报名信息
	 * 
	 * @return
	 */
	public String regionInfo1() {
		String id = request.getParameter("id");
		List<StudentHeader> headers = studentHeaderDao.findByProperty("id",
				Integer.parseInt(id), "StudentHeader");
		if (headers != null && headers.size() > 0) {
			StudentHeader header = headers.get(0);
			student = header;
		}
		return SUCCESS;
	}

	/**
	 * 通知
	 * 
	 * @return
	 */
	public String noticeList() {
		int pagesize = pageBean.getPagesize(); // 每页大小
		int pagenum = pageBean.getPagenum();
		InformDao informDao = new InformDao();
		List<Inform> informlist = informDao.findPagesList("Inform", null,
				pagesize, pagenum);
		int resultcount = informDao.getCount("Inform", null);
		int pagecount = resultcount / pagesize;
		if (resultcount % pagesize != 0) {
			pagecount++;
		}
		pageBean.setPagecount(pagecount);
		pageBean.setResultcount(resultcount);
		request.setAttribute("informlist", informlist);
		return SUCCESS;
	}

	public String noticeContent() {
		String id = request.getParameter("id");
		InformDao informDao = new InformDao();
		Inform inform = (Inform) informDao.findById(Integer.parseInt(id),
				"com.share.bean.Inform");
		request.setAttribute("inform", inform);
		return SUCCESS;
	}

	/**
	 * 作品上传
	 * 
	 * @return
	 */
	public String workUpload() {
		boolean flag = false;
		HttpSession session = request.getSession();
		UserSession userSession = (UserSession) session.getAttribute("user");
		StudentHeader header = (StudentHeader) studentHeaderDao.findById(
				userSession.getId(), "com.share.bean.StudentHeader");
		String filename = header.getOpus();
		if (filename != null && !filename.equals("")) {
			flag = true;
		}
		if (flag) {
			request.setAttribute("path", filename);
		}
		return SUCCESS;
	}

	/**
	 * 资源下载
	 * 
	 * @return
	 */
	public String resourceDownload() {
		int pagesize = pageBean.getPagesize(); // 每页大小
		int pagenum = pageBean.getPagenum();

		String field = request.getParameter("field");
		String searchWord = request.getParameter("searchWord");
		if (!"".equals(searchWord) && searchWord != null) {
			try {
				searchWord = URLDecoder.decode(searchWord, "UTF-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
		}

		Map<String, Object> map = new HashMap<String, Object>();
		if ("1".equals(field)) {
			map.put("name", searchWord);
		} else if ("2".equals(field)) {
			map.put("origin", searchWord);
		} else {
			map = null;
		}

		ResourceDao resourceDao = new ResourceDao();
		List<Resource> resourcelist = resourceDao.findPagesList(
				"com.share.bean.Resource", map, pagesize, pagenum);
		int resultcount = resourceDao.getCount("com.share.bean.Resource", map);
		int pagecount = resultcount / pagesize;
		if (resultcount % pagesize != 0) {
			pagecount++;
		}
		pageBean.setPagecount(pagecount);
		pageBean.setResultcount(resultcount);
		request.setAttribute("resourcelist", resourcelist);
		return SUCCESS;

	}

	public String resourceDetail() {
		String id = request.getParameter("id");
		ResourceDao resourceDao = new ResourceDao();
		Resource resource = (Resource) resourceDao.findById(
				Integer.parseInt(id), "com.share.bean.Resource");
		SourceBrowse sourceBrowse = null;
		if (resource.getSourceBrowse() == null) {
			sourceBrowse = new SourceBrowse();
			sourceBrowse.setBrowseNum(1);
			resource.setSourceBrowse(sourceBrowse);
			new ResourceDao().merge(resource);
		} else {
			sourceBrowse = resource.getSourceBrowse();
			sourceBrowse.setBrowseNum(sourceBrowse.getBrowseNum() + 1);
			sourceBrowse.setResource(resource);
			new SourceBrowseDao().merge(sourceBrowse);
		}
		Resource resource1 = (Resource) resourceDao.findById(
				Integer.parseInt(id), "com.share.bean.Resource");
		request.setAttribute("resource", resource1);
		return SUCCESS;
	}

	/**
	 * 用户设置
	 * 
	 * @return
	 */
	public String userSetting() {
		request.setAttribute("flag", false);
		return SUCCESS;
	}

	public String changePassword() {
		String type = request.getParameter("type");
		HttpSession session = request.getSession();
		UserSession userSession = (UserSession) session.getAttribute("user");
		if (type != null && type.equals("security")) {
			String answer = request.getParameter("answer");
			if (answer == null || answer.equals("")) {
				request.setAttribute("tip", "请填写密保问题！");
				request.setAttribute("flag", false);
				return ERROR;
			} else if (answer.equals(userSession.getAnswer())) {
				request.setAttribute("flag", true);
				return ERROR;
			} else {
				request.setAttribute("tip", "密保问题不正确！");
				request.setAttribute("flag", false);
				return ERROR;
			}
		} else {
			String prepassword = request.getParameter("prepassword");
			String sepassword = request.getParameter("sepassword");
			StudentHeader student = (StudentHeader) studentHeaderDao
					.findByProperty("id", userSession.getId(), "StudentHeader")
					.get(0);
			String MD5Password = Utils.getMD5(prepassword);
			if (prepassword == null
					|| !MD5Password.equals(student.getPassword())) {
				request.setAttribute("tip", "原始密码不正确！");
				request.setAttribute("flag", true);
				return ERROR;
			} else {
				student.setPassword(Utils.getMD5(sepassword));
				studentHeaderDao.merge(student);
				return SUCCESS;
			}
		}

	}

	public String resourceStar() {
		SourceScoreDao scoreDao = new SourceScoreDao();
		ResourceDao resourceDao = new ResourceDao();
		String id = request.getParameter("id");
		String rate = request.getParameter("rating");
		HttpSession session = request.getSession();
		UserSession userSession = (UserSession) session.getAttribute("user");
		Integer userid = userSession.getId();
		List<SourceScore> scores = scoreDao.findByProperty("student.id",
				userid, "SourceScore");
		if (rate == null || rate.equals("")) {
			Resource resource = (Resource) resourceDao.findById(
					Integer.parseInt(id), "com.share.bean.Resource");
			request.setAttribute("resource", resource);
			request.setAttribute("tip", "请选择星级！");
			return ERROR;
		}
		if (scores == null || scores.size() > 0) {
			Resource resource = (Resource) resourceDao.findById(
					Integer.parseInt(id), "com.share.bean.Resource");
			request.setAttribute("resource", resource);
			request.setAttribute("tip", "您已经评价过了！");
			return ERROR;
		}

		StudentHeader header = new StudentHeader();
		header.setId(userid);

		scoreDao.setSore(Integer.parseInt(id), header, rate);
		Resource resource1 = (Resource) resourceDao.findById(
				Integer.parseInt(id), "com.share.bean.Resource");
		request.setAttribute("resource", resource1);
		return SUCCESS;
	}

	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	/**
	 * 申请资源申请
	 */
	public String resourceApply() {
		String title = request.getParameter("resource_title");
		String plat = request.getParameter("resource_platform");

		if (title == null || "".equals(title)) {
			return SUCCESS;
		}

		if (plat == null || "".equals(plat)) {
			return SUCCESS;
		}

		HttpSession session = request.getSession();
		UserSession userSession = (UserSession) session.getAttribute("user");
		Integer userid = userSession.getId();

		DLApply dlApply = new DLApply();
		dlApply.setDltime(StringUtil.formatDate(new Date()));
		dlApply.setResourcename(title);
		dlApply.setPlatformname(plat);
		StudentHeader header = new StudentHeader();
		header.setId(userid);
		dlApply.setHeader(header);
		dlApplyDao.save(dlApply);

		request.setAttribute("applyok", "1");

		return SUCCESS;
	}

}