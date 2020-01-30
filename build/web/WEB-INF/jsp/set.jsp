<%-- 
    Document   : updateform
    Created on : Dec 19, 2019, 11:53:22 AM
    Author     : Olu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
       <style>
            #h{
                display: none;
            }
            #nip{
                display : none;
                color: red;
                font-size: 20px;
                position: absolute;
                margin-left: 160px;
                margin-top: -25px;
            }
            #pp{
                display : none;
                color: red;
                font-size: 20px;
                position: absolute;
                margin-left: 160px;
                margin-top: -25px;
            }
            #span{
                color: red;
            }
        </style>
    </head>
    <body>
        <table id="table">
            <form:form action="jaho" method="POST" modelAttribute="act">
                <form:hidden path="id" />
                    
                    <tr>
                        <td id="gen">Email:</td>
                        <td> <form:input path="email" /> </td>
                       
                    </tr>
                    <tr>
                        <td id="gen">Enter your old pin:</td>
                        <td> <form:input type="text" path="pinn" /><span>${errr}</span> </td>
                       
                    </tr>
                    <tr>
                        <td id="gen">Enter your new pin:</td>
                        <td> <form:input type="text" path="pinnn" id="pin" onmouseout="dothis()" />
                            <span id="pp">pin must be a number and four characters long</span> 
                          <form:errors path="pinn" />
                        </td>
                    
                    </tr>
                    <tr>
                        <td id="gen">Confirm your new pin: </td>
                        <td> <form:input type="text" id="et" path="cpin" onblur="dothat()"/>
                            <span id="nip">password do not match</span> </td>
                       
                    </tr>
                    <br><br>
                    <tr>
                        <td>
                    <input type="submit" />
                    </td>
                    </tr>
                     <p id="h">
                    <form:checkbox id="check" path="check" value="check" checked="checked" />
                    <form:errors path="check" cssClass="checkk" />
                    <a href="terms" id="i">I have read and agree to terms of service</a>
                    </p>
            </form:form>
        </table>
        <script>
             var pass = document.getElementById('pin');
              var et = document.getElementById('et');
              
             function dothis(){
                 var pp =  document.getElementById('pp');
                 if(isNaN(pass.value)){
                     
                     pp.style.display = "block";
                 }
                 else if(pass.value < 1000){
                     
                     pp.innerHTML = "pin must be four characters long";
                     pp.style.display = "block"; 
                 }
                 else{
                     
                     pp.style.display = "none";
                 }
                 
             }
             
             function dothat(){
                 var pp =  document.getElementById('nip');
                 if(pass.value !== et.value){
                     
                     pp.style.display = "block";
                 }
                 else{
                     pp.style.display = "none";
                 }
             }
             
        </script>
    </body>
</html>
