

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.* ;

public class register extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String name = request.getParameter("UserName" );
        String address = request.getParameter("address" );
        String phNumber = request.getParameter("PhNumber") ;
        String email = request.getParameter("Email") ;
        String VNumber = request.getParameter("vNumber") ;
        String date = request.getParameter("date") ;
        
//       
         DatabaseManager db = new DatabaseManager() ;
        java.sql.Connection con = db.getConnection() ;
        try{
            PreparedStatement st = con.prepareStatement("insert into voter(name,address,phNumber,dob,email,vNumber) values('"+name+"','"+address+"','"+phNumber+"','"+date+"','"+email+"','"+VNumber+"')") ;
            st.executeUpdate() ;
            response.sendRedirect("success.jsp") ;
        }
        catch(Exception e){
            e.printStackTrace();
            response.sendRedirect("error.jsp") ;
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
