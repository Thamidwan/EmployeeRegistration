<%-- 
    Document   : get_account
    Created on : Apr 26, 2024, 1:04:43 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get Account Page</title>
    </head>
    <body>
        <h1>Get Account</h1>
        <form action="GetAccountServlet.do" method="POST">
            <table>
                <tr>
                    <td>Enter the id </td>
                    <td><input type="text" name="id"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="GET ACCOUNT"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
