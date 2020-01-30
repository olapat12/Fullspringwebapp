/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.olajide;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;



/**
 *
 * @author Olu
 */

public class MywebInitializer extends AbstractAnnotationConfigDispatcherServletInitializer{

    @Override
   protected Class<?>[] getRootConfigClasses() {
       
       return null;
      // throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    protected Class<?>[] getServletConfigClasses() {
        return new Class[] {PingConfig.class};
    
    }

    @Override
    protected String[] getServletMappings() {
        
        return new String[]{"/"};
      
    }
    
}
