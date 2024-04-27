<%-- 
    Document   : getList
    Created on : Apr 26, 2024, 1:24:44 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List  Page</title>
    </head>
    <body>
        <h1>AccountHolder List</h1>
        <form action="GetListServlet.do" method="POST">
            <table>
                <tr>
                    <td></td>
                    <td><input type="submit" value="GET LIST"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
