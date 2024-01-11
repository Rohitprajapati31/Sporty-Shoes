package com.simplilearn.webapp.Dao;



import java.util.List;


import com.simplilearn.webapp.model.*;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.orm.hibernate5.HibernateCallback;
import org.springframework.orm.hibernate5.HibernateTemplate;

public class PurchaseReportRepository 
{
	HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
	@SuppressWarnings("deprecation")
	public List<PurchaseReport> getReport(){
		
		@SuppressWarnings("unchecked")
		List<PurchaseReport> report=(List<PurchaseReport>) hibernateTemplate.find("from PurchaseReport order by reportProductName,reportDate");
		
		return report;
	}
	
//	List<PurchaseReport> report = hibernateTemplate.execute(new HibernateCallback<List<PurchaseReport>>() 
//	{
//		public List<PurchaseReport> doInHibernate(Session session) throws HibernateException 
//		{
//		    Query<PurchaseReport> query = session.createQuery("from PurchaseReport order by reportProductName,reportDate");
//		    return query.list();
//		}
//	});
	
}