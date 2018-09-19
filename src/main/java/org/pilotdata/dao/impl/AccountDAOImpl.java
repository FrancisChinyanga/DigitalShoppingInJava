package org.pilotdata.dao.impl;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.pilotdata.dao.AccountDAO;
import org.pilotdata.entities.Account;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
 
// Transactional for Hibernate
@Transactional
public class AccountDAOImpl implements AccountDAO{
	
	@Autowired
    private SessionFactory sessionFactory;

	@Override
	public Account findAccount(String username) {
		 Session session = sessionFactory.getCurrentSession();
	        Criteria crit = session.createCriteria(Account.class);
	        crit.add(Restrictions.eq("userName", username));
	        return (Account) crit.uniqueResult();
	}
 
    //@Override
    

}
