package input.model;

public class Interval {

    private String type;

    private double end;
    private boolean closedLeft;
    private boolean closedRight;

    public Interval(String constraint) {
        extractConstraint(constraint);
    }

    private void extractConstraint(String constraint) {
        String expr = constraint.replace(" ", "");
        if (expr.contains("<=")) {
            lessEqual(expr);
        } else if (expr.contains(">=")) {
            greaterEqual(expr);
        } else if (expr.contains("=")) {
            equal(expr);
        } else if (expr.contains("<")) {
            less(expr);
        } else if (expr.contains(">")) {
            greater(expr);
        }
    }

    private void lessEqual(String expr) {
        this.start = Double.NEGATIVE_INFINITY;
        this.end = Double.parseDouble(expr.split("<=")[1]);
        this.closedLeft = false;
        this.closedRight = true;
    }

    private void greaterEqual(String expr) {
        this.start = Double.parseDouble(expr.split(">=")[1]);
        this.end = Double.POSITIVE_INFINITY;
        this.closedLeft = true;
        this.closedRight = false;
    }

    private void equal(String expr) {
        this.start = Double.parseDouble(expr.split("=")[1]);
        this.end = Double.parseDouble(expr.split("=")[1]);
        this.closedLeft = true;
        this.closedRight = true;
    }

    private void less(String expr) {
        this.start = Double.NEGATIVE_INFINITY;
        this.end = Double.parseDouble(expr.split("<")[1]);
        this.closedLeft = false;
        this.closedRight = false;
    }

    private void greater(String expr) {
        this.start = Double.parseDouble(expr.split(">")[1]);
        this.end = Double.POSITIVE_INFINITY;
        this.closedLeft = false;
        this.closedRight = false;
    }

    @Override
    public boolean equals(Object o) {
        if (o instanceof Interval newInterval) {
            if (this.start != newInterval.getStart()) {
                return false;
            } else if (this.end != newInterval.getEnd()) {
                return false;
            } else if (this.isClosedLeft() != newInterval.isClosedLeft()) {
                return false;
            } else return this.isClosedRight() == newInterval.isClosedRight();
        }
        return false;
    }

    @Override
    public String toString() {
        return getStartBracket() + start + ", " + end + getEndBracket();
    }

    private String getStartBracket() {
        return closedLeft? "[" : "(";
    }

    private String getEndBracket() {
        return closedRight? "]" : ")";
    }

    public double getStart() {
        return start;
    }

    private double start;

    public double getEnd() {
        return end;
    }

    public boolean isClosedLeft() {
        return closedLeft;
    }

    public boolean isClosedRight() {
        return closedRight;
    }

    public void setEnd(double end) {
        this.end = end;
    }

    public void setClosedLeft(boolean closedLeft) {
        this.closedLeft = closedLeft;
    }

    public void setClosedRight(boolean closedRight) {
        this.closedRight = closedRight;
    }

    public void setStart(double start) {
        this.start = start;
    }
}