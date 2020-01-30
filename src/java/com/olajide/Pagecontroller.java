/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.olajide;

import com.activitiesservice.Activitiesservice;
import com.service.Accountservice;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Properties;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.internet.AddressException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.messaging.MessagingException;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;



/**
 *
 * @author Olu
 */
@Controller
@SessionAttributes("act")
public class Pagecontroller {
    
     @Autowired
    private Accountservice accountservice;
    
   @Autowired
   private Activitiesservice qctivitiesservice;
    
   @ModelAttribute("act")
   public Newaccount getAccount() {
       
      return new Newaccount();
   } 
    
    @Autowired
    private PasswordEncoder passwordEncoder;
    
    
    boolean b = false;
    
   
    
    @InitBinder
    public void binder(WebDataBinder db){
        StringTrimmerEditor ste = new StringTrimmerEditor(true);
        db.registerCustomEditor(String.class, ste);
        
    }
    
     @RequestMapping("/signin")
      public String loginn(){
      
       // Newaccount acct = new Newaccount();
        
            
      return "signin";
}
      
       @RequestMapping(value="/" , method = RequestMethod.GET)
    public String home( Model model, Authentication authentication){
       
        Newaccount user = ((Useprincipal)authentication.getPrincipal()).getUserr();
        
        model.addAttribute("act", user);
      //  model.addAttribute("sname", user.getMname());
       // model.addAttribute("email", user.getEmail());
       // model.addAttribute("mname", user.getMname());
       // model.addAttribute("gender", user.getGender());
       // model.addAttribute("phone", user.getPhone());
       // model.addAttribute("userid", user.getUserid());
       return "welcome-back";
        
    }
    
     @RequestMapping("/account" )
    public String account(Model mp){
        
      
        return "account";
    }
    
     @RequestMapping("/settings" )
    public String setting(ModelMap mp){
        
       
       // mp.put("cust", account);
       // model.addAttribute("act", acct);
        return "settings";
    }
      
       @RequestMapping("/admin")
      public String admin(){
    
      return "admin";
}
      
      @RequestMapping("/access-denied")
      public String bad(){
    
      return "access-denied";
}
  
    @RequestMapping("/list")
    public String customers(Model model){
        
        List<Newaccount> newaccount = accountservice.getNewaccount();
        model.addAttribute("account", newaccount);
        
        return "customerlist";
    }
    
    @RequestMapping("/theid")
    public String theid(Model model){
        
       Newaccount account = accountservice.getCustomer();
       model.addAttribute("edit", account);
       
       return "account";
    }
    
    @RequestMapping("/jah")
    public String jah(@ModelAttribute("act") Newaccount acct){
        
        accountservice.saveAccount(acct);
        return "redirect:/account";
    }
    
    @RequestMapping("/jaho")
    public String jaho(@Valid @ModelAttribute("act") Newaccount acct,BindingResult br, HttpServletRequest request, ModelMap mp,
             Authentication authentication){
        
        Newaccount user = ((Useprincipal)authentication.getPrincipal()).getUserr();
        String oldpin = request.getParameter("pinn");
        String newpin = request.getParameter("pinnn");
        String cpin = request.getParameter("cpin");
        String pass = user.getPin();
        
        if(passwordEncoder.matches(oldpin, pass) && newpin.equals(cpin)){
          accountservice.saveAccount(acct);
        return "redirect:/settings";  
        }
       else if(br.hasErrors()){
            
            return "set";
        }
        else{
            mp.addAttribute("errr", "incorrect pasword");
         return "set";    
        }
        
    }
    
    @RequestMapping("/showupdate")
    public String showupdate(@RequestParam("customerid") int theid, Model model){
        
        Newaccount account = accountservice.getAccount(theid);
        
        model.addAttribute("act", account);
        
        return "updateform";
        
    }
    
