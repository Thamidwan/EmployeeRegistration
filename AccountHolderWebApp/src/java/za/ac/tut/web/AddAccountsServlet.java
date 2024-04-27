/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.ejb.bl.AccountHolderFacadeLocal;
import za.ac.tut.entities.AccountHolder;

/**
 *
 * @author USER
 */
public class AddAccountsServlet extends HttpServlet {

    @EJB
    private AccountHolderFacadeLocal psl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        String fullName  = request.getParameter("fullName");
        String street =  request.getParameter("street");
        String city =  request.getParameter("city");
        String code =  request.getParameter("code");
        String cellNo=  request.getParameter("cellNo");
        String emailAddress =  request.getParameter("emailAddress");
        Date date = new Date();
        
         AccountHolder holder = createAccount(id,fullName,street,city,code,cellNo,emailAddress,date);
         psl.create(holder);
         
         request.setAttribute("fullName",fullName);
       
         
         RequestDispatcher disp = request.getRequestDispatcher("add_outcome.jsp");
         disp.forward(request, response);
    }

     private AccountHolder createAccount(Long id, String fullName, String street, String city, String code, String cellNo,String emailAddress,Date date) {
        AccountHolder account = new AccountHolder();
        account.setId(id);
        account.setFullname(fullName);
        account.setStreet(street);
        account.setCode(code);
        account.setCity(city);
        account.setCellNo(cellNo);
        account.setEmailAddress(emailAddress);
        account.setCreationDate(date);
        
        return account;
    }
}
