/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.service;

import com.dao.Customerdao;
import com.olajide.Authorities;
import com.olajide.Newaccount;
import com.olajide.Transactionss;
import java.util.Collection;
import java.util.List;
import java.util.stream.Collectors;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Role;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Olu
 */
@Service
@Component
public class Customerserimpo implements Accountservice {
    
    @Autowired
    private Customerdao customerdao;

    @Override
    @Transactional
    public List<Newaccount> getNewaccount() {
        
        return customerdao.getNewaccount();
      }

    @Override
    @Transactional
    public void saveAccount(Newaccount acct) {
        
        customerdao.saveAccount(acct);
    }

    @Override
    @Transactional
    public Newaccount getAccount(int theid) {
        
        return customerdao.getAccount(theid);
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    @Transactional
    public Newaccount getCustomer() {
        
        return customerdao.getCustomer();
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    @Transactional
    public Newaccount findbyuserid(String userid) {
        
        return customerdao.findbyuserid(userid);
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    @Transactional
    public Newaccount findbyemail(String email) {
        
        return customerdao.findbyemail(email);
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    @Transactional
    public Newaccount findbyuseridandpass(String userid, String password) {
        
        return customerdao.findbyuseridandpass(userid, password);
       // throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    @Transactional
    public UserDetails loadUserByUsername(String userid) throws UsernameNotFoundException {
        
        Newaccount user = customerdao.findbyuserid(userid);
		System.out.println("User : "+user);
		if(user==null){
			System.out.println("User not found");
			throw new UsernameNotFoundException("Username not found"); 
		}

		return new org.springframework.security.core.userdetails.User(user.getUserid(), user.getPassword(),
			mapRolesToAuthorities(user.getAuthority()));
       // throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    private Collection<? extends GrantedAuthority> mapRolesToAuthorities(Collection<Authorities> authority) {
	return authority.stream().map(role -> new SimpleGrantedAuthority(role.getRoles())).collect(Collectors.toList());
	}

    @Override
    @Transactional
    public void saveTransaction(Transactionss transact) {
        
        customerdao.saveTransaction(transact);
       // throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
  
}