     @RequestMapping("/showsettings")
    public String showsettings(@RequestParam("customerid") int theid, Model model){
        
        Newaccount account = accountservice.getAccount(theid);
        
       model.addAttribute("act", account);
        
        return "set";
        
    }
    @RequestMapping("/cash")
    public String cashout(){
        
      //  Newaccount account = accountservice.getAccount(theid);
       // model.addAttribute("act", acct);
        return "casho";
    }
    
    @RequestMapping("/goto")
    public String cash(@RequestParam("customerid") int theid, Model model){
        
        Newaccount account = accountservice.getAccount(theid);
        
       model.addAttribute("act", account);
        
        return "cashout";
    }
    
    @RequestMapping("/validate")
    public String validate(@ModelAttribute("act") Newaccount acct, Model model,
          HttpServletRequest request,  Authentication authentication){
        
        Newaccount user = ((Useprincipal)authentication.getPrincipal()).getUserr();
        Transactionss tran = new Transactionss();
         //DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
         String amount = request.getParameter("amount");
         String account = request.getParameter("accountno");
         String pin = request.getParameter("pinn");
         String idd = request.getParameter("id");
         String ball = request.getParameter("balance");
         Double amt = Double.parseDouble(amount);
         Double ballz = Double.parseDouble(ball);
         int id = Integer.parseInt(idd);
         String pass = user.getPin();
         Double result = amt * 7 / 100;
         Double bal = user.getBalance();
         int myid = user.getId();
         SimpleDateFormat sdf = new  SimpleDateFormat("yyyy-mm-dd hh:mm.sss");
         Date date = new Date();
         Date ddd = new Date();
         String senttime = sdf.format(date);
         int random = (int )(Math.random() * 100000 + 100000);
       // String money = String.valueOf(random);
       try {
           ddd = new SimpleDateFormat("yyyy-mm-dd hh:mm.sss").parse(senttime);
       } catch (ParseException ex) {
           ex.getMessage();
         //  Logger.getLogger(Pagecontroller.class.getName()).log(Level.SEVERE, null, ex);
       }
         Date end = user.getEnddate();
        long diff = date.getTime() - end.getTime();
        long dif = diff/(3600*24*1000);
        Double balance = bal - (result + amt);
       // bal-=(result+amt);
        
        String userr = user.getUserid();
        
        
        
       // acct.setBalance(balance);
       // acct.getTransact().add(tt);
        
        
        
           if(dif <= 0){
            
            //model.addAttribute("error", "Any withdrawal at this time will attract 7% charges");
            if(amt >= bal){
                
                model.addAttribute("invalid", "Insufficient funds");
                return "cashout";
            }
          
            else if(balance < 0){
                
                
                    model.addAttribute("kovalid", "Insufficient funds");
                    return "error-cash";
                
                }
            else{
                if(passwordEncoder.matches(pin, pass) && bal >= 0 ){
                    
                    
                 }
                else{
                    model.addAttribute("pin", "incorrect pin");
                    return "cashout";
                }
                
            } 
           }
                    acct.setBalance(balance);
                    tran.setAmountt(amt);
                    tran.setBalance(balance);
                    tran.setTtime(date);
                    tran.setUserid(userr);
                    tran.setSendto(account);
                    tran.setTransactionid(random);
                    System.out.println("saving transaction");
               //model.addAttribute("no", "incorrect pin");
                 qctivitiesservice.saveTransaction(tran);
                 accountservice.saveAccount(acct);
                 
                 
                    System.out.println("done");
              
                System.out.println("i am done");
          String luck = "You have successfuly transfer " + amt + " to " + account;
                    model.addAttribute("thanks", luck);
                    model.addAttribute("ball", ballz);
                    return "success-cash"; 
        
       }
    
