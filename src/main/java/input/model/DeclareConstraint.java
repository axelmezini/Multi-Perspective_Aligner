package input.model;

import java.util.Arrays;
import java.util.Map;

public class DeclareConstraint {

    private final String constraintString;
    private final DeclareTemplate template;
    private final String activationActivity;
    private final String activationCondition;
    private final String targetActivity;
    private final String targetCondition;

    public DeclareConstraint(String constraintString, DeclareTemplate template, String activationActivity,
                             String activationCondition, String targetActivity, String targetCondition) {
        super();
        this.constraintString = constraintString;
        this.template = template;
        this.activationActivity = activationActivity;
        this.activationCondition = activationCondition;
        this.targetActivity = targetActivity;
        this.targetCondition = targetCondition;
    }

    public void assignToActivity(Map<String, Activity> activities) {
        Activity activator = activities.get(activationActivity);
        assignToAttribute(activator, activationCondition);
        Activity target = activities.get(targetActivity);
        if (target != null) {
            assignToAttribute(target, targetCondition);
        }
    }

    private void assignToAttribute(Activity activity, String condition) {
        if (condition != null) {
            String[] tokens = condition.replaceAll("[)(]", "").toLowerCase().split(" and | or ");
            for (String string : tokens) {
                Activity.Attribute attribute;
                if (isEnumConstraint(condition)) {
                    attribute = activity.getAttribute(string.split("\\.")[1].split(" is not | is | not in | in ")[0]);
                } else {
                    attribute = activity.getAttribute(string.replace(" ", "").split("[.<>=!]")[1]);
                }
                attribute.createInterval(string);
            }
        }
    }

    private boolean isEnumConstraint(String string) {
        return string.contains("is") || string.contains("in");
    }

    @Override
    public String toString() {
        return "[" + constraintString + " template=" + template
                + ", activationActivity=" + activationActivity + ", activationCondition=" + activationCondition
                + ", targetActivity=" + targetActivity + ", targetCondition=" + targetCondition + "]\n";
    }

    public DeclareTemplate getTemplate() {
        return template;
    }
}