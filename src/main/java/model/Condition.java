package model;

import java.util.ArrayList;
import java.util.Arrays;

public class Condition {

    private final String string;
    private double start, end;
    private boolean closedLeft, closedRight, included;
    private ArrayList<String> values;

    public Condition(String attributeType, String conditionString) {
        this.string = conditionString;
        evaluateCondition(attributeType);
    }

    private void evaluateCondition(String type) {
        if (type.equals("enum")) {
            evaluateEnumCondition();
        } else {
            evaluateNumericCondition();
        }
    }

    private void evaluateEnumCondition() {
        String valuesString = string.split(" is not | not in | is | in ")[1];
        String[] values = valuesString.replace(" ", "").split(",");
        initializeAcceptedValues(values, !string.contains(" not "));
    }

    private void initializeAcceptedValues(String[] values, boolean included) {
        this.values = new ArrayList<>(Arrays.asList(values));
        this.included = included;
    }

    private void evaluateNumericCondition() {
        String expr = string.replace(" ", "");
        double number = Double.parseDouble(expr.split("<=|>=|=|<|>")[1]);

        if (string.contains("<=")) {
            initializeInterval(false, Double.NEGATIVE_INFINITY, number,true);
        } else if (string.contains(">=")) {
            initializeInterval(true, number, Double.POSITIVE_INFINITY, false);
        } else if (string.contains("=")) {
            initializeInterval(true, number, number,true);
        } else if (string.contains("<")) {
            initializeInterval(false, Double.NEGATIVE_INFINITY, number, false);
        } else {
            initializeInterval(false, number, Double.POSITIVE_INFINITY, false);
        }
    }

    private void initializeInterval(boolean closedLeft, double start, double end, boolean closedRight) {
        this.closedLeft = closedLeft;
        this.start = start;
        this.end = end;
        this.closedRight = closedRight;
    }

    public boolean isNumericContained(String[] partitionTokens) {
        double partitionStart = Double.parseDouble(partitionTokens[0]);
        double partitionEnd = Double.parseDouble(partitionTokens[4]);

        if (start == Double.NEGATIVE_INFINITY) {
            if (isClosedRight() || partitionTokens[3].equals("<")) {
                return partitionEnd <= end;
            } else {
                return partitionEnd < end;
            }
        } else if (end == Double.POSITIVE_INFINITY) {
            if (isClosedLeft() || partitionTokens[1].equals("<")) {
                return start <= partitionStart;
            } else {
                return start < partitionStart;
            }
        } else {
            return start <= partitionStart && partitionEnd <= end;
        }
    }

    public boolean isEnumContained(String value) {
        return (included && values.contains(value)) || (!included && !values.contains(value));
    }

    public boolean equals(Object o) {
        if (o instanceof Condition condition) {
            return string.equals(condition.getString());
        }
        return false;
    }

    @Override
    public String toString() {
        String leftBracket = closedLeft? "[" : "(";
        String rightBracket = closedRight? "]" : ")";
        return leftBracket + start + ", " + end + rightBracket;
    }

    public String getString() {
        return string;
    }

    public ArrayList<String> getValues() {
        return values;
    }

    public boolean isIncluded() {
        return included;
    }

    public double getStart() {
        return start;
    }

    public void setStart(double start) {
        this.start = start;
    }

    public double getEnd() {
        return end;
    }

    public void setEnd(double end) {
        this.end = end;
    }

    public boolean isClosedLeft() {
        return closedLeft;
    }

    public void setClosedLeft(boolean closedLeft) {
        this.closedLeft = closedLeft;
    }

    public boolean isClosedRight() {
        return closedRight;
    }

    public void setClosedRight(boolean closedRight) {
        this.closedRight = closedRight;
    }
}