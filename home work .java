import java.sql.*;
/**
 *
 * @author Aryan Soft
 */
public class csv{
    
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
       
        String id = "id1";
        String pwd = "pwd1";
        String fullname = "geek for geeks";
        String email = "geeks@geeks.org";
        
        try
        {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin@localhost:1521:orcl","login","pwd1");
            Statement stmt = con.createStatement();
            
            // inserting data in database 
            String q1 = "insert into userid values('"+id+"', '"+pwd+"', '"+fullname+"', '"+email+"')";
            int x = stmt.executeUpdate(q1);
            if(x > 0)
                System.out.println("Successfully Inserted");
            else
                System.out.println("Insert Failed");
            con.close();
        }
        
        catch (Exception e)
        {
            System.out.println(e);
        }
                
    }
}