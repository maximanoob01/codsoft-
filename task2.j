import java.util.Scanner;

public class MarksCalculator {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Enter the number of subjects: ");
        int numSubjects = scanner.nextInt();

        int[] marks = new int[numSubjects];

        for (int i = 0; i < numSubjects; i++) {
            System.out.print("Enter marks for Subject " + (i + 1) + ": ");
            marks[i] = scanner.nextInt();
        }

        int totalMarks = calculateTotalMarks(marks);
        double averagePercentage = totalMarks / (double) numSubjects;
        char grade = calculateGrade(averagePercentage);

        displayResults(totalMarks, averagePercentage, grade);
    }

    private static int calculateTotalMarks(int[] marks) {
        int totalMarks = 0;
        for (int mark : marks) totalMarks += mark;
        return totalMarks;
    }

    private static char calculateGrade(double averagePercentage) {
        return averagePercentage >= 90 ? 'A' : averagePercentage >= 80 ? 'B' :
                averagePercentage >= 70 ? 'C' : averagePercentage >= 60 ? 'D' : 'F';
    }

    private static void displayResults(int totalMarks, double averagePercentage, char grade) {
        System.out.println("\nResults:\nTotal Marks: " + totalMarks +
                "\nAverage Percentage: " + averagePercentage + "%\nGrade: " + grade);
    }
}
