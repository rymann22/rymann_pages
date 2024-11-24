import java.util.Scanner;

public class NameFormatter {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Collecting the full name as input
        System.out.println("Enter the full name:");
        String fullName = scanner.nextLine().trim();

        // Splitting the input string by spaces
        String[] nameParts = fullName.split("\\s+");

        // Handling different cases based on the number of parts in the name
        switch (nameParts.length) {
            case 3:
                {
                    // Full name with first, middle, and last name
                    String firstName = nameParts[0];
                    String middleName = nameParts[1];
                    String lastName = nameParts[2];
                    System.out.printf("%s., %s %s.%n", lastName.charAt(0), firstName, middleName.charAt(0));
                    break;
                }
            case 2:
                {
                    // Full name with first and last name (no middle name)
                    String firstName = nameParts[0];
                    String lastName = nameParts[1];
                    System.out.printf("%s., %s%n", lastName.charAt(0), firstName);
                    break;
                }
            default:
                System.out.println("Please enter a valid full name with at least a first and last name.");
                break;
        }
        scanner.close();
    }
}