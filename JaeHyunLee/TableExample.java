package JaeHyunLee;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;


public class TableExample {
    public static void main (String args[]){
        List<Student> students = new ArrayList<>();
        students.add(new Student("S101","John",8, '4', null, null));
        students.add(new Student("S102","Leo",10, '6', null, null));
        students.add(new Student("S103","Mary",5, '2', null, null));
        students.add(new Student("S104","Lis1",6, '3', null, null));
        students.add(new Student("S105","Lis2",6, '3', null, null));
        students.add(new Student("S106","Lis3",6, '3', null, null));

        String[] StringArray = { "(1)매우만족","(2)만족","(3)보통","(4)불만","(5)매우불만"}; 

        System.out.println("-----------------------------------------------------------------------------");
        System.out.printf("%5s %5s %5s %5s %5s %5s", "답항", "문항1", "문항2", "문항3", "문항4", "문항5");
        System.out.println();
        System.out.println("-----------------------------------------------------------------------------");
        
        System.out.println(StringArray[0]);
        for(Student student: students){
            System.out.format("%7s %5s %5d %5c %5s %5s",
                    student.getId(), student.getName(), student.getAge(), student.getGrade(),student.getGrade2(),student.getGrade3());
            System.out.println();
        }
        System.out.println("-----------------------------------------------------------------------------");
    }
}
class Student{
    private String id;
    private String name;
    private int age;
    private Character grade;
    private Character grade2;
    private Character grade3;
    Student(String id,String name,int age, Character grade,Character grade2 ,Character grade3){
        this.id = id;
        this.name = name;
        this.age = age;
        this.grade = grade;
        this.grade2 = grade2;
        this.grade3 = grade3;
    }

    public String getId() {
        return id;
    }

    public Character getGrade() {
        return grade;
    }

    public String getName() {
        return name;
    }

    public int getAge() {
        return age;
    }

    public Character getGrade2() {
        return grade2;
    }

    public Character getGrade3() {
        return grade3;
    }
}