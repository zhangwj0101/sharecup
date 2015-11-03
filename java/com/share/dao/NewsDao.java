package com.share.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.share.bean.News;
import com.share.bean.SourceDown;
import com.share.sessionFactory.SessionFactory;
import com.share.template.HibernateTemplate;

public class NewsDao extends HibernateTemplate {

	public News getNewsById(Integer id) {
		Session session = null;
		Transaction tr = null;
		try {
			session = SessionFactory.getSession();
			String queryString = "from News where id=" + id;
			tr = session.beginTransaction();
			List<News> news = session.createQuery(queryString).list();
			tr.commit();
			return news.get(0);
		} catch (Exception e) {
			tr.rollback();
			return null;
		} finally {
			session.close();
		}
	}

	public List<News> getNews() {
		Session session = null;
		Transaction tr = null;
		try {
			session = SessionFactory.getSession();
			String queryString = "from News order by times desc";
			tr = session.beginTransaction();
			List<News> news = session.createQuery(queryString).list();
			tr.commit();
			return news;
		} catch (Exception e) {
			tr.rollback();
			return null;
		} finally {
			if(session != null){
				session.close();
			}
		}
	}

	public List<News> getNews1() {
		Session session = null;
		Transaction tr = null;
		try {
			session = SessionFactory.getSession();
			String queryString = "from News where type = 1 order by times desc";
			tr = session.beginTransaction();
			List<News> news = session.createQuery(queryString).list();
			tr.commit();
			return news;
		} catch (Exception e) {
			tr.rollback();
			return null;
		} finally {
			session.close();
		}
	}

	public List<News> getNews2() {
		Session session = null;
		Transaction tr = null;
		try {
			session = SessionFactory.getSession();
			String queryString = "from News where type = 2 order by times desc";
			tr = session.beginTransaction();
			List<News> news = session.createQuery(queryString).list();
			tr.commit();
			return news;
		} catch (Exception e) {
			tr.rollback();
			return null;
		} finally {
			session.close();
		}
	}


	public List<News> getNews3() {
		Session session = null;
		Transaction tr = null;
		try {
			session = SessionFactory.getSession();
			String queryString = "from News where type = 3 order by times desc";
			tr = session.beginTransaction();
			List<News> news = session.createQuery(queryString).list();
			tr.commit();
			return news;
		} catch (Exception e) {
			tr.rollback();
			return null;
		} finally {
			session.close();
		}
	}	
	
	public void updateNews(News news) {
		Session session = null;
		Transaction tr = null;

		try {
			session = SessionFactory.getSession();
			tr = session.beginTransaction();
			session.update(news);
			tr.commit();
		} catch (Exception e) {
			tr.rollback();
		} finally {
			session.close();
		}
	}

	public void saveNews(News news) {
		Session session = null;
		Transaction tr = null;

		try {
			session = SessionFactory.getSession();
			tr = session.beginTransaction();
			session.save(news);
			tr.commit();
		} catch (Exception e) {
			tr.rollback();
		} finally {
			session.close();
		}
	}

	public void deleteNews(News news) {
		Session session = null;
		Transaction tr = null;

		try {
			session = SessionFactory.getSession();
			tr = session.beginTransaction();
			session.delete(news);
			tr.commit();
		} catch (Exception e) {
			tr.rollback();
		} finally {
			session.close();
		}
	}
}