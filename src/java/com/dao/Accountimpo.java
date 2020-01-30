/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.olajide.Newaccount;
import com.olajide.Transactionss;
import java.util.List;
import org.hibernate.CacheMode;
import org.hibernate.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;




/**
 *
 * @author Olu
 */
@Repository("Customerdao")
public class Accountimpo implements Customerdao{
    
    
    
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Newaccount> getNewaccount() {
       
         Session session = sessionFactory.getCurrentSession();
        
         Query<Newaccount> query = session.createQuery("from Newaccount", Newaccount.class);
        
        List<Newaccount> account = query.getResultList();
        
        return account;
    }

    @Override
    public void saveAccount(Newaccount acct) {
        
        Session currentsession = sessionFactory.getCurrentSession();
        currentsession.saveOrUpdate(acct);
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    

    @Override
    public Newaccount getAccount(int theid) {
        
         Session currentsession = sessionFactory.getCurrentSession();
         Newaccount account = (Newaccount) currentsession.get(Newaccount.class, theid);
         
         return account;
      //  throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Newaccount getCustomer() {
        
        Session currentsession = sessionFactory.getCurrentSession();
        Query query = currentsession.createQuery("from Newaccount");
        Newaccount account = (Newaccount) query;
        
        return account;
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Newaccount findbyuserid(String userid) {
        
        Session session = sessionFactory.getCurrentSession();
	Query<Newaccount> query = session.createQuery("from Newaccount where userid=:userid", Newaccount.class);
	session.setCacheMode(CacheMode.IGNORE);
	query.setParameter("userid", userid);
		
	Newaccount user = null;
	try {
		user = query.getSingleResult();
	}catch (Exception e) {
		user = null;
	}
	return user;
       // throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Newaccount findbyemail(String email) {
        
         Session session = sessionFactory.getCurrentSession();
	Query<Newaccount> query = session.createQuery("from Newaccount where email=:email", Newaccount.class);
	session.setCacheMode(CacheMode.IGNORE);
	query.setParameter("email", email);
		
	Newaccount user = null;
	try {
		user = query.getSingleResult();
	}catch (Exception e) {
		user = null;
	}
	return user;
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Newaccount findbyuseridandpass(String userid, String password) {
        
        Session session = sessionFactory.getCurrentSession();
        Query<Newaccount> query = session.createNativeQuery("from Newaccount where userid : =username,password : =password", Newaccount.class);
	session.setCacheMode(CacheMode.IGNORE);
	query.setParameter("username", userid);
	query.setParameter("password", password);
	Newaccount user = null;
	   try {
			user = query.getSingleResult();
		}catch (Exception e) {
			user = null;
		}
		return user;
       // throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void saveTransaction(Transactionss transact) {
        
        Session currentsession = sessionFactory.getCurrentSession();
        currentsession.save(transact);
       // throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    

    
    }
 

    
