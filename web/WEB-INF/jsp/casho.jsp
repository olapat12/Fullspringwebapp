<%-- 
    Document   : casho
    Created on : Jan 15, 2020, 2:55:42 PM
    Author     : Olu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
             #click{
                 color: green;
                 font-size: 20px;
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
            <c:url var="update" value="goto">
                       <c:param name="customerid" value="${act.id}"/> 
             </c:url>
            
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
         
                <p id="click"> <a href="${update}" id="ch">Click here to continue</a></p>
    </body>
</html>
