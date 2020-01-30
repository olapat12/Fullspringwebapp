/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.service;

import com.olajide.Newaccount;
import com.olajide.Transactionss;
import java.util.List;
import org.springframework.security.core.userdetails.UserDetailsService;

/**
 *
 * @author Olu
 */
public interface Accountservice extends UserDetailsService{
  
    public List<Newaccount> getNewaccount();

    public void saveAccount(Newaccount acct);
    public Newaccount findbyuseridandpass(String userid, String password);
    public Newaccount getCustomer();
    public Newaccount findbyemail(String email);
    public Newaccount findbyuserid(String userid);
    public Newaccount getAccount(int theid);
    
     public void saveTransaction(Transactionss transact);
}
