<%-- 
    Document   : customerpage
    Created on : Nov 15, 2019, 12:37:56 AM
    Author     : Olu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/saveme/css/style.css"/> 
    </head>
    <body>
        <div id="wrapper">
            <div id="header">
                <h2>CRM - Customer Relational Manager</h2>
            </div>
        </div>
        <div id="container">
            <div id="content">
                
                <input type="button" value="add customer" class="add-button"
                       onclick="window.location.href='showform'; return false;"/>
                <table>
                    <tr>
                        <th>First name</th>
                        <th>Middle name</th>
                        <th>Last name</th>
                        <th>Email</th>
                        <th>Action</th>
                    </tr>
                    <c:forEach var="tempcustomer" items="${account}">
                        
                        <c:url var="updatelink" value="/customer/showformupdate">
                            <c:param name="customerid" value="${tempcustomer.id}"/>
                        </c:url>
                        
                         <c:url var="deletelink" value="/customer/showformdelete">
                            <c:param name="customerid" value="${tempcustomer.id}"/>
                        </c:url>
                        <tr>
                            <td>${tempcustomer.fname}</td>
                            <td>${tempcustomer.mname}</td>
                             <td>${tempcustomer.sname}</td>
                            <td>${tempcustomer.email}</td>
                            
                            <td>
                                <a href="${updatelink}">Update</a> |
                                <a href="${deletelink}" 
                                   onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
    </body>
</html>
