/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.olajide;


import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;
import org.hibernate.annotations.DynamicUpdate;

/**
 *
 * @author Olu
 */
@Entity
@Table(name="users")
@DynamicUpdate
public class Newaccount implements Serializable{

    public Newaccount() {
    }
    
    @Transient
    private Double amount;
    
    @Transient
  //  @Min(value=10)
  //  @Max(value=10)
    private int accountno;
    
    
    @Transient
    private String pinn;
    
    @Transient
   // @Pattern(regexp="^[0-9]{4}", message="pin must be number and four characters long ")
    private String pinnn;
    
    @Transient
    private String cpin;
    
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name="cid")
    private int id;
    
    @Column(name="enabled")
    private int enabled; 
    
    @Column(name="firstname")
   // @NotNull(message="is required")
    private String fname;
    
    @Column(name="middlename")
   // @NotNull(message="is required")
    private String mname;

    
    @Column(name="surname")
   // @NotNull(message="is required")
    private String sname;
    
    @Column(name="enddate")
    private Date enddate;
    
    @Column(name="username")
   // @NotNull(message="is required")
    private String userid;
    
    @Column(name="password")
   // @NotNull(message="is required")
    private String password;
    
    @Transient
    private String cpassword;
    
    @Column(name="duration")
   // @NotNull(message="*")
    private String duration;
    
    @Column(name="phone")
  //  @Pattern(regexp="^[0-9]{11}", message="incorrect number")
    private String phone;
    
    @Column(name="gender")
  //  @NotNull(message="is required")
    private String gender;
    
  //  @NotNull(message="You must accept to terms of service")
    @Transient
    private String check;
    
    @Column(name="email")
   // @NotNull(message="is required")
    private String email;
    
    @Column(name="pin")
    private String pin;
    
    @Column(name="balance")
    private Double balance;
    
  /*  @OneToMany(mappedBy="users",fetch = FetchType.EAGER,
            cascade={CascadeType.PERSIST, CascadeType.REFRESH, CascadeType.MERGE})
    private List<Transactionss> transact; 
    */
    
    @ElementCollection 
    @JoinTable(name="authorities", joinColumns=
     {@JoinColumn(name="cid",referencedColumnName="cid"),@JoinColumn(name="username",referencedColumnName="username")})
    private Collection<Authorities> authority = new HashSet<>();

 /*   public List<Transactionss> getTransact() {
        return transact;
    }

    public void setTransact(List<Transactionss> transact) {
        this.transact = transact;
    } 
*/

    
    public String getPin() {
        return pin;
    }

    public void setPin(String pin) {
        this.pin = pin;
    }

    public Double getBalance() {
        return balance;
    }

    public void setBalance(Double balance) {
        this.balance = balance;
    }

    public Double getAmount() {
        return amount;
    }

    public void setAmount(Double amount) {
        this.amount = amount;
    }

    public int getAccountno() {
        return accountno;
    }

    public void setAccountno(int accountno) {
        this.accountno = accountno;
    }
    

    public Collection<Authorities> getAuthority() {
        return authority;
    }

    public void setAuthority(Collection<Authorities> authority) {
        this.authority = authority;
    }

    public String getPinn() {
        return pinn;
    }

    public void setPinn(String pinn) {
        this.pinn = pinn;
    }

    public String getPinnn() {
        return pinnn;
    }

    public void setPinnn(String pinnn) {
        this.pinnn = pinnn;
    }

    public String getCpin() {
        return cpin;
    }

    public void setCpin(String cpin) {
        this.cpin = cpin;
    }
    

    public int getEnabled() {
        return enabled;
    }

    public void setEnabled(int enabled) {
        this.enabled = enabled;
    }
    
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getGender() {
        return gender;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }
   

    public String getCheck() {
        return check;
    }

    public void setCheck(String check) {
        this.check = check;
    }
    

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getMname() {
        return mname;
    }

    public void setMname(String mname) {
        this.mname = mname;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public Date getEnddate() {
        return enddate;
    }

    public void setEnddate(Date enddate) {
        this.enddate = enddate;
    }

    

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getCpassword() {
        return cpassword;
    }

    public void setCpassword(String cpassword) {
        this.cpassword = cpassword;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }


    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    

    

    
    
}
