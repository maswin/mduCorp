/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import Db.DBConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author aswin
 */
@WebServlet(urlPatterns = {"/InsertDetails_Action"})
public class InsertDetails_Action extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       
        try
	  {
              if(request.getParameter("ssid") == null || request.getParameter("unit") == null || request.getParameter("rate") == null ){
                    response.sendRedirect("insertDetails.jsp?error_msg=Enter All Data");
                }
	    int id=Integer.parseInt(request.getParameter("ssid"));
		String desc=request.getParameter("description");
		double unit=Double.parseDouble(request.getParameter("unit"));
		double rate=Double.parseDouble(request.getParameter("rate"));
		System.out.println(id+" "+desc+" "+unit+" "+rate);
                
                DBConnection db = new DBConnection();
		PreparedStatement ps=db.con.prepareStatement("INSERT INTO item(ssno,description,unit,rate) values(?,?,?,?)");
		ps.setInt(1,id);
		ps.setString(2,desc);
		ps.setDouble(3,unit);
		ps.setDouble(4,rate);
		ps.executeUpdate();
		System.out.println("SUCCESSFULLY INSERTED");
                response.sendRedirect("insertDetails.jsp?msg=Data Inserted Successfully");
	   
	   }
        catch(Exception e)
        { 
            e.printStackTrace();
        response.sendRedirect("insertDetails.jsp?error_msg=Enter All Data");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
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
     * Handles the HTTP
     * <code>POST</code> method.
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
