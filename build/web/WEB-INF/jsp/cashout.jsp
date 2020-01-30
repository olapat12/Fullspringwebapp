<%-- 
    Document   : welcome
    Created on : Dec 1, 2019, 11:07:07 PM
    Author     : Olu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <style>
            @media screen and (min-device-width: 1201px){
                #main{
                    width: 100%;
                    height: 100px;
                    background-color: darkmagenta;
                }
                 #save{
                color: white;
                position: absolute;
                margin-left: 70px;
                margin-top: 30px;
                font-family: arial;
                font-size: 30px;
            }
             nav{
                float: right;
                margin-top: 45px;
            }
            a{
                padding-left: 20px;
                padding-right: 30px;
                font-size: 25px;
                color: white;
                font-weight: bold;
                text-decoration: none;
             }
             a:hover{
                 color: #e99ee9;
                 font-size: 33px;
             }
             #bal{
                 float: right;
                margin-top: -15px;
                padding-right: 20px;
                
             }
             #mon{
                 color: white;
                 font-size: 25px;
                 
             }
             #wel{
                 font-size: 30px;
                 font-style: italic;
                 margin-left: 100px;
                 margin-top: 70px;
             }
             #log{
                 position: absolute;
                 border: solid darkmagenta;
                 background-color: darkmagenta;
                 color: white;
                 font-size: 25px;
                 font-weight: bold;
                 height: 40px;
                 width: 120px;
                 margin-top: -35px;
                 margin-left: 650px;
             }
              #log:hover{
                 color: #e99ee9;
                 font-size: 33px;
             }
             #res{
                 position: absolute;
                 color: red;
                 margin-left: 160px;
                 margin-top: -100px;
                 font-size: 18px;
             }
             #h{
                display: none;
            }
            #pa{
                display: none;
            }
            }
        </style>
    </head>
    <body>
       
        <div id="main">
            <p id="save">SaveMe</p> 
            <nav id="bal">
                <p id="mon">Balance: #${act.balance}</p>
            </nav>
            <nav>
                <a href="${pageContext.request.contextPath}/">Home</a>
                <a href="${pageContext.request.contextPath}/account">Account</a>
                <a>News</a>
                <a href="${pageContext.request.contextPath}/cash">CashOut</a>
                <a href="${pageContext.request.contextPath}/settings">Settings</a>
                <form:form action="${pageContext.request.contextPath}/logout">
                    <input type="submit" value="logout" id="log"/>
                </form:form>
                <security:authorize access="hasRole('ADMIN')">
                <a  href="${pageContext.request.contextPath}/admin">Admin Page</a>
                </security:authorize>
                
            </nav>
                
        </div>
        <div>
                <form:form action="validate" method="post" modelAttribute="act">
                    
                    <form:hidden path="id" />
                    <br><br><br><br><br>
                    
                    <table>
                        Cash Withdrawal
                        <p>
                        <tr>
                            <td>
                        <form:input path="balance" id="bal"/>
                            <td>
                        <tr>
                        </p>
                        <tr>
                            <td>Account no:</td>
                            <td><form:input path="accountno" id="dan" type="text" />
                                <div id="res"></div>
                            
                            <span>${error}</span>
                            </td>
                            
                        </tr>
                        <tr>
                            <td>Amount:</td>
                            <td><form:input path="amount" id="amt" onblur="calc()" /><span>${invalid}</span></td>
                        </tr>
                        <tr>
                            <td>Pin:</td>
                            <td><form:input type="password" path="pinn"/><span>${pin}</span></td>
                        </tr>
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
                    </table> 
                </form:form>   
            </div>
                <script>
            $(document).ready(function(){
              $("#dan").focus(function(){
                  $.ajax({
                      url : 'proceed',
                      data : {enndate: $("#dan").val()},
                      success : function(data){
                          $("#res").html(data);
                      }
                  });
              });  
              
            });
        </script>
        <script>
            var bal = document.getElementById("bal").value;
            var amt = document.getElementById("amt").value;
            var x;
            
            function calc(){
                x = bal - amt;
                bal.value = x;
            }
            
        </script>
    </body>
</html>
