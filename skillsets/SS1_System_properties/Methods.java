public class Methods
{
    // Create Method without returning any value (without object)
    public static void getRequirements()
    {
        // Display operational messages
        System.out.println("Developer: Cole Plympton");
        System.out.println("Program lists system properties.");
        
        System.out.println();  // Print blank line
    }

    public static void systemProperties()
    {
        System.out.println("System file path separator: " + System.getProperty("file.separator"));
        System.out.println("Java class path: " + System.getProperty("java.class.path"));
        System.out.println("Java installation directory: " + System.getProperty("java.home"));
        System.out.println("Java vendor name: " + System.getProperty("java.vendor"));
        System.out.println("Java vendor URL: " + System.getProperty("java.vendor.url"));
        System.out.println("Java version: " + System.getProperty("java.version"));
        System.out.println("JRE version: " + System.getProperty("java.specification.version"));
        System.out.println("OS architecture: " + System.getProperty("os.arch"));
        System.out.println("OS name: " + System.getProperty("os.name"));
        System.out.println("OS version: " + System.getProperty("os.version"));
        System.out.println("Path separator used in Java class path: " + System.getProperty("path.separator"));
        System.out.println("User working directory: " + System.getProperty("user.dir"));
        System.out.println("User home directory: " + System.getProperty("user.home"));
        System.out.println("User account name: " + System.getProperty("user.name"));
    }
}

