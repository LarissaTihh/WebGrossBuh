/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import entitys.Account;
import entitys.Company;
import entitys.User;
import java.io.IOException;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import sessions.AccountFacade;
import sessions.CompanyFacade;
import sessions.HistoryFacade;
import sessions.UserFacade;

/**
 *
 * @author user
 */
@WebServlet(name = "MyServlet", urlPatterns = {
    "/newAccount",
    "/addAccount",
    "/listCompanies",})
public class AdminServlet extends HttpServlet {

    @EJB
    AccountFacade accountFacade;
    @EJB
    CompanyFacade companyFacade;
    @EJB
    HistoryFacade historyFacade;
    @EJB
    UserFacade userFacade;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        //защита ресурсов
        HttpSession session = request.getSession(false);
        if (session == null) {
            request.setAttribute("info", "У Вас нет прав,войдите!");
            request.getRequestDispatcher("/WEB-INF/showLogin.jsp")
                    .forward(request, response);
            return;
        }
        User user = (User) session.getAttribute("user");
        if (user == null) {
            request.setAttribute("info", "У Вас нет прав,войдите!");
            request.getRequestDispatcher("/WEB-INF/showLogin.jsp")
                    .forward(request, response);
            return;
        }
        if (!"admin".equals(user.getLogin())) {
            request.setAttribute("info", "У Вас нет прав,зайдите как администратор!");
            request.getRequestDispatcher("/WEB-INF/showLogin.jsp")
                    .forward(request, response);
            return;
        }
        String path = request.getServletPath();
        switch (path) {
            case "/newAccount":
                request.getRequestDispatcher("/WEB-INF/newAccount.jsp")
                        .forward(request, response);
                break;
            case "/addAccount":
                String number = request.getParameter("number");
                String title = request.getParameter("title");
                String author = request.getParameter("author");
                String year = request.getParameter("year");
                String month = request.getParameter("month");
                String total = request.getParameter("total");
                Account account = new Account(Integer.parseInt(number), title, author, Integer.parseInt(year), month, Integer.parseInt(total));
                accountFacade.create(account);
                request.setAttribute("info", "счёт создан");
                request.setAttribute("account", account);
                request.getRequestDispatcher("/index.jsp")
                        .forward(request, response);
                break;

            case "/listCompanies":
                List<Company> listCompanies = companyFacade.findAll();
                request.setAttribute("listCompanies", listCompanies);
                request.getRequestDispatcher("/listCompanies.jsp")
                        .forward(request, response);
                break;

        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
