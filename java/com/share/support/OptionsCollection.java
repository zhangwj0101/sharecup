package com.share.support;

import java.util.List;
import java.util.Map;

import org.apache.commons.collections.map.HashedMap;

import com.share.bean.DLResource;
import com.share.bean.Library;
import com.share.bean.News;
import com.share.bean.Resource;
import com.share.bean.SourceDown;
import com.share.dao.DLResourceDao;
import com.share.dao.LibraryDao;
import com.share.dao.NewsDao;
import com.share.dao.ResourceDao;
import com.share.dao.SourceDownDao;

public class OptionsCollection {
	
	public static List<Library> getLibraries(){
		LibraryDao hibernateTemplate = new LibraryDao();
		List<Library> libraries =  hibernateTemplate.findPagesList("Library",null, 5, 1);
		return libraries;
	}
	
	public static List<Resource> getReources(){
		ResourceDao hibernateTemplate = new ResourceDao();
		List<Resource> resources =  hibernateTemplate.findPagesList("Resource",null, 10, 1);
		return resources;
	}
	
	public static List<News> getNews(){
		NewsDao hibernateTemplate = new NewsDao();
		List<News> news = hibernateTemplate.findPagesList("News",null, 5, 1);
		return news;
	}
	
	public static int getDownCount(int headerID){
		SourceDownDao sourceDao = new SourceDownDao();
		List<SourceDown> downs = sourceDao.findByProperty("student.id", headerID, "com.share.bean.SourceDown");
		if(downs!=null){
			return downs.size();
		}else{
			return 0;
		}
	}
	
	public static boolean ifDown(int headerID){
		boolean flag = false;
		int count = getDownCount(headerID);
		if(count<=10){
			flag = true;
		}
		return flag;
	}
	
	
	public static String getSubject(int headerID){
		String result = "";

		DLResourceDao dlDao = new DLResourceDao();
		List<DLResource> subjects = dlDao.findByProperty("header.id", headerID, "com.share.bean.DLResource");
		if(subjects.size() > 0){
			for (DLResource resource : subjects) {
				result += "\" " + resource.getSubject() + "\"   ";
			}
		}else{
			result = "尚未参赛";
		}
		
		return result;
	}
	
	public static List<DLResource> getSubjects(int headerID){
		DLResourceDao dlDao = new DLResourceDao();
		return dlDao.findByProperty("header.id", headerID, "com.share.bean.DLResource");
	}		
	
	public static boolean thisResourceDown(int headerID,int resourceID){
		boolean flag = false;
		SourceDownDao sourceDao = new SourceDownDao();
		Map<String, Object> map = new HashedMap();
		map.put("student.id", headerID);
		map.put("resource.id", resourceID);
		int count = sourceDao.getCount("com.share.bean.SourceDown", map);
		if(count>0){
			flag = true;
		}
		return flag;
		
	}
	
	public static boolean ifUpload(int headerID){
		boolean flag = false;
		DLResourceDao dlDao = new DLResourceDao();
		List<DLResource> subjects = dlDao.findByProperty("header.id", headerID, "com.share.bean.DLResource");
		if(subjects.size() > 0){
			flag = true;
		}else {
			flag = false;
		}
		return flag;
	}
	
	
	
}
