package com.share.dao;

import java.util.List;

import org.hibernate.Session;

import com.share.bean.SourceDown;
import com.share.sessionFactory.SessionFactory;
import com.share.template.HibernateTemplate;

public class SourceDownDao extends HibernateTemplate {
	public boolean ifDown(int resourceID,int headerID){
		boolean flag = false;
		Session session = null;
		session = SessionFactory.getSession();
		String queryString = "from SourceDown where student.id="+headerID+" and resource.id="+resourceID;
		List<SourceDown> sourceDowns = session.createQuery(queryString).list();
		if(sourceDowns!=null&&sourceDowns.size()>0){
			flag =true;
		}
		
		
		return flag;
	}
}
