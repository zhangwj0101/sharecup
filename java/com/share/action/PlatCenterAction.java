package com.share.action;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.collections.map.HashedMap;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.share.bean.DLResource;
import com.share.bean.News;
import com.share.bean.PageBean;
import com.share.bean.Platform;
import com.share.bean.Qa;
import com.share.bean.Resource;
import com.share.bean.SourceDown;
import com.share.bean.Statistics;
import com.share.bean.Statistics2;
import com.share.bean.StudentHeader;
import com.share.bean.StudentPlayer;
import com.share.bean.Teacher;
import com.share.bean.UserSession;
import com.share.dao.DLResourceDao;
import com.share.dao.NewsDao;
import com.share.dao.PlatformDao;
import com.share.dao.QaDao;
import com.share.dao.ResourceDao;
import com.share.dao.StudentHeaderDao;
import com.share.dao.StudentPlayerDao;
import com.share.dao.UserDao;
import com.share.support.Utils;
import com.share.util.PagingUtil;
import com.share.util.StringUtil;

public class PlatCenterAction extends ActionSupport implements SessionAware,
		ServletRequestAware, ServletResponseAware {

	private Map<String, Object> session;

	private static final long serialVersionUID = 3631686784849726674L;

	private static final int BUFFER_SIZE = 40 * 1024;

	private HttpServletRequest request;

	private HttpServletResponse response;

	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	private Platform platform;

	private PageBean pageBean = new PageBean();

	private Resource resource;

	File upload1;
	String upload1FileName;
	String upload1FileContentType; // 文件类型

	File upload2;
	String upload2FileName;
	News news = new News();
	Qa qa = new Qa();

	public Qa getQa() {
		return qa;
	}

	public void setQa(Qa qa) {
		this.qa = qa;
	}

	public News getNews() {
		return news;
	}

	public void setNews(News news) {
		this.news = news;
	}

	public Resource getResource() {
		return resource;
	}

	public void setResource(Resource resource) {
		this.resource = resource;
	}

	public PageBean getPageBean() {
		return pageBean;
	}

	public void setPageBean(PageBean pageBean) {
		this.pageBean = pageBean;
	}

	public Platform getPlatform() {
		return platform;
	}

	public void setPlatform(Platform platform) {
		this.platform = platform;
	}

	public File getUpload1() {
		return upload1;
	}

	public void setUpload1(File upload1) {
		this.upload1 = upload1;
	}

	public String getUpload1FileName() {
		return upload1FileName;
	}

	public void setUpload1FileName(String upload1FileName) {
		this.upload1FileName = upload1FileName;
	}

	public String getUpload1FileContentType() {
		return upload1FileContentType;
	}

	public void setUpload1FileContentType(String upload1FileContentType) {
		this.upload1FileContentType = upload1FileContentType;
	}

	public File getUpload2() {
		return upload2;
	}

	public void setUpload2(File upload2) {
		this.upload2 = upload2;
	}

	public String getUpload2FileName() {
		return upload2FileName;
	}

	public void setUpload2FileName(String upload2FileName) {
		this.upload2FileName = upload2FileName;
	}

	/**
	 * 平台中心首页
	 * 
	 * @return
	 */
	public String execute() {
		return SUCCESS;
	}

	/**
	 * 用户信息
	 * 
	 * @return
	 */
	public String platInfo() {
		HttpSession session = request.getSession();
		UserSession userSession = (UserSession) session.getAttribute("user");
		PlatformDao platformDao = new PlatformDao();
		platform = (Platform) platformDao.findById(userSession.getId(),
				"com.share.bean.Platform");

		return SUCCESS;
	}

	/**
	 * <option value="1">报名人数</option> <option value="2">学历</option> <option
	 * value="3">参赛学校</option> <option value="4">报名方式</option> <option
	 * value="5">作品主题</option>
	 */
	private String field = "1";

	public void setField(String field) {
		this.field = field;
	}

	private String platName = "北京离子探针中心";

	public void setPlatName(String platName) {
		this.platName = platName;
	}

	UserDao userDao = new UserDao();
	StudentHeaderDao headerDao = new StudentHeaderDao();
	StudentPlayerDao playerDao = new StudentPlayerDao();
	DLResourceDao resourceDao = new DLResourceDao();

	String classSQL = "select count(1), classes from des_studentheader group by classes";
	String schoolSQL = "select count(1), school from des_studentheader group by school";
	String countSQL = "select count(1), '报名人数' from des_studentheader";
	String typeSQL = "select count(1), IF(ifperson=0,'团队','个人') from des_studentheader group by ifperson";
	String subjectSQL = "select count(1), subject from dl_resource group by subject HAVING subject IS NOT NULL";
	String provinceSQL = "select count(1), province from des_studentheader group by province HAVING province IS NOT NULL";
	String headerPlayerSQL = "select count(a.studentHeader_id), a.`name` from (select x.id, x.`name`,y.studentHeader_id from des_studentheader x, des_studentplayer y where x.id = y.studentHeader_id) a GROUP BY a.studentHeader_id";

	/**
	 * 统计信息
	 * 
	 * @return
	 */
	public String statistics() {
		if (userDao == null) {
			userDao = new UserDao();
		}
		String title = "";
		List<Statistics> list = new ArrayList<Statistics>();
		if (field.equals("1")) {
			list = userDao.countSQL(countSQL);
			title = "总报名人数";
		} else if (field.equals("2")) {
			list = userDao.countSQL(classSQL);
			title = "学历";
		} else if (field.equals("3")) {
			list = userDao.countSQL(schoolSQL);
			title = "学校";
		} else if (field.equals("4")) {
			list = userDao.countSQL(typeSQL);
			title = "报名方式";
		} else if (field.equals("5")) {
			list = userDao.countSQL(subjectSQL);
			title = "作品主题";
		} else if (field.equals("6")) {
			list = userDao.countSQL(provinceSQL);
			title = "省份";
		} else if (field.equals("7")) {
			list = userDao.countSQL(headerPlayerSQL);
			title = "团队";
		}
		request.setAttribute("statistics", list);
		request.setAttribute("title", title);
		request.setAttribute("area", field);
		return SUCCESS;
	}

	public String platZuopinNum() {
		String platZuopinNumSQL = "select count(*) from dl_resource where dl_resource.platname = '"
				+ this.platName + "'";
		List<Statistics> platZuopinNumList = new ArrayList<Statistics>();
		platZuopinNumList = userDao.countSQLPlatZuopinNum(platZuopinNumSQL);
		request.setAttribute("platZuopinNum", platZuopinNumList);
		request.setAttribute("platName", this.platName);
		return SUCCESS;
	}

	public String studentInfo() {
		String scZuopinStuSQL = "select dl_resource.header_id from dl_resource where dl_resource.platname = '"
				+ this.platName + "'";
		List<String> headerIdList = userDao.listScZuopinStu(scZuopinStuSQL);
		int pageSize = pageBean.getPagesize();// 每页大小
		int pageNum = pageBean.getPagenum();// 当前页数
		int resultCount = headerIdList.size();// 总记录数
		int pagecount = resultCount / pageSize;// 总页数
		if (resultCount % pageSize != 0) {
			pagecount++;
		}
		List<String> midHeaderIdList = new ArrayList<String>();
		if (resultCount > pageSize) {
			int limitstart = (pageNum - 1) * pageSize;
			int limittotal = pageSize;
			int limit = 0;
			if (headerIdList.size() > limitstart + limittotal) {
				limit = limitstart + limittotal;
			} else {
				limit = headerIdList.size();
			}
			for (int i = limitstart; i < limit; i++) {
				midHeaderIdList.add(headerIdList.get(i));
			}
		} else {
			midHeaderIdList = headerIdList;
		}
		List<StudentHeader> stuHeaderList = userDao
				.listStuHeader(midHeaderIdList);
		pageBean.setPagecount(pagecount);
		pageBean.setResultcount(resultCount);
		request.setAttribute("zuopinUserList", stuHeaderList);
		request.setAttribute("platName", this.platName);
		return SUCCESS;
	}

	private String part;

	public void setPart(String part) {
		this.part = part;
	}

	private String key;

	public void setKey(String key) {
		this.key = key;
	}

	public String getKey() {
		if (key == null) {
			return "";
		}
		try {
			return URLDecoder.decode(key, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			return key;
		}
	}

	public void export() {
		StringBuilder result = new StringBuilder(0);

		response.setCharacterEncoding("gb2312");
		response.setContentType("text/html");
		response.setHeader("Content-disposition", "attachment;filename="
				+ "statistics" + ".xls");
		PrintWriter writer;
		try {
			writer = response.getWriter();
			if (userDao == null) {
				userDao = new UserDao();
			}

			List list = new ArrayList();

			if (field.equals("1")) {
				// "总报名人数";
				list = headerDao.findAll("com.share.bean.StudentHeader");
			} else if (field.equals("2")) {
				// "学历";
				if (!StringUtil.isNullOrBlank(getKey())) {
					list = headerDao.findByProperty("classes", getKey(),
							"com.share.bean.StudentHeader");
				} else {
					list = headerDao.findAll("com.share.bean.StudentHeader");
				}
			} else if (field.equals("3")) {
				// "学校";
				if (!StringUtil.isNullOrBlank(getKey())) {
					list = headerDao.findByProperty("school", getKey(),
							"com.share.bean.StudentHeader");
				} else {
					list = headerDao.findAll("com.share.bean.StudentHeader");
				}
			} else if (field.equals("4")) {
				// "报名方式";
				if (!StringUtil.isNullOrBlank(getKey())) {
					int ifperson = 1;
					if (getKey().equals("个人")) {
						ifperson = 0;
					}
					list = headerDao.findByProperty("ifperson", ifperson,
							"com.share.bean.StudentHeader");
				} else {
					list = headerDao.findAll("com.share.bean.StudentHeader");
				}
			} else if (field.equals("5")) {
				// "作品主题";
				if (!StringUtil.isNullOrBlank(getKey())) {
					list = resourceDao.findByProperty("subject", getKey(),
							"com.share.bean.DLResource");
				} else {
					list = resourceDao.findAll("com.share.bean.DLResource");
				}
				List<StudentHeader> headerList = new ArrayList<StudentHeader>();
				for (Object object : list) {
					DLResource resource = (DLResource) object;
					headerList.add(resource.getHeader());
				}
				list = headerList;
			} else if (field.equals("6")) {
				// "省份";
				if (!StringUtil.isNullOrBlank(getKey())) {
					list = headerDao.findByProperty("province", getKey(),
							"com.share.bean.StudentHeader");
				} else {
					list = headerDao.findAll("com.share.bean.StudentHeader");
				}
			} else if (field.equals("7")) {
				// "团队";
				if (!StringUtil.isNullOrBlank(getKey())) {
					list = headerDao.findByProperty("name", getKey(),
							"com.share.bean.StudentHeader");
				} else {
					list = headerDao.findAll("com.share.bean.StudentHeader");
				}
			}
			result = fillHeader(result, list);
			response.setHeader("Content_Length", result.toString().length()
					+ "");
			writer.print(result.toString());
			writer.flush();
			writer.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	private StringBuilder fillHeader(StringBuilder result, List list) {
		result.append("编号\t省份\t学校\t专业\t学历\t姓名\t邮件\t电话\t报名方式\t联系地址\t成员\t指导教师\t参赛主题1\t作品1\t题目来源1\t参考资源1\t其他参考资源1\t参赛主题2\t作品2\t题目来源2\t参考资源2\t其他参考资源2\n");
		for (Object obj : list) {
			StudentHeader studentHeader = (StudentHeader) obj;
			result.append(studentHeader.getId()).append("\t");
			result.append(studentHeader.getProvince()).append("\t");
			result.append(studentHeader.getSchool()).append("\t");
			result.append(studentHeader.getMajor()).append("\t");
			result.append(studentHeader.getClasses()).append("\t");
			result.append(studentHeader.getName()).append("\t");
			result.append(studentHeader.getEmail()).append("\t");
			result.append(studentHeader.getPhone()).append("\t");
			result.append(studentHeader.isIfperson() ? "团队" : "个人")
					.append("\t");
			result.append(studentHeader.getAddr()).append("\t");
			boolean flag = false;
			for (StudentPlayer player : studentHeader.getStudentPlayers()) {
				result.append(player.getName()).append("-")
						.append(player.getPhone()).append("，");
				flag = true;
			}
			if (flag) {
				result.append("\t");
			}
			flag = false;
			for (Teacher teacher : studentHeader.getTeachers()) {
				result.append(teacher.getName()).append("-")
						.append(teacher.getPhone()).append("-")
						.append(teacher.getSchool()).append("，");
				flag = true;
			}
			if (flag) {
				result.append("\t");
			}

			Set<DLResource> resources = studentHeader.getResources();
			if (resources.size() == 1) {
				DLResource resource = resources.iterator().next();
				result.append(resource.getSubject()).append("\t");
				result.append(resource.getFilename()).append("-")
						.append(resource.getUptime()).append("，");
				result.append(resource.getPlatname()).append("\t");
				boolean aaa = false;
				for (SourceDown down : studentHeader.getSourceDowns()) {
					Resource resource2 = down.getResource();
					if (resource != null) {
						result.append(resource2.getName());
					}
					if (resource2.getPlatform() != null) {
						result.append(resource2.getPlatform().getName());
					}
					result.append("， ");
					aaa = true;
				}
				if (aaa) {
					result.append("\t");
				}
				result.append(resource.getReference()).append("\t");
			} else if (resources.size() == 2) {
				DLResource resource = resources.iterator().next();
				result.append(resource.getSubject()).append("\t");
				result.append(resource.getFilename()).append("-")
						.append(resource.getUptime()).append("，");
				result.append(resource.getPlatname()).append("\t");
				boolean aaa = false;
				for (SourceDown down : studentHeader.getSourceDowns()) {
					Resource resource2 = down.getResource();
					if (resource != null) {
						result.append(resource2.getName());
					}
					if (resource2.getPlatform() != null) {
						result.append(resource2.getPlatform().getName());
					}
					result.append("， ");
					aaa = true;
				}
				if (aaa) {
					result.append("\t");
				}
				result.append(resource.getReference()).append("\t");

				resources.remove(resource);

				DLResource resource00 = resources.iterator().next();
				result.append(resource00.getSubject()).append("\t");
				result.append(resource00.getFilename()).append("-")
						.append(resource00.getUptime()).append("，");
				result.append(resource00.getPlatname()).append("\t");
				aaa = false;
				for (SourceDown down : studentHeader.getSourceDowns()) {
					Resource resource2 = down.getResource();
					if (resource != null) {
						result.append(resource2.getName());
					}
					if (resource2.getPlatform() != null) {
						result.append(resource2.getPlatform().getName());
					}
					result.append("， ");
					aaa = true;
				}
				if (aaa) {
					result.append("\t");
				}
				result.append(resource00.getReference()).append("\t");
			}

			flag = false;
			for (DLResource resource : studentHeader.getResources()) {
				result.append(resource.getSubject());
				flag = true;
				break;
			}
			if (flag) {
				result.append("\t");
			}

			flag = false;
			for (DLResource resource : studentHeader.getResources()) {
				result.append(resource.getFilename()).append("-")
						.append(resource.getUptime()).append("，");
				flag = true;
				break;
			}
			if (flag) {
				result.append("\t");
			}

			for (SourceDown down : studentHeader.getSourceDowns()) {
				Resource resource = down.getResource();
				if (resource != null) {
					result.append(resource.getName());
				}
				if (resource.getPlatform() != null) {
					result.append(resource.getPlatform().getName());
				}
				result.append(", ");
			}

			result.append("\n");
		}
		return result;
	}

	public void exportStatistics() {
		StringBuilder result = new StringBuilder(0);

		response.setCharacterEncoding("GB2312");
		response.setContentType("text/html");
		response.setHeader("Content-disposition", "attachment;filename="
				+ "Statistics.html");
		PrintWriter writer;
		try {
			writer = response.getWriter();
			if (userDao == null) {
				userDao = new UserDao();
			}
			String title = "";
			List<Statistics> list = new ArrayList<Statistics>();
			title = "1. 总报名人数";
			list = userDao.countSQL(countSQL);
			result.append(writeTo(title, list));
			title = "2. 按照学历统计";
			list = userDao.countSQL(classSQL);
			result.append(writeTo(title, list));
			title = "3. 按照学校统计";
			list = userDao.countSQL(schoolSQL);
			result.append(writeTo(title, list));
			title = "4. 按照报名方式统计";
			list = userDao.countSQL(typeSQL);
			result.append(writeTo(title, list));
			title = "5. 按照作品主题统计";
			list = userDao.countSQL(subjectSQL);
			result.append(writeTo(title, list));
			title = "6. 按所在省份统计";
			list = userDao.countSQL(provinceSQL);
			result.append(writeTo(title, list));
			title = "7. 按团队成员统计";
			list = userDao.countSQL(headerPlayerSQL);
			result.append(writeTo(title, list));

			response.setHeader("Content_Length", result.toString().length()
					+ "");

			writer.print(result.toString());
			writer.flush();
			writer.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 地区 学校 参赛人员 参赛方式 人数 电话 邮箱
	 */
	private String es2SQL = "select a.province, a.school, a.`name`, CASE a.ifperson WHEN 1 THEN '团队' ELSE '个人' END AS type, (SELECT CASE count(*) WHEN 0 THEN 1 ELSE count(*) END from des_studentplayer b where a.id = b.studentHeader_id) AS count, a.phone, a.email from des_studentheader a ORDER BY count desc";

	public void exportStatistics2() {
		StringBuilder result = new StringBuilder(0);

		response.setCharacterEncoding("GB2312");
		response.setContentType("text/html");
		response.setHeader("Content-disposition", "attachment;filename="
				+ "statistics.xls");
		PrintWriter writer;
		try {
			writer = response.getWriter();
			if (userDao == null) {
				userDao = new UserDao();
			}

			List<Statistics2> list = userDao.statisticSQL(es2SQL);
			for (Statistics2 statistics2 : list) {
				result.append(statistics2.toString());
			}

			response.setHeader("Content_Length", result.toString().length()
					+ "地区	学校	参赛人员	参赛方式	人数	电话	邮箱\n".length() + "");

			writer.print("地区	学校	参赛人员	参赛方式	人数	电话	邮箱\n" + result.toString());
			writer.flush();
			writer.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public String writeTo(String title, List<Statistics> list) {
		String result = "<p style='font-size:14px;color:red;'><b>" + title
				+ "</b></p>";
		for (Statistics as : list) {
			result += "<p style='font-size:12px;color:#B5B5B5;'>&nbsp;&nbsp;&nbsp;&nbsp;"
					+ as.getCount()
					+ "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
					+ as.getField() + "</p>";
		}
		return result;
	}

	/**
	 * 资源列表
	 * 
	 * @return
	 */
	public String resourceList() {
		resource = null;
		int pagesize = pageBean.getPagesize(); // 每页大小
		int pagenum = pageBean.getPagenum();
		HttpSession session = request.getSession();
		UserSession userSession = (UserSession) session.getAttribute("user");
		ResourceDao resourceDao = new ResourceDao();
		Map<String, Object> map = new HashedMap();
		map.put("platform.id", userSession.getId());
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

	/**
	 * 资源上报
	 * 
	 * @return
	 */
	public String resourceReport() {
		String id = request.getParameter("id");
		if (id != null && !id.equals("")) {
			ResourceDao resourceDao = new ResourceDao();
			resource = (Resource) resourceDao.findById(Integer.parseInt(id),
					"com.share.bean.Resource");
		}
		return SUCCESS;
	}

	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	/**
	 * 保存用户信息
	 * 
	 * @return
	 */
	public String saveInfo() {
		HttpSession session = request.getSession();
		UserSession userSession = (UserSession) session.getAttribute("user");
		PlatformDao platformDao = new PlatformDao();
		Platform platform_update = (Platform) platformDao.findById(
				userSession.getId(), "com.share.bean.Platform");
		platform_update.setLinkaddr(platform.getLinkaddr());
		platform_update.setLinkemail(platform.getLinkemail());
		platform_update.setLinkname(platform.getLinkname());
		platform_update.setLinkphone(platform.getLinkphone());
		platformDao.merge(platform_update);
		platform = platform_update;
		request.setAttribute("tip", "用户信息修改成功");
		return "save";
	}

	public String saveResource() {
		ResourceDao resourceDao = new ResourceDao();
		if (resource.getId() == null || resource.equals("")) {
			// if(upload1FileName==null||upload1FileName.equals("")){
			// request.setAttribute("tip", "请选择上传的图片");
			// return ERROR;
			// }
			if (upload2FileName == null || upload2FileName.equals("")) {
				if (resource.getFtp() == null || resource.getFtp().equals("")) {
					request.setAttribute("tip", "请选择上传的数据集或者指定ftp地址");
					return ERROR;
				} else {
					if (!resource.getFtp().startsWith("ftp://")) {
						request.setAttribute("tip", "请填写正确的ftp地址");
						return ERROR;
					}
				}
			}
			// if(Utils.verdictType(upload1FileName)||Utils.verdictType(upload2FileName)){
			// request.setAttribute("tip", "请勿上传非法文件！");
			// return ERROR;
			// }
		} else {
			if (upload1FileName != null && !upload1FileName.equals("")) {
				if (Utils.verdictType(upload1FileName)) {
					request.setAttribute("tip", "请勿上传非法文件！");
					return ERROR;
				}
			}
			if (upload2FileName != null && !upload2FileName.equals("")) {
				if (Utils.verdictType(upload2FileName)) {
					request.setAttribute("tip", "请勿上传非法文件！");
					return ERROR;
				}
			}
		}
		if (resource.getId() != null && !resource.equals("")) {
			Resource resourceOld = (Resource) resourceDao.findById(
					resource.getId(), "com.share.bean.Resource");
			if (upload1FileName != null && !upload1FileName.equals("")) {
				String filet = resourceOld.getFilet();
				if (filet != null && !filet.equals("")) {
					File oldFile = new File(filet);
					if (oldFile.exists()) {
						oldFile.delete();
					}
				}
			}
			if (upload2FileName != null && !upload2FileName.equals("")) {
				String files = resourceOld.getFiles();
				if (files != null && !files.equals("")) {
					File oldFile = new File(files);
					if (oldFile.exists()) {
						oldFile.delete();
					}
				}
			}

		}
		HttpSession session = request.getSession();
		UserSession userSession = (UserSession) session.getAttribute("user");
		PlatformDao platformDao = new PlatformDao();
		Platform plat = (Platform) platformDao.findById(userSession.getId(),
				"com.share.bean.Platform");
		resource.setPlatform(plat);

		if (upload1 != null) {
			String tomcatPath = new File(System.getProperty("java.io.tmpdir"))
					.getParentFile().getAbsolutePath();
			String imagPath = tomcatPath + "\\webapps\\ShareCup\\dataimg";
			File file = new File(imagPath);
			if (!file.exists()) {
				file.mkdirs();
			}
			copy(upload1, new File(imagPath + "\\" + System.currentTimeMillis()
					+ Utils.getFileType(upload1FileName)));
			resource.setFilet("dataimg/" + System.currentTimeMillis()
					+ Utils.getFileType(upload1FileName));
		}

		if (upload2 != null) {
			String username = userSession.getUsername();
			try {
				username = plat.getUsername();
			} catch (Exception e) {
			}

			// String dataPath = "D:\\data\\" + username;
			// String dataPath =
			// request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+
			// "/upload/resource/" + username;
			// String tomcatPath = new
			// File(System.getProperty("java.io.tmpdir")).getParentFile().getAbsolutePath();
			// String dataPath = tomcatPath+ "/upload/resource/" + username;
			String dataPath = request.getSession().getServletContext()
					.getRealPath("upload/resource")
					+ File.separator + username;
			File file1 = new File(dataPath);
			if (!file1.exists()) {
				file1.mkdirs();
			}
			File file2 = new File(dataPath + "\\" + System.currentTimeMillis()
					+ Utils.getFileType(upload2FileName));
			copy(upload2, file2);
			resource.setFiles(file2.getPath());
			// FtpUtil ftpUtil = new
			// FtpUtil("10.10.10.10","student","student","/home/student");
			// ftpUtil.upload(file2);
		}

		resourceDao.merge(resource);
		return "save_resource";
	}

	private static boolean copy(File src, File dst) {
		boolean result = false;
		InputStream in = null;
		OutputStream out = null;
		try {
			in = new BufferedInputStream(new FileInputStream(src), BUFFER_SIZE);
			out = new BufferedOutputStream(new FileOutputStream(dst),
					BUFFER_SIZE);
			byte[] buffer = new byte[BUFFER_SIZE];
			int len = 0;
			while ((len = in.read(buffer)) > 0) {
				out.write(buffer, 0, len);
			}
			result = true;
		} catch (Exception e) {
			e.printStackTrace();
			result = false;
		} finally {
			if (null != in) {
				try {
					in.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			if (null != out) {
				try {
					out.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		return result;
	}

	public String newsoperate() {
		String tmp = request.getParameter("page");
		if (tmp == null) {
			tmp = "1";
		}
		int page = Integer.parseInt(tmp);
		request.setAttribute("currPage", page);
		int pageSize = 0;
		int itemCount = 0;

		NewsDao newsdao = new NewsDao();
		List<News> newslist = newsdao.getNews();
		request.setAttribute("newslist", newslist);
		System.out.println(newslist.size());

		pageSize = PagingUtil.getPage(newslist, "12");
		itemCount = newslist.size();
		request.setAttribute("itemCount", itemCount);
		request.setAttribute("pageSize", pageSize);

		return "newslist";
	}

	public String getnews() {

		String id = request.getParameter("id");
		NewsDao newsdao = new NewsDao();
		news = newsdao.getNewsById(Integer.parseInt(id));
		request.setAttribute("news", news);

		return "getnews";
	}

	public String editnews() {

		String id = request.getParameter("id");
		session.remove("imguri");
		NewsDao newsdao = new NewsDao();
		if (!StringUtil.isNullOrBlank(id)) {
			news = newsdao.getNewsById(Integer.parseInt(id));
			request.setAttribute("news", news);
		}
		return "editnews";
	}

	public String updatenews() {

		String id = request.getParameter("id");
		System.out.println(id);
		String title = request.getParameter("title");
		System.out.println(title);
		String text = request.getParameter("content");
		System.out.println(text);
		String type = request.getParameter("type");
		System.out.println("=============================================="
				+ type);
		SimpleDateFormat dateFormat = new SimpleDateFormat(
				"yyyy-MM-dd HH:mm:ss");
		String time = dateFormat.format(new Date());

		NewsDao newsdao = new NewsDao();

		if (!StringUtil.isNullOrBlank(id)) {
			news = newsdao.getNewsById(Integer.parseInt(id));
			news.setContent(text);
			news.setTimes(time);
			news.setTitle(title);
			news.setType(type);
			List<String> imguri = (List<String>) session.get("imguri");
			if (imguri != null && imguri.size() != 0) {

				for (int i = 0; i < imguri.size(); i++) {
					news.setContent_pic(imguri.get(i) + ",");
				}

			}
			newsdao.updateNews(news);
		} else {
			List<String> imguri = (List<String>) session.get("imguri");
			if (imguri != null && imguri.size() != 0) {

				for (int i = 0; i < imguri.size(); i++) {
					news.setContent_pic(imguri.get(i) + ",");
				}

			}
			news.setContent(text);
			news.setTimes(time);
			news.setTitle(title);
			news.setType(type);
			newsdao.saveNews(news);
		}
		return "updatenews";
	}

	public String deletenews() {

		String id = request.getParameter("id");

		NewsDao newsdao = new NewsDao();
		news = newsdao.getNewsById(Integer.parseInt(id));
		newsdao.deleteNews(news);

		return "deletenews";
	}

	public String qa() {
		String tmp = request.getParameter("page");
		if (tmp == null) {
			tmp = "1";
		}
		int page = Integer.parseInt(tmp);
		request.setAttribute("currPage", page);
		int pageSize = 0;
		int itemCount = 0;

		QaDao qadao = new QaDao();
		List<Qa> qalist = qadao.getQa();
		request.setAttribute("qalist", qalist);
		System.out.println(qalist.size());

		pageSize = PagingUtil.getPage(qalist, "12");
		itemCount = qalist.size();
		request.setAttribute("itemCount", itemCount);
		request.setAttribute("pageSize", pageSize);

		return "qalist";
	}

	public String getqa() {

		String id = request.getParameter("id");
		QaDao qadao = new QaDao();
		qa = qadao.getQaById(Integer.parseInt(id));
		request.setAttribute("qa", qa);

		return "getqa";
	}

	public String editqa() {

		String id = request.getParameter("id");
		QaDao qadao = new QaDao();
		if (!StringUtil.isNullOrBlank(id)) {
			qa = qadao.getQaById(Integer.parseInt(id));
			request.setAttribute("qa", qa);
		}
		return "editqa";
	}

	public String updateqa() {

		String id = request.getParameter("id");
		System.out.println(id);
		String answer = request.getParameter("answer");

		SimpleDateFormat dateFormat = new SimpleDateFormat(
				"yyyy-MM-dd HH:mm:ss");
		String a_time = dateFormat.format(new Date());

		QaDao qadao = new QaDao();
		qa = qadao.getQaById(Integer.parseInt(id));
		qa.setAnswer(answer);
		qa.setA_time(a_time);
		qadao.updateQa(qa);

		return "updateqa";
	}

	public String deleteqa() {

		String id = request.getParameter("id");

		QaDao qadao = new QaDao();
		qa = qadao.getQaById(Integer.parseInt(id));
		qadao.deleteQa(qa);

		return "deleteqa";
	}

}
