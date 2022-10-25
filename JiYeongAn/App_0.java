import java.sql.*;
import java.util.Scanner;

import com.mysql.cj.xdevapi.Result;

public class App_0 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Input :");
        String input = scanner.next();

        // - MySQL workbench  실행 : JDBC
        // - User/password와 접속 IP:port 접속
        String url = "jdbc:mysql://localhost:3306/study_sqls";
        String user = "root";
        String password = "*khacademy!";

        try{
        Connection connection = DriverManager.getConnection(url,user,password);
        // - query Edit
        Statement statement = connection.createStatement();
        
        // - SELECT * FROM users ;
        String query = "SELECT * FROM users";
        ResultSet resultSet = statement.executeQuery(query);
        
        // - 결과 출력
        while(resultSet.next()){
            String UNIQUE_ID = resultSet.getString("UNIQUE_ID");
            System.out.print("UNIQUE_ID :" + UNIQUE_ID);
            System.out.print(", NAME :" + resultSet.getString( "NAME"));
            System.out.print(", EMAIL :" + resultSet.getString( "EMAIL"));
            System.out.print(", JOB :" + resultSet.getString( "JOB"));
            System.out.println("");
        }

        } catch(SQLException exception){
            exception.printStackTrace();
        }
        

        

    }
}