     @RequestMapping("/proceed")
     @ResponseBody
     public String checkenddate(@RequestParam String enndate,Authentication authentication){
        
        Newaccount user = ((Useprincipal)authentication.getPrincipal()).getUserr();
 
        Date date = new Date();
        Date end = user.getEnddate();
        long diff = date.getTime() - end.getTime();
        long dif = diff/(3600*24*1000);
        //difference in days
       // System.out.println(diff/(3600*24*1000));
        if(dif <= 0){
            
            return "Any withdrawal at this time will attract 7% charges";
        }
        else{
            return " ";
        }
    }
   
    
    @RequestMapping("/create")
    public String create(Model model){
        
        Newaccount account = new Newaccount();
        model.addAttribute("act", account);
        
        return "newaccount";
    }
    
    @RequestMapping("/saveme")
    public String saveme(@ModelAttribute("act") Newaccount acct){
         
        accountservice.saveAccount(acct);
        return "redirect:/list";
    }
    
    
    @RequestMapping("/processform" )
    public String processfo(HttpServletRequest request,
     @ModelAttribute("act") Newaccount acct, ModelMap mp)
            throws AddressException, MessagingException, javax.mail.MessagingException{
     
        
       
        int random = (int )(Math.random() * 1000 + 1000);
        String money = String.valueOf(random);
     final String username = "pcurtis2500@gmail.com";
    final String password = "mymumis20";
    Properties props = new Properties();
    props.put("mail.smtp.auth", "true");
    props.put("mail.smtp.starttls.enable", "true");
    props.put("mail.smtp.host", "smtp.gmail.com");
    props.put("mail.smtp.port", "587");
    Session session = Session.getInstance(props,
      new javax.mail.Authenticator() {
        protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication(username, password);
        }
      });
    
        Authorities auth = new Authorities();
        auth.setRoles("ROLE_EMPLOYEE");
        
