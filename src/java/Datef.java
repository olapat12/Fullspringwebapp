
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Olu
 */
public class Datef {
    
    private Date dd;
    
    public static void main(String[] args) {
        
        /*  else{
             if(percent >= bal){
                
                model.addAttribute("invalid", "Insufficient funds");
                return "cashout";
            }
            else if(br.hasErrors()){
                
                model.addAttribute("error", "check your account number");
                return "cashout";
            }
            else if(!passwordEncoder.matches(pin, pass)){
                model.addAttribute("no", "incorrect pin");
                return "cashout";
            }
            else{
                Double balance = (bal + percent) - result;
                if(balance < 0){
                    model.addAttribute("kovalid", "Insufficient funds");
                    return "error-cash";
                }
                else{
                    user.setBalance(balance);
                    accountservice.saveAccount(acct);
                    String luck = "You have successfuly transfer" + percent + "to" + account;
                    model.addAttribute("thanks", "luck");
                    return "success-cash";
                }
            }
        } */
        
      /*   DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        Date date = new Date();
      //  String dd = df.format(date); 
        String sDateString = "2016-02-14";
        
        Date startDate = null;
        try {
            startDate = df.parse(sDateString);
            
        } catch (Exception e) {
            e.printStackTrace();
        }

        //difference in milliseconds
        long diff = date.getTime() - startDate.getTime();

        //difference in days
        System.out.println(diff/(3600*24*1000)); */
       /* Datef ff = new Datef();
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        Date date = new Date();
        Calendar cal = Calendar.getInstance();
        cal.add(Calendar.MONTH, 6);
        ff.setDd(cal.getTime());
        System.out.println(df.format(ff.getDd()));
        System.out.println(df.format(date)); */
       
       int ol = 2000;
       int dl = 5000;
       int yk = ol * 7 /100;
       int hh = dl - (ol + yk);
        System.out.println(hh);
        
        int y = 20;
        int x = 30;
        
        x-=y;
        System.out.println(x);
        
    }

   
    
}
