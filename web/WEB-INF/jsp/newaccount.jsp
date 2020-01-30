<%-- 
    Document   : newaccount
    Created on : Nov 30, 2019, 5:19:41 AM
    Author     : Olu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <style>
            @media screen and (min-device-width: 1201px){
                 #head{
                height: 100px;
                margin-top: -155px;
                width: 100%;
                position: fixed;
                background-color: darkmagenta;
            }
            #save{
                color: white;
                position: absolute;
                margin-left: 70px;
                margin-top: 30px;
                font-family: arial;
            }
            nav{
                float: right;
                margin-top: 45px;
            }
            a{
                padding-left: 40px;
                padding-right: 70px;
                font-size: 25px;
                color: white;
                font-weight: bold;
                text-decoration: none;
             }
             a:hover{
                 color: #e99ee9;
                 font-size: 33px;
             }
             #man{
                 width: 850px;
                 height: 950px;
                 border: solid darkmagenta;
                 margin-top: 160px;
                 margin-left: 550px;
                 background-color: darkmagenta;
             }
             #al{
                 text-align: center;
                 font-size: 37px;
                 font-weight: bold;
                 color: white;
                 text-decoration: underline;
                 margin-top: 10px;
             }
             #tab{
                 margin-left: 30px;
             }
             td{
                 font-family: arial;
                 font-size: 20px;
                 padding-top: 12px;
                 
             }
             .input{
                 width: 300px;
                 height: 40px;
                 font-size: 23px;
                 font-weight: bold;
                 border: solid darkmagenta;
                 margin-left: 80px;
             }
             #user{
                 width: 300px;
                 height: 40px;
                 font-size: 23px;
                 font-weight: bold;
                 border: solid darkmagenta;
                 margin-left: 80px;
             }
              #email{
                 width: 300px;
                 height: 40px;
                 font-size: 23px;
                 font-weight: bold;
                 border: solid darkmagenta;
                 margin-left: 80px;
             }
               #userr{
                 width: 300px;
                 height: 40px;
                 font-size: 23px;
                 font-weight: bold;
                 border: solid darkmagenta;
                 margin-left: 80px;
             }
             #plan{
                font-family: arial;
                font-size: 20px;
                margin-left: 80px;
                
             }
             #radio{
                 margin-left: 80px;
                 color: red;
             }
             #ss{
                 border: solid darkmagenta;
                 background-color: white;
                 color: darkmagenta;
                 width: 200px;
                 height: 50px;
                 margin-top: 700px;
                 margin-bottom: 10px;
                 font-size: 20px;
                 font-weight: bold;
                 margin-left: 350px;
                 position: absolute;
             }
             #ss:hover{
                 border: solid #e99ee9;
                 background-color: #e99ee9;
                 color: white; 
             }
             #gen{
                 color: white;
             }
             #check{
                 margin-left: 280px;
                 margin-top: 800px;
                 position: absolute;
                 width: 20px;
                 height: 20px;
             }
             #i{
                 margin-left: 285px;
                 margin-top: 800px;
                 position: absolute;
                 font-size: 18px; 
                 font-size: 20px;
             }
             #res{
                 position: absolute;
                 color: greenyellow;
                 font-size: 22px;
                 font-family: arial;
                 margin-left: 400px;
                 margin-top: -35px;
             }
              #rees{
                 position: absolute;
                 color: greenyellow;
                 font-size: 22px;
                 font-family: arial;
                 margin-left: 400px;
                 margin-top: -35px;
             }
              #err{
                 color:red; 
                 display: none;
                 font-size: 22px;
                 margin-left: 400px;
                 margin-top: -35px;
                 font-weight: bold;
             }
               #erro{
                 color:red; 
                 display: none;
                 font-size: 22px;
                 margin-left: 400px;
                 margin-top: -35px;
                 font-weight: bold;
             }
              #md{
                 color:red; 
                 display: none;
                 font-size: 22px;
                 margin-left: 400px;
                 margin-top: -35px;
                 font-weight: bold;
             }
              #uss{
                 color:red; 
                 display: none;
                 font-size: 22px;
                 margin-left: 400px;
                 margin-top: -35px;
                 font-weight: bold;
             }
              #ola{
                 color:red; 
                 display: none;
                 font-size: 22px;
                 margin-left: 400px;
                 margin-top: -35px;
                 font-weight: bold;
             }
             .checkk{
                 position: absolute;
                 margin-left: 330px;
                 margin-top: 830px;
                 font-size: 22px;
                 color: red;
                 font-weight: bold;
             }
              .gend{
                 position: absolute;
                 margin-left: 30px;
                 margin-top: 0px;
                 font-size: 22px;
                 color: red;
                 font-weight: bold;
             }
             #kas{
                color:red; 
                 display: none;
                 font-size: 22px;
                 margin-left: 400px;
                 margin-top: -35px;
                 font-weight: bold;
             }
             .durate{
                 color: red;
                 font-size: 40px;
                 font-weight: bold;
                 
             }
             .fone{
                 color: red;
                 font-size: 22px;
                 font-weight: bold;
             }
            }
        </style>
    </head>
    <body>
        <div id="head">
            <h1 id="save">SaveMe</h1> 
            <nav>
                <a>About</a>
                <a>FAQ</a>
                <a href="signin">Sign In</a>
                <a href='create'>Create an account</a>
            </nav>
        </div>
        <div id='man'>
                <p id='al'>Create an account</p>
                <table id='tab'>
                    <form:form action="processform" method="POST" modelAttribute="act">
                    <tr>
                        <td id="gen">Surname:</td>
                        <td> <form:input path="sname" id="surn" cssClass='input' onblur="dry()" /> <span id="err"> cannot be left empty</span> </td>
                    </tr>
                     <tr>
                        <td id="gen">Firstname:</td>
                        <td> <form:input path="fname" id="first" cssClass='input' onblur="firstt()" /><span id="erro"> cannot be left empty</span>  </td>
                    </tr>
                     <tr>
                        <td id="gen">Middlename:</td>
                        <td> <form:input path="mname" id="middle" cssClass='input' onblur="middlle()"/> <span id="md"> cannot be left empty</span> </td>
                    </tr>
                     
                    <tr>
                        <td id="gen">Gender:</td>
                        <td> <form:radiobutton id="radio" path="gender" value="male" label="Male" />
                            <form:radiobutton path="gender" value="female" label="Female" />
                           <form:errors path="gender" cssClass="gend" />
                        </td>
                    </tr>
                     <tr>
                        <td id="gen">UserId:</td>
                        <td> <form:input path="userid" id='userr'/> <div id="res"> </div> </td>
                    </tr>
                     
                     <tr>
                        <td id="gen">Phone number:</td>
                        <td> <form:input path="phone" cssClass='input'/> 
                            <form:errors path="gender" cssClass="fone" />
                        </td>
                    </tr>
                    <tr>
                        <td id="gen">Email:</td>
                        <td> <form:input path="email" id='email' onblur="emaill()" /><span id="ola">cannot be left empty</span><div id="rees"></div> </td>
                    </tr>
                    <tr>
                        <td id="gen">Password:</td>
                        <td> <form:input type="password" path="password" id="pass" cssClass='input'/><span id="kas">password do not match</span> </td>
                    </tr>
                    <tr>
                        <td id="gen">Confirm Password:</td>
                        <td> <form:input type="password" path="cpassword" id="cpass" onblur="match()" cssClass='input'/> </td>
                    </tr>
                     <tr>
                        <td id="gen">Duration:</td>
                        <td> <form:radiobutton id="radio" path="duration" value="6months" label="6months" />
                            <form:radiobutton path="duration" value="12months" label="12months" />
                            <form:radiobutton path="duration" value="18months" label="18months" />
                            <form:radiobutton path="duration" value="24months" label="24months" />
                            <form:radiobutton path="duration" value="5years" label="5years" />
                            <form:errors path="duration" cssClass="durate" />
                        </td>
                    </tr>
                   
                    
                    <input type="submit" id="ss" />
                     <p>
                    <form:checkbox id="check" path="check" value="check" checked="checked" />
                    <form:errors path="check" cssClass="checkk" />
                    <a href="terms" id="i">I have read and agree to terms of service</a>
                    </p>
                    
                    
                    </form:form>
                </table>
            </div>
       <script type="text/javascript">
           var surn = document.getElementById('surn');
           var fn = document.getElementById('first');
           var mn = document.getElementById('middle');
           var us = document.getElementById('userr');
           var pray = document.getElementById('email');
           var pass = document.getElementById('pass');
           var cpass = document.getElementById('cpass');
           
           function match(){
               if(pass.value !== cpass.value){
                   var kas = document.getElementById('kas');
                   kas.style.display = "block";
               }
               else{
                   var kas = document.getElementById('kas');
                   kas.style.display = "none";
               }
           }
           
           function dry(){
               if(surn.value === ""){
               var sun =  document.getElementById('err');
                   sun.style.display = "block";
               }
               else if(surn.value === " "){
               var sun =  document.getElementById('err');
                   //sun.innerHTML = "space";
                   sun.style.display = "block";
               }
               else if (!isNaN(surn.value)){
                    var sun =  document.getElementById('err');
                   sun.innerHTML = "cannot contain number";
                   sun.style.display = "block";
               }
               else{
                  var sun =  document.getElementById('err');
                   sun.style.display = "none"; 
               }
             
                 }
                 function firstt(){
               if(fn.value === ""){
               var sun =  document.getElementById('erro');
                   sun.style.display = "block";
               }
               else if(fn.value === " "){
               var sun =  document.getElementById('erro');
                   //sun.innerHTML = "space";
                   sun.style.display = "block";
               }
               else if (!isNaN(fn.value)){
                    var sun =  document.getElementById('erro');
                   sun.innerHTML = "cannot contain number";
                   sun.style.display = "block";
               }
               else{
                  var sun =  document.getElementById('erro');
                   sun.style.display = "none"; 
               }
             
                 }
                   function middlle(){
               if(mn.value === ""){
               var sun =  document.getElementById('md');
                   sun.style.display = "block";
               }
               else if(mn.value === " "){
               var sun =  document.getElementById('md');
                   //sun.innerHTML = "space";
                   sun.style.display = "block";
               }
               else if (!isNaN(mn.value)){
                    var sun =  document.getElementById('md');
                   sun.innerHTML = "cannot contain number";
                   sun.style.display = "block";
               }
               else{
                  var sun =  document.getElementById('md');
                   sun.style.display = "none"; 
               }
               
               }
             
               /*  function usserid(){
                  if(userr.value === ""){
                      var sun = document.getElementById('uss');
                      var sunn = document.getElementById('res');
                      sun.style.display = "block";
                      sunn.style.display = "none";
                  } 
                  else if(userr.value === " "){
                       var sun = document.getElementById('uss');
                      var sunn = document.getElementById('res');
                      sun.style.display = "block";
                      sunn.style.display = "none";
                  }
                  else{
                     var sun = document.getElementById('uss');
                      var sunn = document.getElementById('res');
                      sun.style.display = "none";
                      sunn.style.display = "block"; 
                  } 
              } */
               
    
              function emaill(){
                  if(pray.value === ""){
                      var sun = document.getElementById('ola');
                      var sunn = document.getElementById('rees');
                      sun.style.display = "block";
                      sunn.style.display = "none";
                  } 
                  else if(pray.value === " "){
                       var sun = document.getElementById('ola');
                      var sunn = document.getElementById('rees');
                      sun.style.display = "block";
                      sunn.style.display = "none";
                  }
                  else{
                     var sun = document.getElementById('ola');
                      var sunn = document.getElementById('rees');
                      sun.style.display = "none";
                      sunn.style.display = "block"; 
                  }
              }
                  
         </script>        
        <script>
            $(document).ready(function(){
              $("#userr").mouseout(function(){
                  $.ajax({
                      url : 'process',
                      data : {username: $("#userr").val()},
                      success : function(data){
                          $("#res").html(data);
                      }
                  });
              });  
              
               $("#email").mouseout(function(){
                  $.ajax({
                      url : 'processs',
                      data : {useremail: $("#email").val()},
                      success : function(data){
                          $("#rees").html(data);
                      }
                  });
              }); 
            });
        </script>
    </body>
</html>
