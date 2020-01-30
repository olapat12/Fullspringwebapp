/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.olajide;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

/**
 *
 * @author Olu
 */
@Configuration
@EnableWebSecurity
public class Securityconfig extends WebSecurityConfigurerAdapter{
    
       private final Customuserdetails userDetailsService;
 
    @Autowired
    public Securityconfig(Customuserdetails userDetailsService) {
        super();
        this.userDetailsService = userDetailsService;
    }
       
	
	
@Autowired
public void configureGlobal(final AuthenticationManagerBuilder auth) throws Exception {
    auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());
}

        @Bean
	public PasswordEncoder passwordEncoder() {
            
	    return new BCryptPasswordEncoder();
	}
        
   /* @Bean
	public DaoAuthenticationProvider authenticationProvider() {
	    DaoAuthenticationProvider authenticationProvider = new DaoAuthenticationProvider();
	    authenticationProvider.setUserDetailsService(userDetailsService);
	    authenticationProvider.setPasswordEncoder(passwordEncoder());
	    return authenticationProvider;
	}    */

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        
        http.authorizeRequests().antMatchers("/").hasRole("EMPLOYEE").antMatchers("/admin/**").hasRole("ADMIN")
                .antMatchers("/jah").hasRole("EMPLOYEE").antMatchers("/showupdate")
                .hasRole("EMPLOYEE").antMatchers("showsettings").hasRole("EMPLOYEE").antMatchers("/jaho").hasRole("EMPLOYEE").and()
                .formLogin().loginPage("/signin")
                .loginProcessingUrl("/aunthenticateTheUser").permitAll().and().logout().permitAll()
                .and().exceptionHandling().accessDeniedPage("/access-denied");
        
    }
    
}
