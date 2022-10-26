import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;

public class AppSearch_Nam {
    public void SearchFunction(Statement statement) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("---------------------------------------------------");
        System.out.println("설문내역을 확인 하실 수 있습니다. 이름과 비밀번호를 입력해주세요.");
        System.out.print("이름을 입력해주세요 :");
        String name = scanner.next();
        System.out.print("비밀번호를 입력해주세요 :");
        String password = scanner.next();

        String query = "SELECT * FROM user WHERE NAME = '" + name + "' AND PASSWORD = '" + password + "';";
        try {
            ResultSet resultSet = statement.executeQuery(query);

            if (resultSet.isBeforeFirst()) {
                System.out.println("\n== 로그인에 성공했습니다. ==\n");
                System.out.print("개인설문내역을 출력합니다.");
                System.out.println("----------------------------------------");
                query = "SEARCH FROM survey WHERE USER_ID IN (SELECT USER_ID FROM user WHERE NAME = '" + name + "';";
                
                ResultSet rst = statement.executeQuery(query);
                while (rst.next()) {
                    System.out.print("USER_ID :" + rst.getString("USER_ID"));
                    System.out.print(", ANSWER_ID :" + rst.getString("ANSWER_ID"));
                    System.out.print(", QUESTION_ID :" + rst.getString("QUESTION_ID"));
                    System.out.println("");
                }

            }else{
                System.out.println("회원정보가 일치하지 않습니다, 다시 시도해주세요.");
                
            }
        } catch (Exception exception) {
            exception.printStackTrace();
        }

    }

}

// - 결과 출력
// while(resultSet.next()){
// String UNIQUE_ID = resultSet.getString("UNIQUE_ID");
// System.out.print("UNIQUE_ID :" + UNIQUE_ID);
// System.out.print(", NAME :" + resultSet.getString( "NAME"));
// System.out.print(", EMAIL :" + resultSet.getString( "EMAIL"));
// System.out.print(", JOB :" + resultSet.getString( "JOB"));
// System.out.println("");
// }

// ----------------------------------------------------------------------------------------------
// 설문내역을 확인 하실 수 있습니다. 이름과 비밀번호를 입력해주세요.

// - 이름을 입력하세요 : 강형욱
// - 비밀번호를 입력하세요 : password3

// ----------------------------------------------------------------------------------------------

// 강형욱 님의 설문내역입니다.
// —-------------------------------------------------------------------------------------------
