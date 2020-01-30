/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.activitiesservice;

import com.activitiesdao.Activitiesdao;
import com.olajide.Transactionss;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Olu
 */
@Service("qctivitiesservice")
@Component
public class Activitiesserviceimpl implements Activitiesservice {
  
    @Autowired
    private Activitiesdao Activitiesdao;
        
    //i am me
    
    @Override
    @Transactional
    public void saveTransaction(Transactionss transact) {
      
        Activitiesdao.saveTransaction(transact);
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

  /*  @Override
    @Transactional
    public Transactionss findbyuserid(String userid) {
        
        Transactionss trans = null;
        return trans;
       // throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    } */
}
