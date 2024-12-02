package com.helper;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class FactoryProvider {
	
	//connection type in which we can create various method of session
	public static SessionFactory factory;
	
	public static SessionFactory getFactory() {
		
		if(factory == null) {
			factory= new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
		}
		
		return factory;
	}
	
	public void closeFactory() {
		if(factory != null && !factory.isClosed()) {
			factory.close();
		}
	}

}
