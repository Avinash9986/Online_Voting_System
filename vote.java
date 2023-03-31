

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.* ;


public class vote extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String voterId = request.getParameter("vNumber") ;
        String partie = request.getParameter("parties") ;
        
        DatabaseManager db = new DatabaseManager() ;
        java.sql.Connection con = db.getConnection() ;
        
        try{
            String query = "select * from voter where vNumber =  '"+voterId+"' " ;
            PreparedStatement st = con.prepareStatement(query) ;
            ResultSet rs = st.executeQuery(query) ;
            
            if(rs.next()){
                PreparedStatement st1 = con.prepareStatement("insert into voted(vid) values('"+voterId+"')") ;
                PreparedStatement st2 = con.prepareStatement("insert into vote(vid,partie) values('"+voterId+"','"+partie+"')") ;
                
                st1.executeUpdate() ;
                st2.executeUpdate() ;
                
                response.sendRedirect("index.jsp") ;
            }
            else{
                response.sendRedirect("invalid.jsp") ;
            }
        }
        catch(Exception e){
            e.printStackTrace() ;
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
