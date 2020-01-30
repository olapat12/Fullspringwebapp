<%-- 
    Document   : signin
    Created on : Nov 30, 2019, 4:20:10 AM
    Author     : Olu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign In</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <style>
            @media screen and (min-device-width: 1201px){
                 #head{
                height: 100px;
               
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
             #tah{
                 width: 700px;
                 height: 550px;
                 border: solid darkmagenta;
                 margin-left: 550px;
                 margin-top: 200px;
             }
             #al{
                 text-align: center;
                 font-size: 37px;
                 font-weight: bold;
                 color: darkmagenta;
                 text-decoration: underline;
             }
             #user{
                 font-family: arial;
                 font-weight: bold;
                 margin-left: 50px;
                 font-size: 27px;
                 color: darkmagenta;
             }
             #tex{
                 margin-left: 120px;
                 width: 300px;
                 height: 40px;
                 font-size: 18px;
                 font-weight: bold;
                 border: solid darkmagenta;
             }
               #te{
                 margin-left: 78px;
                 width: 300px;
                 height: 40px;
                 font-size: 18px;
                 font-weight: bold;
                 border: solid darkmagenta;
             }
             #for{
                 font-size: 19px;
                 font-family: arial;
                 margin-left: 280px;
                 color: darkmagenta;
                 
             }
             #sub{
                 border: solid darkmagenta;
                 background-color: darkmagenta;
                 color: white;
                 width: 200px;
                 height: 50px;
                 margin-top: 35px;
                 margin-left: 270px;
                 font-size: 20px;
                 font-weight: bold;
             }
             #sub:hover{
                 border: solid #e99ee9;
                 background-color: #e99ee9;
                 color: white; 
             }
             #have{
                 font-size: 25px;
                 font-family: arial;
                 text-align: center;
                 
             }
             #sign{
                 color: darkmagenta;
                 text-decoration: none;
             }
             #in{
                 font-size: 24px;
                 font-weight: bold;
                 color: red;
                 text-align: center;
             }
             #invalid{
                 font-size: 25px;
                 color: red;
                 margin-left: 200px;
                 font-weight: bold;
                 position: absolute;
                 margin-top: 350px;
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
                <a href="sign">Sign In</a>
                <a href="create">Create an account</a>
             
            </nav>
            
            <div id="tah">
                <form:form action="${pageContext.request.contextPath}/aunthenticateTheUser" method="post">
                      <c:if test="${param.error != null}">

                                   <i id="invalid">
                               Invalid username and password.
                                  </i>
								
                    </c:if>
                      <c:if test="${param.logout != null}">

                                   <i id="invalid">
                                 You have successfully logged out.
                                  </i>
								
                    </c:if>
               <p id="al">Already have an account</p><br>
               
               <p id="user">UserId: <input id="tex" placeholder="UserId or Email Address" name="username"/><div id="res"> </div></p><br>
               <p id="user">Password: <input id="te" type="password" placeholder="Password" name="password" /> </p>
               
               <a id="for">Forgot your password?</a>
               
               <p>
               <input type="submit" id="sub"/>
               </p>
               </form:form>
            </div>
            <p id='have'>Don't have an account?<a href='create' id='sign'>Sign Up</a></p>
        </div>
         
    </body>
</html>
