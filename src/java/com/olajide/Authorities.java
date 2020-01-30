/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.olajide;

import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 *
 * @author Olu
 */
@Embeddable
public class Authorities {
    
    @Column(name="authority")
    private String roles;

    public String getRoles() {
        return roles;
    }

    public void setRoles(String roles) {
        this.roles = roles;
    }
    
    
}
