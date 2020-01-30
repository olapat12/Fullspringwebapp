/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;


import com.olajide.Newaccount;
import com.olajide.Transactionss;
import java.util.List;

/**
 *
 * @author Olu
 */
public interface Customerdao {
   
    public List<Newaccount> getNewaccount();
    
    public Newaccount getCustomer();

    public void saveAccount(Newaccount acct);
    
    
    public void saveTransaction(Transactionss transact);
    
    public Newaccount getAccount(int theid);
    
    public Newaccount findbyuserid(String userid);
    
    public Newaccount findbyuseridandpass(String userid, String password);
    
    public Newaccount findbyemail(String email);
}
