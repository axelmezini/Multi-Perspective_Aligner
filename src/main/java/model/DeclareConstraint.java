package model;

import jdk.jshell.JShell;
import jdk.jshell.SnippetEvent;

import java.util.*;

public class DeclareConstraint {

    private final String constraintString;
    private final DeclareTemplate template;
    private final String activationActivity, activationConditionString;
    private final String targetActivity, targetConditionString;
    private final ArrayList<Condition> activationConditionsList, targetConditionsList;

    public DeclareConstraint(String constraintString, DeclareTemplate template, String activationActivity,
                             String activationCondition, String targetActivity, String targetCondition) {
        super();
        this.constraintString = constraintString;
        this.template = template;
        this.activationActivity = activationActivity;
        this.activationConditionString = activationCondition;
        this.targetActivity = targetActivity;
        this.targetConditionString = targetCondition;
        this.activationConditionsList = new ArrayList<>();
        this.targetConditionsList = new ArrayList<>();
    }

    public void assignConditionsToAttributes(Map<String, Activity> activities) {
        Activity activator = activities.get(activationActivity);
        Activity target = activities.get(targetActivity);
        assignToAttribute(activator, activationConditionString, activationConditionsList);
        assignToAttribute(target, targetConditionString, targetConditionsList);
    }

    private void assignToAttribute(Activity activity, String conditionString, ArrayList<Condition> activityConditionList) {
        if (activity != null) {
            ArrayList<String> subConditionsStrings = createConditionsStrings(conditionString);
            for (String subConditionString : subConditionsStrings) {
                Activity.Attribute attribute = activity.getAttribute(subConditionString.split("[. ]")[1]);
                Condition newCondition = new Condition(attribute.getType(), subConditionString);
                activityConditionList.add(newCondition);
                attribute.addCondition(newCondition);
            }
        }
    }

    private ArrayList<String> createConditionsStrings(String conditionString) {
        ArrayList<String> stringsList = new ArrayList<>();
        if (conditionString != null) {
            String[] conditionStrings = conditionString.replaceAll("[)(]", "").split(" and | or | AND | OR ");
            for (String subCondition : conditionStrings) {
                if (subCondition.contains("!=")) {
                    conditionString = conditionString.replace(subCondition, evaluateNotEqualCondition(stringsList, subCondition));
                } else {
                    stringsList.add(subCondition);
                }
            }
        }
        return stringsList;
    }

    private String evaluateNotEqualCondition(ArrayList<String> list, String condition) {
        String conditionLeft = condition.replaceAll("!=", "<");
        String conditionRight = condition.replaceAll("!=", ">");
        list.add(conditionLeft);
        list.add(conditionRight);
        return "(" + conditionLeft + " or " + conditionRight + ")";
    }

    public TreeMap<String, ArrayList<String>> defineAcceptedPartitions(Map<String, Activity> activities) {
        if (activationConditionString != null) {
            return evaluateAcceptedPartitions(activationConditionString, activationConditionsList, activities.get(activationActivity).getPartitions());
        }
        if (targetConditionString != null) {
            return evaluateAcceptedPartitions(targetConditionString, targetConditionsList, activities.get(targetActivity).getPartitions());
        }
        return null;
    }

    private TreeMap<String, ArrayList<String>> evaluateAcceptedPartitions(String conditionString, ArrayList<Condition> conditionsList, TreeMap<String, ArrayList<String>> partitions) {
        TreeMap<String, ArrayList<String>> acceptedPartitions = new TreeMap<>();
        for (Map.Entry<String, ArrayList<String>> partition : partitions.entrySet()) {
            String newCondition = conditionString;
            for (Condition condition : conditionsList) {
                newCondition = newCondition.replace(condition.getString(), isConditionContained(condition, partition.getValue()));
            }
            newCondition = newCondition.replace("and", "&&").replace("or", "||");
            JShell js = JShell.create();

            List<SnippetEvent> list = js.eval(newCondition);
            if (Boolean.parseBoolean(list.get(0).value())) {
                acceptedPartitions.put(partition.getKey(), partition.getValue());
            }
            js.close();
        }
        return acceptedPartitions;
    }

    private String isConditionContained(Condition condition, ArrayList<String> partition) {
        if (condition.getValues().isEmpty()) {
            String expression = condition.getString().split("\\.")[1];
            String[] expressionTokens = expression.split(" ");
            for (String subPartition : partition) {
                if (subPartition.contains(expressionTokens[0])) {
                    String[] subPartitionTokens = subPartition.split(" ");
                    return String.valueOf(condition.isNumericContained(subPartitionTokens));
                }
            }
        } else {
            for (String subPartition : partition) {
                if (!subPartition.contains("<")) {
                    return String.valueOf(condition.isEnumContained(subPartition));
                }
            }
        }
        return "not implemented";
    }






    @Override
    public String toString() {
        return "[" + constraintString + " template=" + template
                + ", activationActivity=" + activationActivity + ", activationCondition=" + activationConditionString
                + ", targetActivity=" + targetActivity + ", targetCondition=" + targetConditionString + "]\n";
    }

    public String getConstraintString() {
        return constraintString;
    }

    public String getActivationActivity() {
        return activationActivity;
    }

    public String getTargetActivity() {
        return targetActivity;
    }

    public String getActivationConditionString() {
        return activationConditionString;
    }

    public String getTargetConditionString() {
        return targetConditionString;
    }

    public ArrayList<Condition> getActivationConditionsList() {
        return activationConditionsList;
    }

    public ArrayList<Condition> getTargetConditionsList() {
        return targetConditionsList;
    }
}