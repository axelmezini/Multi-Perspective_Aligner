package model;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class DeclareModel {

    private final Map<String, Activity> activities;
    private final ArrayList<DeclareConstraint> declareConstraints;

    public DeclareModel(String declareModelPath) throws FileNotFoundException {
        this.activities = new HashMap<>();
        this.declareConstraints = new ArrayList<>();
        parseModel(new File(declareModelPath));
    }

    private void parseModel(File declareFile) throws FileNotFoundException {
        evaluateLines(readFile(initializeSortingMap(), declareFile));
    }

    private HashMap<String, ArrayList<String>> initializeSortingMap() {
        HashMap<String, ArrayList<String>> lines = new HashMap<>();
        lines.put("activityLines", new ArrayList<>());
        lines.put("bindingLines", new ArrayList<>());
        lines.put("attributeDefLines", new ArrayList<>());
        lines.put("constraintLines", new ArrayList<>());
        return lines;
    }

    private HashMap<String, ArrayList<String>> readFile(HashMap<String, ArrayList<String>> lines, File declareFile) throws FileNotFoundException {
        Scanner scanner = new Scanner(declareFile);
        while (scanner.hasNextLine()) {
            String line = scanner.nextLine();
            if (isActivityLine(line)) { lines.get("activityLines").add(line); }
            else if (isBindingLine(line)) { lines.get("bindingLines").add(line); }
            else if (!line.contains("|")) { lines.get("attributeDefLines").add(line); }
            else if (Pattern.compile("\\w+(\\[.*\\]) \\|").matcher(line).find()) { lines.get("constraintLines").add(line); }
        }
        scanner.close();
        return lines;
    }

    private boolean isActivityLine(String line) {
        return line.startsWith("activity") && !line.contains(":");
    }

    private boolean isBindingLine(String line) {
        return line.startsWith("bind") && line.substring(6).contains(":");
    }

    private void evaluateLines(Map<String, ArrayList<String>> lines) {
        for (String line : lines.get("activityLines")) { parseActivity(line); }
        for (String line : lines.get("bindingLines")) { parseBinding(line); }
        for (String line : lines.get("attributeDefLines")) { parseAttributeDefinition(line); }
        for (String line : lines.get("constraintLines")) {
            DeclareConstraint constraint = parseConstraint(line);
            if (constraint != null) {
                constraint.assignConditionsToAttributes(activities);
                declareConstraints.add(constraint); }
        }
    }

    private void parseActivity(String line) {
        String activityName = line.split("activity ")[1];
        activities.put(activityName, new Activity(activityName));
    }

    private void parseBinding(String line) {
        String binding = line.split("bind ")[1];
        bindAttributesToActivity(activities.get(extractActivityName(binding)), extractAttributesNames(binding));
    }

    private String extractActivityName(String activityLinePart) {
        return activityLinePart.split(":")[0];
    }

    private String[] extractAttributesNames(String attributesLinePart) {
        return attributesLinePart.split(":")[1].split(",");
    }

    private void bindAttributesToActivity(Activity activity, String[] attributes) {
        for (String attribute : attributes) {
            activity.addAttribute(attribute.replace(" ",""));
        }
    }

    private void parseAttributeDefinition(String line) {
        String[] attributeParts = line.split(":");
        defineAttribute(attributeParts[0], attributeParts[1]);
    }

    private void defineAttribute(String attributeName, String attributeConstraint) {
        if (attributeConstraint.contains("integer")) {
            String[] bounds = attributeConstraint.split("between")[1].split("and");
            for (Activity.Attribute attribute : findInvolvedAttributes(attributeName)) {
                attribute.setBounds("integer", bounds[0].replace(" ", ""), bounds[1].replace(" ", ""));
            }
        } else if (attributeConstraint.contains("float")) {
            String[] bounds = attributeConstraint.split("between")[1].split("and");
            for (Activity.Attribute attribute : findInvolvedAttributes(attributeName)) {
                attribute.setBounds("float", bounds[0].replace(" ", ""), bounds[1].replace(" ", ""));
            }
        }
        else {
            String[] elements = attributeConstraint.replace(" ", "").split(",");
            for (Activity.Attribute attribute : findInvolvedAttributes(attributeName)) {
                attribute.setValues("enum", Arrays.asList(elements));
            }
        }
    }

    private ArrayList<Activity.Attribute> findInvolvedAttributes(String attributeName) {
        ArrayList<Activity.Attribute> attributes = new ArrayList<>();
        for (Map.Entry<String, Activity> entry : activities.entrySet()) {
            for (Activity.Attribute attribute : entry.getValue().getAttributes()) {
                if (attribute.getName().equals(attributeName)) {
                    attributes.add(attribute);
                }
            }
        }
        return attributes;
    }

    private DeclareConstraint parseConstraint(String line) {
        Matcher mBinary = Pattern.compile("(.*)\\[(.*), (.*)\\] \\|(.*) \\|(.*) \\|(.*)").matcher(line);
        Matcher mUnary = Pattern.compile(".*\\[(.*)\\] \\|(.*) \\|(.*)").matcher(line);

        if(mBinary.find()) {
            return constructBinaryConstraint(mBinary, line);
        } else if(mUnary.find()) {
            return constructUnaryConstraint(mUnary, line);
        } else {
            return null;
        }
    }

    private DeclareConstraint constructUnaryConstraint(Matcher mUnary, String constraintString) {
        return new DeclareConstraint(constraintString, DeclareTemplate.getByTemplateName(mUnary.group(0)),
                mUnary.group(1), mUnary.group(2).isBlank()? null : mUnary.group(2), null,null);
    }

    private DeclareConstraint constructBinaryConstraint(Matcher mBinary, String constraintString) {
        DeclareTemplate template = DeclareTemplate.getByTemplateName(mBinary.group(1));
        String activationActivity = "", targetActivity = "";

        if(template.getReverseActivationTarget()) {
            targetActivity = mBinary.group(2);
            activationActivity = mBinary.group(3);
        } else {
            activationActivity = mBinary.group(2);
            targetActivity = mBinary.group(3);
        }
        return new DeclareConstraint(constraintString, template, activationActivity, mBinary.group(4).isBlank()? null : mBinary.group(4),
                targetActivity, mBinary.group(5).isBlank()? null : mBinary.group(5));
    }

    public void createPartitions() {
        for (Map.Entry<String, Activity> activity : activities.entrySet()) {
            activity.getValue().decomposeAttributes();
        }
    }

    @Override
    public String toString() {
        StringBuilder builder = new StringBuilder("This model contains " + activities.size() + " activities:\n\n");
        for (Map.Entry<String, Activity> activity : activities.entrySet()) {
            builder.append(activity);
        }
        builder.append("This model contains following constraints:\n");
        for (DeclareConstraint constraint : declareConstraints) {
            builder.append(constraint);
        }
        return builder.toString();
    }

    public Map<String, Activity> getActivities() {
        return activities;
    }

    public ArrayList<DeclareConstraint> getDeclareConstraints() {
        return declareConstraints;
    }
}