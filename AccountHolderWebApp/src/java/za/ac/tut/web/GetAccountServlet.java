/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
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
public class GetAccountServlet extends HttpServlet {

    @EJB
    private AccountHolderFacadeLocal psl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         Long id = Long.parseLong(request.getParameter("id"));
         
         AccountHolder account = psl.find(id);
         
         request.setAttribute("account",account);
         
         RequestDispatcher disp = request.getRequestDispatcher("getAccount_outcome.jsp");
         disp.forward(request, response);
    }

}
