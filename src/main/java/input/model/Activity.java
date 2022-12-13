package input.model;

import java.util.*;

public class Activity {
    private final String name;
    private final ArrayList<Attribute> attributes;
    private TreeMap<String, ArrayList<String>> partitions;

    public Activity(String name) {
        this.name = name;
        this.attributes = new ArrayList<>();
    }

    public void intersect(ArrayList<ArrayList<String>> atoms) {
        ArrayList<ArrayList<String>> temporary = new ArrayList<>();
        for (String atom : atoms.get(0)) {
            temporary.add(new ArrayList<>(Collections.singleton(atom)));
        }
        for (int attrCount = 1; attrCount < atoms.size(); attrCount++) {
            int attributeLength = atoms.get(attrCount).size();
            if (attributeLength > 0) {
                extendArray(temporary, attributeLength);
                int quotient = temporary.size() / attributeLength;
                for (int i = 0; i < temporary.size(); i++) {
                    temporary.get(i).add(atoms.get(attrCount).get(i / quotient));
                }
            }
        }
        this.partitions = buildPartitionMap(temporary);
    }

    private void extendArray(ArrayList<ArrayList<String>> input, int times) {
        int initialSize = input.size();
        for (int a = 1; a < times; a++) {
            for (int i = 0; i < initialSize; i++) {
                ArrayList<String> line = new ArrayList<>(input.get(i));
                input.add(line);
            }
        }
    }

    private TreeMap<String, ArrayList<String>> buildPartitionMap(ArrayList<ArrayList<String>> listOfLists) {
        TreeMap<String, ArrayList<String>> map = new TreeMap<>();
        int counter = 1;
        for (ArrayList<String> list : listOfLists) {
            map.put("p" + counter, list);
            counter++;
        }
        return map;
    }

    public void addAttribute(String name) {
        Attribute newAttribute = new Attribute(name);
        if (!attributes.contains(newAttribute)) {
            attributes.add(newAttribute);
        }
    }

    @Override
    public String toString() {
        StringBuilder builder = new StringBuilder("I am activity " + getName() + " and my attributes are:");
        for (Attribute attribute : attributes) {
            builder.append(attribute);
        }
        builder.append("The followings are my partitions: ").append(partitions);
        builder.append("\n\n\n");
        return builder.toString();
    }

    public String getName() {
        return name;
    }

    public ArrayList<Attribute> getAttributes() {
        return attributes;
    }

    public Attribute getAttribute(String name) {
        for (Attribute attribute : attributes) {
            if (attribute.getName().equals(name)) {
                return attribute;
            }
        }
        return null;
    }


    public static class Attribute {
        private final String name;
        private String type;
        private double minValue, maxValue;
        private ArrayList<String> values;
        private final ArrayList<Interval> intervals;
        private final ArrayList<Interval> disjointIntervals;

        public Attribute(String name) {
            this.name = name;
            this.intervals = new ArrayList<>();
            this.disjointIntervals = new ArrayList<>();
        }

        public void setBounds(String type, String min, String max) {
            this.type = type;
            if (type.equals("integer")) {
                this.minValue = Integer.parseInt(min);
                this.maxValue = Integer.parseInt(max);
            } else {
                this.minValue = Double.parseDouble(min);
                this.maxValue = Double.parseDouble(max);
            }
            intervals.add(new Interval(this.name + ">=" + this.minValue));
            intervals.add(new Interval(this.name + "<=" + this.maxValue));
        }

        public void setValues(String type, List<String> values) {
            this.type = type;
            this.values = new ArrayList<>(values);
        }

        public void createInterval(String constraint) {
            if (type.equals("enum")) {
                String[] constraintValues = constraint.split(" is not | is | not in | in ")[1].split(", ");
                for (String value : constraintValues) {
                    if (!values.contains(value)) {
                        values.add(value);
                    }
                }
            } else {
                if (constraint.contains("!=")) {
                    String notEqual = constraint.replace(" ", "").split("!=")[1];
                    Interval lowerBound = new Interval( "< " + notEqual);
                    Interval greaterBound = new Interval("> " + notEqual);
                    if (!intervals.contains(lowerBound)) {
                        intervals.add(lowerBound);
                    }
                    if (!intervals.contains(greaterBound)) {
                        intervals.add(greaterBound);
                    }
                } else {
                    Interval newInterval = new Interval(constraint);
                    if (!intervals.contains(newInterval)) {
                        intervals.add(new Interval(constraint));
                    }
                }
            }
        }

        public void decomposeToDisjoint() {
            for (Interval interval : intervals) {
                addToDisjoint(interval);
            }
        }

        public ArrayList<String> createNonOverlappingConditions() {
            ArrayList<String> nonOverLappingConditions = new ArrayList<>();
            for (Interval interval : disjointIntervals) {
                nonOverLappingConditions.add(intervalToCondition(interval));
            }
            return nonOverLappingConditions;
        }

        private String intervalToCondition(Interval interval) {
            StringBuilder condition = new StringBuilder();
            String operatorLeft = interval.isClosedLeft()? "<=" : "<";
            String operatorRight = interval.isClosedRight()? "<=" : "<";
            condition.append(interval.getStart()).append(" ").append(operatorLeft).append(" ").append(name).append(" ").append(operatorRight).append(" ").append(interval.getEnd());
            return condition.toString();
        }

