package JaeHyunLee.src;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;

public class AppStatistics {
    public void StatisticsFunction(Statement statement){
        Scanner scanner = new Scanner(System.in);
        String input = scanner.next();
        System.out.println("----------------------------------------------------------------------------------------------\n");
        System.out.println("설문내역을 확인 하실 수 있습니다. 이름과 비밀번호를 입력해주세요.");
        
        System.out.print("이름을 입력해주세요 :" + input);
        String name = input;
        System.out.print("비밀번호를 입력해주세요 :" + input);
        String password = input;
        String query = "SELECT * FROM user WHERE NAME = '"+name+"' AND PASSWORD = '"+password+"';";
        try {
        
        ResultSet resultSet = statement.executeQuery(query);
        //ResultSet resultSet2 = statement.executeQuery(query);

        if(resultSet.isBeforeFirst()) {

            System.out.println("\n== 로그인에 성공했습니다. ==\n");
            query = "DELETE FROM survey WHERE USER_ID IN (SELECT USER_ID FROM user WHERE NAME = " + input + "AND password =" + input + ");" ;
            resultSet = statement.executeQuery(query);
                
            statement.executeQuery(query);
            }
    
        }catch (Exception exception) {
            exception.printStackTrace();
              }        
    }
}
}
