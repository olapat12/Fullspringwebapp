
import java.util.Properties;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import org.springframework.messaging.MessagingException;




/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Olu
 */
public class Main {
    
    
    
    public static void main(String[] args) throws AddressException, MessagingException, javax.mail.MessagingException {
   /* final String username = "pcurtis2500@gmail.com";
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

    try {
        Message message = new MimeMessage(session);
        message.setFrom(new InternetAddress(username));
        message.setRecipients(Message.RecipientType.TO,InternetAddress.parse("olajide.etti3@gmail.com"));
        message.setSubject("Testing Subject");
        message.setText("Dear Mail Crawler,"+"\n\n No spam to my email,please!"); 
        Transport.send(message);
        System.out.println("Done");
    } catch (MessagingException e) {
        throw new RuntimeException(e);
    } */
   
  /* if(dif <= 0){
            
            //model.addAttribute("error", "Any withdrawal at this time will attract 7% charges");
            if(percent >= bal){
                
                model.addAttribute("invalid", "Insufficient funds");
                return "cashout";
            }
          
            else if(balance < 0){
                
                
                    model.addAttribute("kovalid", "Insufficient funds");
                    return "error-cash";
                
                }
            else{
                if(passwordEncoder.matches(pin, pass) && balance >= 0 ){
               //model.addAttribute("no", "incorrect pin");
                   
             }
            } 
           }
              
                
          String luck = "You have successfuly transfer " + percent + " to " + account;
                    model.addAttribute("thanks", luck);
                    return "redirect:/"; */
   
   int random = (int )(Math.random() * 1000 + 1000);
   String money = String.valueOf(random);
        System.out.println(random);
        System.out.println(money);
} 
}

