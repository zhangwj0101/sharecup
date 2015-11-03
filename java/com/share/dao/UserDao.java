package com.share.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;

import com.share.bean.Statistics;
import com.share.bean.Statistics2;
import com.share.bean.StudentHeader;
import com.share.sessionFactory.SessionFactory;
import com.share.template.HibernateTemplate;

public class UserDao extends HibernateTemplate {

	public List<Statistics> countSQL(final String sql) {
		List<Statistics> result = new ArrayList<Statistics>();
		Session session = null;
		ResultSet rs = null;
		java.sql.Statement stmt = null;
		Connection conn = null;
		try {
			session = SessionFactory.getSession();
			conn = session.connection();
			
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()){
				Integer count = rs.getInt(1);
				String field = rs.getString(2);
				Statistics statistics = new Statistics();
				statistics.setCount(count);
				statistics.setField(field);
				result.add(statistics);
			}
			
		} catch (Exception e) {
		}finally{
			try {
				rs.close();
				stmt.close();
				conn.close();
			} catch (Exception e) {
			}
			session.clear();
			session.close();
		}
		return result;
	}
	
	
	public List<Statistics> countSQLPlatZuopinNum(final String sql) {
		List<Statistics> result = new ArrayList<Statistics>();
		Session session = null;
		ResultSet rs = null;
		java.sql.Statement stmt = null;
		Connection conn = null;
		try {
			session = SessionFactory.getSession();
			conn = session.connection();
			
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()){
				Integer count = rs.getInt(1);
				Statistics statistics = new Statistics();
				statistics.setCount(count);
				result.add(statistics);
			}
			
		} catch (Exception e) {
		}finally{
			try {
				rs.close();
				stmt.close();
				conn.close();
			} catch (Exception e) {
			}
			session.clear();
			session.close();
		}
		return result;
	}

	public List<Statistics2> statisticSQL(String sql) {
		List<Statistics2> result = new ArrayList<Statistics2>();
		Session session = null;
		ResultSet rs = null;
		java.sql.Statement stmt = null;
		Connection conn = null;
		try {
			session = SessionFactory.getSession();
			conn = session.connection();
			
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()){
				Statistics2 statistics = new Statistics2();
				
				statistics.setProvince(rs.getString(1));
				statistics.setSchool(rs.getString(2));
				statistics.setName(rs.getString(3));
				statistics.setType(rs.getString(4));
				statistics.setCount(rs.getInt(5));
				statistics.setPhone(rs.getString(6));
				statistics.setEmail(rs.getString(7));
				
				result.add(statistics);
			}
			
		} catch (Exception e) {
		}finally{
			try {
				rs.close();
				stmt.close();
				conn.close();
			} catch (Exception e) {
			}
			session.clear();
			session.close();
		}
		return result;		
	}


	public List<String> listScZuopinStu(String scZuopinStuSQL) {
		// TODO Auto-generated method stub
		List<String> result = new ArrayList<String>();
		Session session = null;
		ResultSet rs = null;
		java.sql.Statement stmt = null;
		Connection conn = null;
		try {
			session = SessionFactory.getSession();
			conn = session.connection();
			
			stmt = conn.createStatement();
			rs = stmt.executeQuery(scZuopinStuSQL);
			
			while(rs.next()){
				String headerId = rs.getString(1);
				result.add(headerId);
			}
			
		} catch (Exception e) {
		}finally{
			try {
				rs.close();
				stmt.close();
				conn.close();
			} catch (Exception e) {
			}
			session.clear();
			session.close();
		}
		return result;
	}


	public List<StudentHeader> listStuHeader(List<String> midHeaderIdList) {
		// TODO Auto-generated method stub
		List<StudentHeader> stuHeaderList = new ArrayList<StudentHeader>();
		for(int i=0;i<midHeaderIdList.size();i++){
			Session session = null;
			ResultSet rs = null;
			java.sql.Statement stmt = null;
			Connection conn = null;
			try {
				session = SessionFactory.getSession();
				conn = session.connection();
				stmt = conn.createStatement();
				rs = stmt.executeQuery("select * from des_studentheader desstu where desstu.id="+midHeaderIdList.get(i)+"");
				
				while(rs.next()){
					StudentHeader sh  = new StudentHeader();
					sh.setName(rs.getString("name"));
					sh.setFaculty(rs.getString("faculty"));
					sh.setMajor(rs.getString("major"));
					sh.setSchool(rs.getString("school"));
					sh.setEmail(rs.getString("email"));
					sh.setPhone(rs.getString("phone"));
					sh.setProvince(rs.getString("province"));
					stuHeaderList.add(sh);
				}
				
			} catch (Exception e) {
			}finally{
				try {
					rs.close();
					stmt.close();
					conn.close();
				} catch (Exception e) {
				}
				session.clear();
				session.close();
			}
		}
		return stuHeaderList;
	}
}