        private void addToDisjoint(Interval interval) {
            if (disjointIntervals.isEmpty()) {
                evaluateFirstInterval(interval);
            } else {
                if (interval.getStart() == Double.NEGATIVE_INFINITY) {
                    int pos = 0;
                    while (disjointIntervals.get(pos + 1).getEnd() < interval.getEnd()) { //to test -> && pos < disjointIntervals.size() - 2
                        pos++;
                    }
                    addLessInterval(interval, pos);
                } else if (interval.getEnd() == Double.POSITIVE_INFINITY) {
                    int pos = disjointIntervals.size() - 1;
                    while (disjointIntervals.get(pos - 1).getStart() > interval.getStart()) { //to test -> && pos > 1
                        pos--;
                    }
                    addGreaterInterval(interval, pos);
                } else {
                    int pos = 0;
                    while (disjointIntervals.get(pos).getEnd() < interval.getEnd() && pos < disjointIntervals.size() - 2) {
                        pos++;
                    }
                    addEqualInterval(interval, pos);
                }
            }
        }

        private void evaluateFirstInterval(Interval interval) {
            if (interval.getStart() == Double.NEGATIVE_INFINITY) {
                if (interval.isClosedRight()) addFirstTwoIntervals("x <= ", "x > ", interval.getEnd());
                else addFirstTwoIntervals("x < ", "x >= ", interval.getEnd());
            } else if (interval.getEnd() == Double.POSITIVE_INFINITY) {
                if (interval.isClosedLeft()) addFirstTwoIntervals("x < ", "x >= ", interval.getStart());
                else addFirstTwoIntervals("x <= ", "x > ", interval.getStart());
            } else {
                addFirstThreeIntervals(interval.getStart());
            }
        }

        private void addFirstTwoIntervals(String first, String second, double limit) {
            disjointIntervals.add(new Interval(first + limit));
            disjointIntervals.add(new Interval(second + limit));
        }

        private void addFirstThreeIntervals(double limit) {
            disjointIntervals.add(new Interval("x < " + limit));
            disjointIntervals.add(new Interval("x = " + limit));
            disjointIntervals.add(new Interval("x > " + limit));
        }

        private void addLessInterval(Interval interval, int pos) {
            Interval intervalBefore = disjointIntervals.get(pos);
            Interval intervalAfter = disjointIntervals.get(pos + 1);
            if (intervalBefore.getEnd() < interval.getEnd()) {
                interval.setStart(intervalBefore.getEnd());
                interval.setClosedLeft(!intervalBefore.isClosedRight());
                if (intervalAfter.getStart() < interval.getEnd()) {
                    intervalAfter.setStart(interval.getEnd());
                    intervalAfter.setClosedLeft(!interval.isClosedRight());
                }
                disjointIntervals.add(++pos, interval);
            } else {
                intervalBefore.setStart(interval.getEnd());
                intervalBefore.setClosedLeft(!interval.isClosedRight());
                disjointIntervals.add(0, interval);
            }
        }

        private void addGreaterInterval(Interval interval, int pos) {
            Interval intervalBefore = disjointIntervals.get(pos - 1);
            Interval intervalAfter = disjointIntervals.get(pos);
            if (intervalAfter.getStart() > interval.getStart()) {
                interval.setEnd(intervalAfter.getStart());
                interval.setClosedRight(!intervalAfter.isClosedLeft());
                if (intervalBefore.getEnd() > interval.getStart()) {
                    intervalBefore.setEnd(interval.getStart());
                    intervalBefore.setClosedRight(!interval.isClosedLeft());
                }
                disjointIntervals.add(pos, interval);
            } else {
                intervalAfter.setEnd(interval.getStart());
                intervalAfter.setClosedRight(!interval.isClosedLeft());
                disjointIntervals.add(disjointIntervals.size(), interval);
            }
        }

        private void addEqualInterval(Interval interval, int pos) {
            if (disjointIntervals.get(pos).getEnd() == interval.getStart()) {
                addToDisjoint(new Interval("x < " + interval.getStart()));
            } else {
                addToDisjoint(new Interval("x < " + interval.getStart()));
                addToDisjoint(new Interval("x > " + interval.getEnd()));
            }
        }

        @Override
        public boolean equals(Object o) {
            if (o instanceof Attribute) {
                return this.name.equals(((Attribute) o).getName());
            }
            return false;
        }

        @Override
        public String toString() {
            StringBuilder stringBuilder = new StringBuilder(name + " with ");
            if (type.equals("enum")) {
                stringBuilder.append("values: ").append(values);
            } else {
                stringBuilder.append("bounds: [").append(minValue).append(", ").append(maxValue).append("]");
            }
            return stringBuilder.append("\nand corresponding disjoint intervals: ").append(disjointIntervals).append("\n\n").toString();
        }

        public String getName() {
            return name;
        }

        public ArrayList<Interval> getIntervals() {
            return intervals;
        }
    }
}