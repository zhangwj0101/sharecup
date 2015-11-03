package com.share.dao;

import java.util.List;

import org.hibernate.LockMode;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.share.bean.Resource;
import com.share.bean.SourceScore;
import com.share.bean.StudentHeader;
import com.share.sessionFactory.SessionFactory;
import com.share.template.HibernateTemplate;

public class SourceScoreDao extends HibernateTemplate{
	public boolean setSore(Integer resourceID,StudentHeader header,String rating){
		Session session = null;
		Transaction tr = null;
		try {
			session = SessionFactory.getSession();
			tr = session.beginTransaction();
			Resource resource = (Resource)session.load(Resource.class, resourceID,LockMode.UPGRADE);
			SourceScore sourceScore = new SourceScore();
			sourceScore.setResource(resource);
			sourceScore.setScore(rating);
			sourceScore.setStudent(header);
			session.save(sourceScore);
			
			
			String queryString = "from SourceScore where resource.id="+resource.getId();
			List<SourceScore> scores = session.createQuery(queryString).list();
			int scoreTatal = 0;
			Double avgScore = null;
			if(scores!=null){
				for (SourceScore score : scores) {
					scoreTatal += Integer.parseInt(score.getScore());
				}
				avgScore = Math.round((scoreTatal*100.0/scores.size()))/100.0;
			}
			resource.setScore(avgScore.toString());
			session.merge(resource);
		
			tr.commit();
			return true;
			
		} catch (Exception e) {
			tr.rollback();
			return false;
		}finally{
			session.clear();
			session.close();
		}
	}
}
