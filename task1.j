import java.util.Random;
import java.util.Scanner;

public class GuessingGame {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        Random random = new Random();

        int minRange = 1;
        int maxRange = 100;
        int maxAttempts = 10;
        int score = 0;

        boolean playAgain = true;

        while (playAgain) {
            int secretNumber = random.nextInt(maxRange - minRange + 1) + minRange;
            int attempts = 0;
            boolean guessedIt = false;

            System.out.println("Yo, welcome to the Guessing Game!");
            System.out.println("Guess a number between " + minRange + " and " + maxRange);

            while (attempts < maxAttempts && !guessedIt) {
                System.out.print("Your guess: ");
                int userGuess = scanner.nextInt();
                attempts++;

                if (userGuess == secretNumber) {
                    System.out.println("Hell yeah! You got it in " + attempts + " tries.");
                    guessedIt = true;
                    score++;
                } else if (userGuess < secretNumber) {
                    System.out.println("Too low, my dude! Try again.");
                } else {
                    System.out.println("Too high, bro! Give it another shot.");
                }
            }

            if (!guessedIt) {
                System.out.println("Sorry, you hit the limit. The answer was: " + secretNumber);
            }

            System.out.print("Wanna go for another round? (yes/no): ");
            String playAgainInput = scanner.next().toLowerCase();
            playAgain = playAgainInput.equals("yes");

            if (playAgain) {
                System.out.println("Alright, let's roll again!");
            } else {
                System.out.println("Thanks for playing, dude! Your total score is: " + score);
            }
        }

        scanner.close();
    }
}
