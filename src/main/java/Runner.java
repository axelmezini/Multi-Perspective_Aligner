import jdk.jshell.SnippetEvent;
import model.DeclareConstraint;
import model.DeclareModel;
import org.logicng.io.parsers.ParserException;

import javax.script.ScriptException;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import jdk.jshell.JShell;

public class Runner {

    public static void main(String[] args) throws IOException, ParserException, ScriptException {
        //Step 1: We read the declarative Model
        DeclareModel model = new DeclareModel("src" + File.separator + "main" + File.separator + "resources" + File.separator + "input" + File.separator + "newDeclare.decl");
        model.createPartitions();
        System.out.println(model);
        System.out.println();
        System.out.println();

        for (DeclareConstraint constraint : model.getDeclareConstraints()) {
            TreeMap<String, ArrayList<String>> partitions = constraint.defineAcceptedPartitions(model.getActivities());
            System.out.println("Following constraint: " + constraint.getConstraintString() + " accepts these partitions:\n");
            if (partitions != null) {
                for (Map.Entry<String, ArrayList<String>> partition : partitions.entrySet()) {
                    System.out.println(partition.getKey() + " " + partition.getValue());
                }
            }
        }





        /*Step 2: We create the LTL formula
        DeclareToLTL toLTLTranslator = new DeclareToLTL(model);
        toLTLTranslator.translateModel();




        /*Step 3: We read the Log file based on the model
        LogFile log = new LogFile("resources" + File.separator + "input" + File.separator + "example-log.xes", model);
        System.out.println(log);



            //Intermediate steps:
            //- We create automaton for LTL formula
            //- We create automaton for each trace
            //- We compare the two automatons and create the pddl files


        */
    }

}