         Authorities authh = new Authorities();
         authh.setRoles("ROLE_ADMIN");
         
        
     //   Model model = null;
        Newaccount act = new Newaccount ();
       String st = request.getParameter("duration");
       String userid = request.getParameter("userid");
       String email = request.getParameter("email");
      // String userr = getUserid();
        String myp= acct.getPassword();
        String p = acct.getCpassword();	
	String recipient = request.getParameter("email");
	String subject = "Registration Successful";
        String message = "You have successfully register your account";
       // SimpleMailMessage emaill = new SimpleMailMessage();
        
       
      //  accountservice.checkuser();
      /*  if(br.hasErrors()){
            return "newaccount";
        } */
        if(myp.compareTo(p)!=0){
            return "newaccount";
        }
        
       
        else {
            if(st.compareTo("6months")== 0){
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        Date date = new Date();
        Calendar cal = Calendar.getInstance();
        cal.add(Calendar.MONTH, 6);
        acct.setEnddate(cal.getTime());
        acct.setPassword(passwordEncoder.encode(acct.getPassword()));
        acct.setEnabled(1);
        acct.getAuthority().add(auth);
      //  acct.getAuthority().add(authh);
        acct.setBalance(5000.00);
        acct.setPin(passwordEncoder.encode(money));
       // money.setBalance(0);
        //money.setPin(passwordEncoder.encode(String.valueOf(random)));
        try{
        accountservice.saveAccount(acct);
        /* Message messagee = new MimeMessage(session);
        messagee.setFrom(new InternetAddress(username));
        messagee.setRecipients(Message.RecipientType.TO,InternetAddress.parse(email));
        messagee.setSubject(subject);
        messagee.setText(message); 
        Transport.send(messagee); */
        
        System.out.println("Done");
        }
        catch(Exception ex){
            
            ex.getMessage();
            return "newaccount";
        }
         }
       else if(st.compareTo("12months")== 0){
           DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        Date date = new Date();
        Calendar cal = Calendar.getInstance();
        cal.add(Calendar.MONTH, 12);
        acct.setEnddate(cal.getTime());
        acct.setPassword(passwordEncoder.encode(acct.getPassword()));
        acct.setEnabled(1);
        acct.getAuthority().add(auth);
        acct.getAuthority().add(authh);
        acct.setBalance(0.00);
        acct.setPin(passwordEncoder.encode(money));
        try{
        accountservice.saveAccount(acct);
      /*  Message messagee = new MimeMessage(session);
        messagee.setFrom(new InternetAddress(username));
        messagee.setRecipients(Message.RecipientType.TO,InternetAddress.parse(email));
        messagee.setSubject(subject);
        messagee.setText(message); 
       Transport.send(messagee); */
       
        System.out.println("Done");
        }
        catch(Exception ex){
            
            ex.getMessage();
            return "newaccount";
        }
         }
       else if(st.compareTo("18months")== 0){
          DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        Date date = new Date();
        Calendar cal = Calendar.getInstance();
        cal.add(Calendar.MONTH, 18);
        acct.setEnddate(cal.getTime());
        acct.setPassword(passwordEncoder.encode(acct.getPassword()));
        acct.setEnabled(1);
        acct.getAuthority().add(auth);
        acct.setBalance(0.00);
        acct.setPin(passwordEncoder.encode(money));
        try{
        accountservice.saveAccount(acct);
       /* Message messagee = new MimeMessage(session);
        messagee.setFrom(new InternetAddress(username));
        messagee.setRecipients(Message.RecipientType.TO,InternetAddress.parse(email));
        messagee.setSubject(subject);
        messagee.setText(message); 
        Transport.send(messagee); */
       
        System.out.println("Done");
            
        }
        catch(Exception ex){
            
            ex.getMessage();
            return "newaccount";
        }
         }
       else if(st.compareTo("24months")== 0){
          DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
         Date date = new Date();
        Calendar cal = Calendar.getInstance();
        cal.add(Calendar.MONTH, 24);
        acct.setEnddate(cal.getTime());
        acct.setPassword(passwordEncoder.encode(acct.getPassword()));
        acct.setEnabled(1);
        acct.getAuthority().add(auth);
        acct.setBalance(0.00);
        acct.setPin(passwordEncoder.encode(money));
        try{
        accountservice.saveAccount(acct);
       /* Message messagee = new MimeMessage(session);
        messagee.setFrom(new InternetAddress(username));
        messagee.setRecipients(Message.RecipientType.TO,InternetAddress.parse(email));
        messagee.setSubject(subject);
        messagee.setText(message); 
        Transport.send(messagee); */
        
       // System.out.println("Done");
        }
        catch(Exception ex){
            
            ex.getMessage();
            return "newaccount";
        }
         }
       else if(st.compareTo("5years")== 0){
          DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        Date date = new Date();
        Calendar cal = Calendar.getInstance();
        cal.add(Calendar.YEAR, 5);
        acct.setEnddate(cal.getTime());
        acct.setPassword(passwordEncoder.encode(acct.getPassword()));
        acct.setEnabled(1);
        acct.getAuthority().add(auth);
        acct.setBalance(0.00);
        acct.setPin(passwordEncoder.encode(money));
        try{
        accountservice.saveAccount(acct);
       /* Message messagee = new MimeMessage(session);
        messagee.setFrom(new InternetAddress(username));
        messagee.setRecipients(Message.RecipientType.TO,InternetAddress.parse(email));
        messagee.setSubject(subject);
        messagee.setText(message); 
        Transport.send(messagee); */
        
        
        }
        catch(Exception ex){
            
            ex.getMessage();
            return "newaccount";
        }
        
         }
        mp.addAttribute("pin", money);
        return "welcome";
        }

    }
    
    @RequestMapping("/process")
    @ResponseBody
    public String checkuserid(@RequestParam String username){
        
        Newaccount account = accountservice.findbyuserid(username);
        if(account == null){
            return "available";
        }
        else{
            return "userid is already taken";
        }
    }
    
    
    @RequestMapping("terms")
    public String terms(){
        
        return "terms";
    }
      
    @RequestMapping("/processs")
    @ResponseBody
    public String checkemail(@RequestParam String useremail){
        
        Newaccount account = accountservice.findbyemail(useremail);
        if(account == null){
            return "available";
        }
        else{
            return "userid is already taken";
        }
    }
     
    
    
}

