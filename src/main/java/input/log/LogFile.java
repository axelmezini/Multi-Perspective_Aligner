package input.log;

import input.model.Activity;
import input.model.DeclareModel;
import org.deckfour.xes.in.XesXmlParser;
import org.deckfour.xes.model.XLog;
import org.deckfour.xes.model.XTrace;
import java.io.File;
import java.util.ArrayList;
import java.util.Map;

public class LogFile {

    private final ArrayList<Trace> traces;

    public LogFile(String logFilePath, DeclareModel declareModel) {
        this.traces = findTraces(new File(logFilePath), declareModel.getActivities());
    }

    public static ArrayList<Trace> findTraces(File logFile, Map<String, Activity> activityMap) {
        XLog xlog = null;

        XesXmlParser parser = new XesXmlParser();
        if (parser.canParse(logFile)) {
            try {
                xlog = parser.parse(logFile).get(0);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        ArrayList<Trace> newTraces = new ArrayList<>();
        if (xlog != null) {
            for (XTrace trace : xlog) {
                newTraces.add(new Trace(trace, activityMap));
            }
        }
        return newTraces;
    }

    @Override
    public String toString() {
        StringBuilder builder = new StringBuilder("This log contains " + traces.size() + " traces:\n");
        for (Trace trace : traces) {
            builder.append(trace.toString()).append("\n");
        }
        return builder.toString();
    }
}