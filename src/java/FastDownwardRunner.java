import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;

public class FastDownwardRunner {

    public static void executeScript() throws IOException {

            //Needs python, works
            for (int i = 1; i < 2; i++) {
                String commandArgs = "py -3.11 " +
                        "." + File.separator + "downward-main" + File.separator + "fast-downward.py " +
                        "--plan-file \"." + File.separator + "output" + File.separator + "FD - Plan" + i + ".txt\" " +
                        "resources" + File.separator + "pddls" + File.separator + "Domain4j.pddl " +    //"." + File.separator + "pddls" + File.separator + "domain" + i + ".pddl " +
                        "resources" + File.separator + "pddls" + File.separator + "Problem4j.pddl " +    //"." + File.separator + "pddls" + File.separator + "problem" + i + ".pddl " +
                        "--evaluator \"hff=ff()\" " +
                        "--evaluator \"hcea=cea()\" " +
                        "--search \"lazy_greedy([hff, hcea], preferred=[hff, hcea])\"";

            /* No need of python, does not work
            String commandArgs = "C:\\Users\\Axel\\Desktop\\Axel\\Workspace\\IdeaProjects\\MyAligner\\downward-main\\builds\\release\\bin\\downward.exe" +
                    " --evaluator \"hff=ff()\" --evaluator \"hcea=cea()\" --search \"lazy_greedy([hff, hcea], preferred=[hff, hcea])\" --internal-plan-file \".\\result\\plan1.txt\" output.sas";
            */

            //String commandArgs = "";

            System.out.println(commandArgs);
            Process p = Runtime.getRuntime().exec(commandArgs);

            String s;
            BufferedReader stdInput = new BufferedReader(new InputStreamReader(p.getInputStream()));
            BufferedReader stdError = new BufferedReader(new InputStreamReader(p.getErrorStream()));

            // read the output from the command
            System.out.println("Here is the standard output of the command:\n");
            while ((s = stdInput.readLine()) != null) {
                System.out.println(s);
            }

            // read any errors from the attempted command
            System.out.println("Here is the standard error of the command (if any):\n");
            while ((s = stdError.readLine()) != null) {
                System.out.println(s);
            }
        }
    }
}