package com.share.dao;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.share.bean.StudentHeader;
import com.share.bean.StudentPlayer;
import com.share.bean.SystemInfo;
import com.share.bean.Teacher;
import com.share.sessionFactory.SessionFactory;

public class RegionDao {
	public boolean GroupRegion(StudentHeader header,StudentPlayer player1,StudentPlayer player2,Teacher teacher,SystemInfo systemInfo){
		Session session = null;
		Transaction tr = null;
		try {
			session = SessionFactory.getSession();
			tr = session.beginTransaction();
			/**队长*/
			session.save(header);
			/**成员一*/
			player1.setStudentHeader(header);
			session.save(player1);
			/**成员二*/
			player2.setStudentHeader(header);
			session.save(player2);
			/**指导教师*/
			teacher.setStudentHeader(header);
			session.save(teacher);
			/**登录信息*/
			systemInfo.setHeader(header);
			session.save(systemInfo);
			tr.commit();
			return true;
			
		} catch (Exception e) {
			tr.rollback();
			return false;
		}finally{
			session.close();
		}
		
	}
	
	public boolean GroupRegion(StudentHeader header, Teacher teacher,SystemInfo systemInfo,StudentPlayer... player){
		Session session = null;
		Transaction tr = null;
		try {
			session = SessionFactory.getSession();
			tr = session.beginTransaction();
			/**队长*/
			session.save(header);
			/**成员*/
			for (StudentPlayer studentPlayer : player) {
				if(studentPlayer == null || studentPlayer.getName() == null || "".equals(studentPlayer.getName())){
					continue;
				}
				studentPlayer.setStudentHeader(header);
				session.save(studentPlayer);
			}
			
			/**指导教师*/
			teacher.setStudentHeader(header);
			session.save(teacher);
			/**登录信息*/
			systemInfo.setHeader(header);
			session.save(systemInfo);
			tr.commit();
			return true;
			
		} catch (Exception e) {
			tr.rollback();
			return false;
		}finally{
			session.close();
		}
		
	}	
	
	public boolean personRegion(StudentHeader header,Teacher teacher,SystemInfo systemInfo){
		Session session = null;
		Transaction tr = null;
		try {
			session = SessionFactory.getSession();
			tr = session.beginTransaction();
			/**队长*/
			session.save(header);
			/**指导教师*/
			teacher.setStudentHeader(header);
			session.save(teacher);
			/**登录信息*/
			systemInfo.setHeader(header);
			session.save(systemInfo);
			tr.commit();
			return true;
			
		} catch (Exception e) {
			e.printStackTrace();
			tr.rollback();
			return false;
		}finally{
			session.close();
		}
	}
	
	
	public boolean personAdd(StudentHeader header,StudentPlayer studentPlayer){
		Session session = null;
		Transaction tr = null;
		try {
			session = SessionFactory.getSession();
			tr = session.beginTransaction();
			if(studentPlayer == null || studentPlayer.getName() == null || "".equals(studentPlayer.getName())){
				return false;
			}
			studentPlayer.setStudentHeader(header);
			session.save(studentPlayer);
			tr.commit();
			return true;			
		} catch (Exception e) {
			e.printStackTrace();
			tr.rollback();
			return false;
		}finally{
			session.close();
		}
	}	
	
	
	public boolean update(StudentHeader header){
		Session session = null;
		Transaction tr = null;
		try {
			session = SessionFactory.getSession();
			tr = session.beginTransaction();
			session.update(header);
			tr.commit();
			return true;			
		} catch (Exception e) {
			e.printStackTrace();
			tr.rollback();
			return false;
		}finally{
			session.close();
		}
	}
	
	
	public boolean update(StudentPlayer player){
		Session session = null;
		Transaction tr = null;
		try {
			session = SessionFactory.getSession();
			tr = session.beginTransaction();
			session.merge(player);
			tr.commit();
			return true;			
		} catch (Exception e) {
			e.printStackTrace();
			tr.rollback();
			return false;
		}finally{
			session.close();
		}
	}	
	
	public boolean update(Teacher teacher){
		Session session = null;
		Transaction tr = null;
		try {
			session = SessionFactory.getSession();
			tr = session.beginTransaction();
			session.merge(teacher);
			tr.commit();
			return true;			
		} catch (Exception e) {
			e.printStackTrace();
			tr.rollback();
			return false;
		}finally{
			session.close();
		}
	}		
	
}
