import fr.uga.pddl4j.encoding.CodedProblem;
import fr.uga.pddl4j.heuristics.relaxation.Heuristic;
import fr.uga.pddl4j.parser.ErrorManager;
import fr.uga.pddl4j.planners.ProblemFactory;
import fr.uga.pddl4j.planners.Statistics;
import fr.uga.pddl4j.planners.statespace.AbstractStateSpacePlanner;
import fr.uga.pddl4j.planners.statespace.search.strategy.EnforcedHillClimbing;
import fr.uga.pddl4j.planners.statespace.search.strategy.StateSpaceStrategy;
import fr.uga.pddl4j.util.Plan;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;

public final class Planner extends AbstractStateSpacePlanner {

    public Planner() {
        super();
    }

    public CodedProblem readProblem(String domainFile, String problemFile) throws IOException {
        ProblemFactory factory = ProblemFactory.getInstance();
        long beginParse = System.currentTimeMillis();
        ErrorManager errorManager = factory.parse(domainFile, problemFile);
        getStatistics().setTimeToParse(System.currentTimeMillis() - beginParse);

        if (errorManager.isEmpty()) {
            System.out.println("Parsing domain and problem completed");
            long beginEncode = System.currentTimeMillis();
            CodedProblem problem = factory.encode();
            getStatistics().setTimeToEncode(System.currentTimeMillis() - beginEncode);
            return problem;
        } else {
            errorManager.printAll();
            return null;
        }
    }

    public void writePlan(CodedProblem encodedProblem, Plan plan, int traceNr) {
        try (PrintWriter writer = new PrintWriter("output" + File.separator + "FF - Plan" + traceNr + ".txt")) {
            writer.println("The following Plan was found:\n" + encodedProblem.toString(plan) + "with an overall cost of: " + plan.cost() +
                    "\n\nTime and memory usage:\n\n" + buildStats());
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
    }

    @Override
    public Plan search(CodedProblem encodedProblem) {
        StateSpaceStrategy ehc = new EnforcedHillClimbing (1000, Heuristic.Type.AJUSTED_SUM , 1);
        long begin = System.currentTimeMillis();
        Plan plan = ehc.searchPlan(encodedProblem);
        getStatistics().setTimeToSearch(System.currentTimeMillis() - begin);
        return plan;
    }


    private String buildStats() {
        Statistics stats = getStatistics();
        return "Time spent: \n" + stats.getTimeToParse()/1000.0 + " seconds parsing.\n" +
                stats.getTimeToEncode()/1000.0 + " seconds encoding.\n" + stats.getTimeToSearch()/1000.0 + " seconds searching.\n" +
                "Total time spent: " + (stats.getTimeToParse() + stats.getTimeToEncode() + stats.getTimeToSearch())/1000.0 + " seconds.\n\n";
    }
}