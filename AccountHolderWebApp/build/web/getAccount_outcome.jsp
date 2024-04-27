<%-- 
    Document   : getAccount_outcome
    Created on : Apr 26, 2024, 1:15:18 AM
    Author     : USER
--%>

<%@page import="za.ac.tut.entities.AccountHolder"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get Outcome Page</title>
    </head>
    <body>
        <h1>Get Outcome</h1>
        <%
            AccountHolder holder = (AccountHolder)request.getAttribute("account");
        %>
        
        <p>
            <%=holder.getFullname()%> & ID : <%=holder.getId()%> 
        </p>
        <p>
            Click <a href="menu.jsp">here</a> to go back to the homepage or Click <a href="index.html">here</a> to go back to the menu.
        </p>
    </body>
</html>
