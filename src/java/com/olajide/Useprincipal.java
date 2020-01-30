/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.olajide;

import java.util.Collection;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

/**
 *
 * @author Olu
 */
public class Useprincipal extends User{
    
    private final Newaccount userr;
    
    public Useprincipal(Newaccount userr, Collection<? extends GrantedAuthority> authorities) {
         super(userr.getUserid(), userr.getPassword(), authorities);
        this.userr = userr;
    }

    public Newaccount getUserr() {
        return userr;
    }
    
    
}
