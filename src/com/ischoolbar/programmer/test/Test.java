package com.ischoolbar.programmer.test;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.ischoolbar.programmer.util.HibernateUtil;

public class Test {

	public static void main(String[] args) {
		SessionFactory sessionFactory=HibernateUtil.getSessionFactory();
		Session session=sessionFactory.openSession(); // 生成一个session
	    session.beginTransaction(); // 开启事务
	    
	   
	    
	    session.getTransaction().commit(); // 提交事务
	    session.close(); // 关闭session
	}
}
