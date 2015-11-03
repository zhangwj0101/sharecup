package com.share.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.share.bean.Resource;
import com.share.bean.SourceScore;
import com.share.sessionFactory.SessionFactory;
import com.share.template.HibernateTemplate;

public class ResourceDao extends HibernateTemplate {
	public void setScore(Resource resource){
		String queryString = "from SourceScore where resource.id="+resource.getId();
		Session session = SessionFactory.getSession();
		List<SourceScore> scores = session.createQuery(queryString).list();
		int scoreTatal = 0;
		Double avgScore = null;
		if(scores!=null){
			for (SourceScore score : scores) {
				scoreTatal += Integer.parseInt(score.getScore());
			}
			avgScore = Math.round((scoreTatal*100.0/scores.size()))/100.0;
		}
		Transaction tr = null;
		try {
			resource.setScore(avgScore.toString());
			tr = session.beginTransaction();
			session.merge(resource);
			tr.commit();
			
		} catch (Exception e) {
			tr.rollback();
		}finally{
			session.clear();
			session.close();
		}
		
	}
}
