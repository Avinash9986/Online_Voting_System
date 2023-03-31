
//import com.sun.jdi.connect.spi.Connection;
import java.sql.Connection ;
import java.sql.DriverManager ;
import java.sql.SQLException ;


public class DatabaseManager {
    public Connection getConnection(){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver") ;
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinevotingdbmarch","root","9986539340") ;
            return con ;
        }
        catch(ClassNotFoundException ex){
            ex.printStackTrace();
            return null ;
        }
        catch(SQLException ex){
            ex.printStackTrace() ;
            return null ;
        }
    }
}
