<%-- 
    Document   : list_outcome
    Created on : Apr 26, 2024, 1:32:10 AM
    Author     : USER
--%>


<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entities.AccountHolder"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List  Page</title>
    </head>
    <body>
        <h1>List Outcome Page</h1>
        <%
            List<AccountHolder> list = (List<AccountHolder>)request.getAttribute("list");
        %>
        <table>
        <%
            for(int i = 0;i<list.size();i++){
                String fullname =list.get(i).getFullname();
                String city =list.get(i).getCity();
                Long id = list.get(i).getId();
            %>
            <p><%=fullname%> <%=city%>  <%=id%></p>
            <%
            }    
        %>
        </table>
    </body>
</html>
