/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.olajide;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 *
 * @author Olu
 */
@Entity
@Table(name = "transactions")
public class Transactionss implements Serializable {
   
   // https://stackoverflow.com/questions/9412639/multiple-modelattributes-in-a-jsp-with-spring/42021976#42021976 
    

    
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name="id" )
    private int id;
    
    @Column(name="userid")
    private String userid;
    
    @Column(name="benacct")
    private String sendto;
    
    @Column(name="balance")
    private Double balance;
    
    @Column(name="amount")
    private Double amountt;
    
   
    @Column(name="transactionid")
    private int transactionid;
    
    @Column(name="senttime")
    private Date ttime;

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

   
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSendto() {
        return sendto;
    }

    public void setSendto(String sendto) {
        this.sendto = sendto;
    }

    public Double getBalance() {
        return balance;
    }

    public void setBalance(Double balance) {
        this.balance = balance;
    }

    public Double getAmountt() {
        return amountt;
    }

    public void setAmountt(Double amountt) {
        this.amountt = amountt;
    }

    public int getTransactionid() {
        return transactionid;
    }

    public void setTransactionid(int transactionid) {
        this.transactionid = transactionid;
    }

    public Date getTtime() {
        return ttime;
    }

    public void setTtime(Date ttime) {
        this.ttime = ttime;
    }

  
}
