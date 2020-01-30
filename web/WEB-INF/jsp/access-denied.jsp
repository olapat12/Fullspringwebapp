<%-- 
    Document   : access-denied
    Created on : Dec 31, 2019, 9:32:34 PM
    Author     : Olu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <h1>You are an authorized user</h1>
        <a href="${pageContext.request.contextPath}/"> Back to homepage</a>
    </body>
</html>
