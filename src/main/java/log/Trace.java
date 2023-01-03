package log;

import model.Activity;
import org.deckfour.xes.extension.std.XConceptExtension;
import org.deckfour.xes.model.XEvent;
import org.deckfour.xes.model.XTrace;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class Trace {

    private final ArrayList<Event> events = new ArrayList<>();

    public Trace(XTrace trace, Map<String, Activity> activityMap) {
        String name = XConceptExtension.instance().extractName(trace);//TODO: serve?
        for (XEvent event : trace) {
            Activity relatedActivity = null;
            for (Map.Entry<String, Activity> element : activityMap.entrySet()) {
                if (XConceptExtension.instance().extractName(event).equals(element.getKey())) {
                    relatedActivity = element.getValue();
                }
            }
            events.add(new Event(event, relatedActivity));
        }
    }

    @Override
    public String toString() {
        StringBuilder builder = new StringBuilder("\tThis trace contains " + events.size() + " events:\n\t\t[");
        for (Event event : events) {
            builder.append(event.getName()).append(event.getAttributes()).append(", ");
        }
        return builder.substring(0, builder.length() - 2) + "]";
    }

    public class Event {
        private final String name;
        private final Map<String, String> attributes;

        public Event(XEvent event, Activity modelActivity) {
            this.name = XConceptExtension.instance().extractName(event);
            this.attributes = new HashMap<>();
            if (modelActivity != null) {
                for (Activity.Attribute element : modelActivity.getAttributes()) {
                    attributes.put(element.getName(), event.getAttributes().get(element.getName()).toString());
                }
            }
        }

        public String getName() {
            return name;
        }

        public Map<String, String> getAttributes() {
            return attributes;
        }
    }
}