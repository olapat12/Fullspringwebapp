/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.activitiesdao;

import com.olajide.Transactionss;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Olu
 */
@Repository("Activitiesdao")
public class Activitiesimpl implements Activitiesdao{
    
    @Autowired
    @Qualifier("sessionFactory")
    private SessionFactory sessionFactory;

    @Override
    public void saveTransaction(Transactionss transact) {
        
        Session currentsession = sessionFactory.getCurrentSession();
        currentsession.save(transact);
       // throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

  /*  @Override
    public Transactionss findbyuserid(String userid) {
        
        Session session = sessionFactory.getCurrentSession();
	Query<Transactionss> query = session.createQuery("from Transactionss where userid=:userid", Transactionss.class);
	session.setCacheMode(CacheMode.IGNORE);
        for(Iterator it = query.iterate(); it.hasNext();){
            
            Transactionss user = (Transactionss)it.next();
        }
	query.setParameter("userid", userid);
        
		
	Transactionss user = null;
	try {
		user = query.getSingleResult();
	}catch (Exception e) {
		user = null;
	} 
       Transactionss user = null;
	return user;
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    } */
}
