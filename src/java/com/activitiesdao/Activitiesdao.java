/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.activitiesdao;

import com.olajide.Transactionss;
import org.springframework.stereotype.Service;

/**
 *
 * @author Olu
 */

public interface Activitiesdao {
    
    public void saveTransaction(Transactionss transact);
    
   // public Transactionss findbyuserid(String userid);
    
}
