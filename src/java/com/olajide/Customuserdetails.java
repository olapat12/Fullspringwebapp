/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.olajide;

import com.dao.Customerdao;
import java.util.Collection;
import java.util.HashSet;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;



/**
 *
 * @author Olu
 */
@EnableTransactionManagement
@EnableAspectJAutoProxy(proxyTargetClass = true)
@Service("customusersdetails")
public class Customuserdetails implements UserDetailsService{
    
    @Autowired
    private Customerdao acctservice;
  

    @Override
    @Transactional(readOnly=true)
    public UserDetails loadUserByUsername(String userid) throws UsernameNotFoundException {
        
        Newaccount user = acctservice.findbyuserid(userid);
		System.out.println("User : "+user);
		if(user==null){
			System.out.println("User not found");
			throw new UsernameNotFoundException("Username not found"); 
		}
       Useprincipal principal = new Useprincipal(user, getGrantedAuthorities(user));
       
       return principal;
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    public Collection<GrantedAuthority> getGrantedAuthorities(Newaccount userr){
		Collection<GrantedAuthority> auth = new HashSet<>();
		
                for(Authorities autho : userr.getAuthority()){
			//System.out.println("UserProfile : "+userProfile);
			auth.add(new SimpleGrantedAuthority(autho.getRoles()));
        
		} 
                return auth;
}

}