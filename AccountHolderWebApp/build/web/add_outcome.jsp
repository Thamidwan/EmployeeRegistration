k<%-- 
    Document   : add_outcome
    Created on : Apr 26, 2024, 12:05:46 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Account Page</title>
    </head>
    <body>
        <h1>Add Account</h1>
        <%
            String names = (String)request.getAttribute("fullName");
            Long id = (Long)request.getAttribute("id");
        %>
        <p>
            The <b><%=names%></b> has beem added with the id <b><%=id%></b>.
        </p>
        <p>
            Click <a href="menu.jsp">here</a> to go back to the homepage or Click <a href="index.html">here</a> to go back to the menu.
        </p>
    </body>
</html>
