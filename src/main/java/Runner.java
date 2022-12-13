import input.model.DeclareModel;

import java.io.File;
import java.io.IOException;

public class Runner {

    public static void main(String[] args) throws IOException {
        //Step 1: We read the declarative Model
        DeclareModel model = new DeclareModel("src" + File.separator + "main" + File.separator + "resources" + File.separator + "input" + File.separator + "newDeclare.decl");
        System.out.println(model);
        System.out.println();
        System.out.println();

        /*Step 3: We create the LTL formula
        Map<String, Activity> activities = model.getActivities();
        ArrayList<DeclareConstraint> constraints = model.getDeclareConstraints();

        DeclConst2LTL translator = new DeclConst2LTL();
        for (DeclareConstraint constraint : constraints) {
            String string = constraint.getConstraintString();
            String name = (string.split("\\[")[0]);
            String activationActivity = constraint.getActivationActivity();
            String targetActivity = constraint.getTargetActivity();
            System.out.println(name + " translated to -> " + translator.translate(name, activationActivity, targetActivity));


            Activity activeActivity = activities.get(constraint.getActivationActivity());
            //Activity passiveActivity = activities.get(constraint.getTargetActivity());

            String activeCondition = constraint.getActivationCondition();

            if (activeCondition != null) {
                String tokens[] = activeCondition.replace(" ", "").split("\\.");
                System.out.println(tokens[0] + "    " + tokens[1]);
            }

            System.out.println(constraint.getTargetCondition());*/
        //translator.translate("");



        /*Step 4: We read the Log file based on the model
        LogFile log = new LogFile("resources" + File.separator + "input" + File.separator + "example-log.xes", model);
        System.out.println(log);
        */


        //Intermediate steps:
        //- We create automaton for LTL formula
        //- We create automaton for each trace
        //- We compare the two automatons and create the pddl files


        /*Step 5: We execute the planner on the pddl files
        Step 6: We translate the alignment to readable constraints
        TODO: PDDL to Alignment, FD or FF? PDDL version compatibility, minor fixes
        //Calling Planner on created PDDL files
        FastDownwardRunner.executeScript();

        Planner planner = new Planner();
        String src = "resources" + File.separator + "pddls" + File.separator;

        CodedProblem encodedProblem = planner.readProblem(src + "domain4j.pddl", src + "problem4j.pddl");

        if (encodedProblem !=null && encodedProblem.isSolvable()){
            Plan plan = planner.search(encodedProblem);
            planner.writePlan(encodedProblem, plan, 1);
        } else{
            System.out.println("Problem not solvable");
        }*/
    }
}