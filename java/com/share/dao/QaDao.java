package com.share.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.share.bean.Qa;
import com.share.bean.SourceDown;
import com.share.sessionFactory.SessionFactory;
import com.share.template.HibernateTemplate;

public class QaDao extends HibernateTemplate {

	public Qa getQaById(Integer id){
		Session session = null;
		session = SessionFactory.getSession();
		String queryString = "from Qa where id="+id ;
		Transaction trans = session.beginTransaction(); 
		List<Qa> qa = session.createQuery(queryString).list();
		trans.commit();
		return qa.get(0);		
	}
	public List<Qa> getAnswerQa(){
		Session session = null;
		session = SessionFactory.getSession();
		String queryString = "from Qa where answer != '' order by q_time desc";
		Transaction trans = session.beginTransaction(); 
		List<Qa> qa = session.createQuery(queryString).list();
		trans.commit();
		return qa;
	}
	public List<Qa> getQa(){
		Session session = null;
		session = SessionFactory.getSession();
		String queryString = "from Qa order by q_time desc";
		Transaction trans = session.beginTransaction(); 
		List<Qa> qa = session.createQuery(queryString).list();
		trans.commit();
		return qa;
	}
	public void updateQa(Qa qa){
		Session session = null;
		session = SessionFactory.getSession();
        Transaction trans = session.beginTransaction();         
        session.update(qa);          
        trans.commit(); 
 
	}
	public void saveQa(Qa qa){
		Session session = null;
		session = SessionFactory.getSession();
        Transaction trans = session.beginTransaction();         
        session.save(qa);          
        trans.commit(); 
	}
	public void deleteQa(Qa qa){
		Session session = null;
		session = SessionFactory.getSession();
		Transaction trans = session.beginTransaction();                
		session.delete(qa);         
		trans.commit();
	}
}