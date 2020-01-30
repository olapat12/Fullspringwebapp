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
        <title>adminpage</title>
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
            }
        </style>
    </head>
    <body>
        <div id="main">
            <p id="save">SaveMe</p> 
            <nav id="bal">
                <p id="mon">Balance: #</p>
            </nav>
            <nav>
                <a href="welcome">Home</a>
                <a href="account">Account</a>
                <a>News</a>
                <a>CashOut</a>
                <a href="settings">Settings</a>
                <a href="${pageContext.request.contextPath}/list">Customer-list</a>
                <a>End Date</a>
                <a  href="${pageContext.request.contextPath}/admin">Admin Page</a>
                <form:form action="${pageContext.request.contextPath}/logout">
                    <input type="submit" value="logout"/>
                </form:form>
            </nav>
        </div>
        <p id="wel">Welcome back, <security:authentication property="principal.username"/></p>
    </body>
</html>
