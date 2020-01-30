<%-- 
    Document   : settings
    Created on : Dec 3, 2019, 7:02:35 PM
    Author     : Olu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Settings Page</title>
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
             up:hover{
                 color: #e99ee9;
                 font-size: 33px;
             }
             #mon{
                 color: white;
                 font-size: 25px;
                 
             }
             #table{
                 margin-top: 50px;
                 width: 500px;
                 height: 250px;margin-left: 50px;
             }
             td{
                 font-size: 20px;
                 font-family: arial;
                 font-weight: bold;
             }
             #up{
                 color: white;
                 position: absolute;
                 margin-left: 250px;
                 margin-top: 300px;
                 width: 150px;
                 height: 40px;
                 background-color: darkmagenta;
                 text-align: center;
                 font-size: 20px;
                 padding-top: 10px;
             }
             #ch{
                 color: white;
                 position: absolute;
                 margin-left: 550px;
                 margin-top: 300px;
                 width: 150px;
                 height: 50px;
                 background-color: darkmagenta;
                 text-align: center;
                 font-size: 20px;
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
            }
        </style>
    </head>
    <body>
        <div id="main">
            <p id="save">SaveMe</p> 
            <nav id="bal">
                <p id="mon">Balance: #${act.balance}</p>
            </nav>
             <c:url var="update" value="showsettings">
                       <c:param name="customerid" value="${act.id}"/> 
             </c:url>
            <nav>
                <a href="${pageContext.request.contextPath}/">Home</a>
                <a href="account">Account</a>
                <a>News</a>
                <a href="${pageContext.request.contextPath}/cash">CashOut</a>
                <a href="settings">Settings</a>
                 <form:form action="${pageContext.request.contextPath}/logout">
                    <input type="submit" value="logout" id="log"/>
                </form:form>
            </nav>
        </div>
       
        <table id="table">
            <tr>
                <td>Email: </td>
                <td> ${act.email} </td>
            </tr>
            <tr>
                <td>pin: </td>
                
            </tr>
             <tr>
                <td>UserId: </td>
                <td> ${act.userid} </td>
            </tr>
            <a href="${update}" id="ch">Update</a>
        </table>
    </body>
</html>
