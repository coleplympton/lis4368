import java.util.Scanner;

public class Methods
{
    public static void getRequirements()
    {
        System.out.println("Author: Cole Plympton");
        System.out.println("Program Requirements:");
        System.out.println("1. Program swaps two user-entered floating point values.");
        System.out.println("2. Create at least two user-defined methods: getRequirements() and numberSwap().");
        System.out.println("3. Must perform data validation: numbers must be floats.");
        System.out.println("4. Print numbers before/after swapping.\n");
    }

    // Non-value-returning method accepts int array arg (static requires no object)
    public static void numberSwap()
    {
        Scanner sc = new Scanner(System.in);
        float num1 = 0.0f;
        float num2 = 0.0f;
        float temp = 0.0f;

        // Prompt user
        // hasNextFloat(): returns true if next token in scanner's input can be interpreted as float value
        System.out.print("Enter num1: ");
        while (!sc.hasNextFloat())
        {
            System.out.println("Invalid input!");
            sc.next(); // Important! If omitted, will go into infinite loop on invalid input!
            System.out.print("Please try again. Enter num1: ");
        }
        num1 = sc.nextFloat(); // Valid input

        System.out.print("Enter num2: ");
        while (!sc.hasNextFloat())
        {
            System.out.println("Invalid input!");
            sc.next(); // Important! If omitted, will go into infinite loop on invalid input!
            System.out.print("Please try again. Enter num2: ");
        }
        num2 = sc.nextFloat(); // Valid input

        System.out.println("\nBefore swap:");
        System.out.println("num1 = " + num1);
        System.out.println("num2 = " + num2);

        // Swap values
        temp = num1;
        num1 = num2;
        num2 = temp;

        System.out.println("\nAfter swap:");
        System.out.println("num1 = " + num1);
        System.out.println("num2 = " + num2);

        sc.close(); // Close scanner
    }
}
