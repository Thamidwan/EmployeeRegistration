<%-- 
    Document   : add_account
    Created on : Apr 25, 2024, 11:25:28 PM
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
        <form action="AddAccountsServlet.do" method="POST">
            <table>
                <tr>
                    <td>Enter the ID :</td>
                    <td><input type="text" name="id" ></td>
                </tr>
                <tr>
                    <td>Enter the  fullName:</td>
                    <td><input type="text" name="fullName" ></td>
                </tr>
                <tr>
                    <td>Enter the street :</td>
                    <td><input type="text" name="street" ></td>
                </tr>
                <tr>
                    <td>Enter the city :</td>
                    <td><input type="text" name="city" ></td>
                </tr>
                <tr>
                    <td>Enter the code:</td>
                    <td><input type="text" name="code" ></td>
                </tr>
                <tr>
                    <td>Enter the cellNo :</td>
                    <td><input type="text" name="cellNo" ></td>
                </tr>
                <tr>
                    <td>Enter the emailAddress:</td>
                    <td><input type="text" name="emailAddress" ></td>
                </tr>
               
                <tr>
                    <td></td>
                    <td><input type="submit" value="ADD_ACCOUNT"></td>
                </tr>
                
            </table>
        </form>
    </body>
</html>
