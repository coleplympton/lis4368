import java.util.Scanner;
import java.io.File;

public class Methods {
    public static void getRequirements()
    {
        System.out.println("Developer: Cole Plympton");
        System.out.println("Project lists files and subdirectories of user-specified directory");

        System.out.println();
    }

    public static void directoryInfo()
    {
        String myDir = "";
        Scanner sc = new Scanner(System.in);
        
        System.out.print("Please enter directory path: ");
        myDir = sc.nextLine();

        File directoryPath = new File(myDir);

        try {
            File[]files = directoryPath.listFiles();

            for(int i=0; i < files.length; i++)
            {
                System.out.println("Name: " + files[i].getName());
                System.out.println("Path: " + files[i].getAbsolutePath());
                System.out.println("Size (Bytes): " + files[i].length()/1024);
                System.out.println("Size (KB): " + files[i].length()/(1024*1024));
                System.out.println("Size (MB): " + files[i].length()/(1024*1024));
                System.out.println();

            }
        }
        catch(Exception e)
        {
            System.out.println("Error: " + e.getMessage());
        }

        sc.close();
    }

}
