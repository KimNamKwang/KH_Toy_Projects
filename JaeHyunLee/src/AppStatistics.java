package JaeHyunLee.src;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;

public class AppStatistics {
    public void StatisticsFunction(Statement statement) {
        Scanner scanner = new Scanner(System.in);
        String input = scanner.next();

        System.out.print("이름을 입력해주세요 :" + input);
        String name = input;
        System.out.print("비밀번호를 입력해주세요 :" + input);
        String password = input;

        String query = "SELECT * FROM user WHERE NAME = '" + name + "' AND PASSWORD = '" + password + "';";

        try {
            ResultSet resultSet = statement.executeQuery(query);
            if (resultSet.isBeforeFirst()) {
                System.out.println("통계");
                
               

            } else {
                System.out.println("회원정보가 일치하지 않습니다, 다시 시도해주세요.");
            }

        } catch (Exception exception) {
            exception.printStackTrace();
        }
    }
}