package JaeHyunLee;
import java.sql.*;
import com.mysql.*;

public class AppSelect {
    public void selectFunction(Statement statement){
             
            //실행 쿼리
            
            try{
                
                // - query Edit
                String query = "SELECT * FROM survey ORDER BY USER_ID ASC";
                    //select statement
                    AppSelect appSelect = new AppSelect();
                    appSelect.SelectFunction(statement);
        
                   
        
                } catch(SQLException exception){
                    exception.printStackTrace();
                }
    }
}
