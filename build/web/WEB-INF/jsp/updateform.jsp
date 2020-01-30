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
            #hi{
                display: none;
            }
        </style>
    </head>
    <body>
        <table id="table">
            <form:form action="${pageContext.request.contextPath}/jah" method="POST" modelAttribute="act">
                <form:hidden path="id" />
                    <tr>
                        <td id="gen">Surname:</td>
                        <td> <form:input path="sname" />
                           
                        </td>
                        
                    </tr>
                     <tr>
                        <td id="gen">Firstname:</td>
                        <td> <form:input path="fname" /> 
                     
                    </tr>
                     <tr>
                        <td id="gen">Middlename:</td>
                        <td> <form:input path="mname"  /> 
                        
                    </tr>
                     
                    
                     <tr>
                        <td id="gen">UserId:</td>
                        <td> <form:input path="userid" /> 
                            
                        </td>
                        
                        
                    </tr>
                   
                     <tr>
                        <td id="gen">Phone number:</td>
                        <td> <form:input path="phone"/> </td>
                        
                    </tr>
                   
                    <br><br>
                    <tr>
                        <td>
                    <input type="submit" />
                    </td>
                    </tr>
                     <p id="hi">
                    <form:checkbox id="check" path="check" value="check" checked="checked" />
                    <form:errors path="check" cssClass="checkk" />
                    <a href="terms" id="i">I have read and agree to terms of service</a>
                    </p>
            </form:form>
        </table>
    </body>
</html>
