package com.share.template;

import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.share.sessionFactory.SessionFactory;

public class HibernateTemplate {
	public void execute(CallBackVoid callBack) {
		Session session = null;
		try {
			session = SessionFactory.getSession();
			Transaction transaction = session.beginTransaction();
			callBack.doSomeThing(session);
			transaction.commit();
		} catch (Exception e) {
			session.getTransaction().rollback();
		} finally {
			session.clear();
			session.close();
		}
	}

	public Object executeObject(CallBackObject callBackObject) {
		try {
			Session session = SessionFactory.getSession();
			return callBackObject.doSomeThing(session);
		} catch (Exception e) {
			e.printStackTrace();
			SessionFactory.closeSession();
			return null;
		}
	}

	public List executeList(CallBackList callBackList) {
		try {
			Session session = SessionFactory.getSession();
			return callBackList.doSomeThing(session);
		} catch (Exception e) {
			SessionFactory.closeSession();
			return null;
		}
	}

	public Object findById(final Integer id, final String className) {
		class CallBackObjectImp implements CallBackObject {
			public Object doSomeThing(Session session) {
				return session.get(className, id);
			}
		}
		CallBackObject callBackObject = new CallBackObjectImp();
		return new HibernateTemplate().executeObject(callBackObject);
	}

	public List findAll(final String className) {
		class CallBackListImp implements CallBackList {
			public List doSomeThing(Session session) {
				String queryString = "from " + className;
				Query query = session.createQuery(queryString);
				return query.list();
			}
		}
		CallBackList callBackList = new CallBackListImp();
		return new HibernateTemplate().executeList(callBackList);
	}

	public List findByProperty(final String propertyName,
			final Object propertyValue, final String className) {
		class CallBackListImp implements CallBackList {
			public List doSomeThing(Session session) {
				String queryString = "from " + className
						+ " as model where model." + propertyName + " = ?";
				Query query = session.createQuery(queryString);
				System.out.println(queryString + "**************");
				query.setParameter(0, propertyValue);
				return query.list();
			}
		}
		CallBackList callBackList = new CallBackListImp();
		return new HibernateTemplate().executeList(callBackList);
	}

	public List findPagesList(final String className,
			final Map<String, Object> map, final int pagesize, final int pagenum) {
		class CallBackListImp implements CallBackList {
			public List doSomeThing(Session session) {
				int limitstart = (pagenum - 1) * pagesize;
				int limittotal = pagesize;
				String queryString = "from " + className
						+ " as model where 1=1 ";
				if (map != null) {
					for (Map.Entry<String, Object> entry : map.entrySet()) {
						queryString += " and model." + entry.getKey()
								+ " like '%" + entry.getValue() + "%' ";
					}
				}
				Query query = session.createQuery(queryString);
				query.setFirstResult(limitstart);
				query.setMaxResults(limittotal);
				return query.setCacheable(false).list();
			}
		}
		CallBackList callBackList = new CallBackListImp();
		return new HibernateTemplate().executeList(callBackList);
	}

	public int getCount(final String className, final Map<String, Object> map) {
		class CallBackObjectImp implements CallBackObject {
			public Object doSomeThing(Session session) {
				String queryString = "select count(model.id) from " + className
						+ " as model where 1=1 ";
				if (map != null) {
					for (Map.Entry<String, Object> entry : map.entrySet()) {
						queryString += " and model." + entry.getKey()
								+ " like '%" + entry.getValue() + "%' ";
					}
				}
				Query query = session.createQuery(queryString).setCacheable(
						true);
				return query.uniqueResult();
			}
		}
		CallBackObject callBackObject = new CallBackObjectImp();
		Long count = (Long) new HibernateTemplate()
				.executeObject(callBackObject);
		return count.intValue();
	}

	public int getDistinctCount(final String className, final String keyname) {
		class CallBackObjectImp implements CallBackObject {
			public Object doSomeThing(Session session) {
				String queryString = "select count(distinct model." + keyname
						+ ") from " + className + " as model where 1=1 ";
				Query query = session.createQuery(queryString).setCacheable(
						true);
				return query.uniqueResult();
			}
		}
		CallBackObject callBackObject = new CallBackObjectImp();
		Long count = (Long) new HibernateTemplate()
				.executeObject(callBackObject);
		return count.intValue();
	}

	public void save(final Object o) {
		class CallBackImp implements CallBackVoid {

			public void doSomeThing(Session session) {
				session.save(o);
			}
		}
		CallBackVoid callBack = new CallBackImp();
		new HibernateTemplate().execute(callBack);
	}

	public void merge(final Object o) {
		class CallBackImp implements CallBackVoid {

			public void doSomeThing(Session session) {
				session.merge(o);
			}
		}
		CallBackVoid callBack = new CallBackImp();
		new HibernateTemplate().execute(callBack);
	}

	public void delete(final Object o) {
		class CallBackImp implements CallBackVoid {

			public void doSomeThing(Session session) {
				session.delete(o);
			}
		}
		CallBackImp callBack = new CallBackImp();
		new HibernateTemplate().execute(callBack);
	}

	public void updateSQL(final String sql) {
		class CallBackImp implements CallBackVoid {

			public void doSomeThing(Session session) {
				Query query = session.createSQLQuery(sql);
				query.executeUpdate();
			}
		}
		CallBackImp callBack = new CallBackImp();
		new HibernateTemplate().execute(callBack);
	}
}
