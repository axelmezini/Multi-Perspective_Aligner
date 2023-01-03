package model;

import java.util.*;

public class Activity {
    private final String name;
    private final ArrayList<Attribute> attributes;
    private TreeMap<String, ArrayList<String>> partitions;

    public Activity(String name) {
        this.name = name;
        this.attributes = new ArrayList<>();
    }

    public void addAttribute(String name) {
        Attribute newAttribute = new Attribute(name);
        if (!attributes.contains(newAttribute)) {
            attributes.add(newAttribute);
        }
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

    public void decomposeAttributes() {
        ArrayList<ArrayList<String>> decompositions = new ArrayList<>();
        for (Activity.Attribute attribute : attributes) {
            ArrayList<String> decomposition = attribute.decomposeAttribute();
            System.out.println(decomposition);
            System.out.println();
            decompositions.add(decomposition);
        }
        intersect(decompositions);
    }

    private void intersect(ArrayList<ArrayList<String>> atoms) {
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
            map.put(name + "-p" + counter, list);
            counter++;
        }
        return map;
    }

    @Override
    public String toString() {
        StringBuilder builder = new StringBuilder("I am activity " + name + " and my attributes are:");
        for (Attribute attribute : attributes) {
            builder.append(attribute);
        }
        builder.append("The followings are my partitions: ").append(partitions);
        builder.append("\n\n\n");
        return builder.toString();
    }

    public TreeMap<String, ArrayList<String>> getPartitions() {
        return partitions;
    }




    public ArrayList<String> getAcceptedPartitions(String condition) {
        ArrayList<String> strings = new ArrayList<>();

        String expression = condition.split("\\.")[1];
        String[] tokens = expression.replace(" ", "").split("[<>!=]");

        for (Map.Entry<String, ArrayList<String>> partition : partitions.entrySet()) {
            for (String part : partition.getValue()) {

                if (part.contains(tokens[0])) {
                    String[] bounds = part.split(" ");
                    if (condition.contains("<") && Double.parseDouble(bounds[0]) < Double.parseDouble(tokens[1]) && Double.parseDouble(bounds[4]) < Double.parseDouble(tokens[1])) {
                        strings.add(partition.getKey());
                    }
                }
            }
        }
        return null;
    }


    public static class Attribute {
        private final String name;
        private String type;
        private double minValue, maxValue;
        private ArrayList<String> values;

        private final ArrayList<Condition> conditions;

        public Attribute(String name) {
            this.name = name;
            this.conditions = new ArrayList<>();
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
            conditions.add(new Condition(type,name + " >= " + minValue));
            conditions.add(new Condition(type,name + " <= " + maxValue));
        }

        public void setValues(String type, List<String> values) {
            this.type = type;
            this.values = new ArrayList<>(values);
            conditions.add(new Condition(type,name + " in " + valuesAsString()));
        }

        private String valuesAsString() {
            String valuesString = values.toString();
            return valuesString.substring(1, valuesString.length() - 1);
        }

        public void addCondition(Condition condition) {
            if (!conditions.contains(condition)) {
                conditions.add(condition);
            }
        }

        public ArrayList<String> decomposeAttribute() {
            if (type.equals("enum")) {
                return decomposeEnumAttribute();
            } else {
                return decomposeNumericAttribute();
            }
        }

        private ArrayList<String> decomposeNumericAttribute() {
            ArrayList<Condition> disjointConditions = new ArrayList<>();
            for (Condition condition : conditions) {
                System.out.println(conditions);
                addToDisjoint(disjointConditions, condition);
            }
            return createNonOverlappingConditions(disjointConditions);
        }

        private ArrayList<String> decomposeEnumAttribute() {
            for (Condition condition : conditions) {
                for (String value : condition.getValues()) {
                    if (!values.contains(value)) {
                        values.add(value);
                    }
                }
            }
            return values;
        }

        private void addToDisjoint(ArrayList<Condition> conditionList, Condition condition) {
            if (conditionList.isEmpty()) {
                evaluateFirstInterval(conditionList, condition);
            } else {
                if (condition.getStart() == Double.NEGATIVE_INFINITY) {
                    int pos = 0;
                    while (conditionList.get(pos + 1).getEnd() < condition.getEnd()) { //to test -> && pos < disjointIntervals.size() - 2
                        pos++;
                    }
                    addLessInterval(conditionList, condition, pos);
                } else if (condition.getEnd() == Double.POSITIVE_INFINITY) {
                    int pos = conditionList.size() - 1;
                    while (conditionList.get(pos - 1).getStart() > condition.getStart()) { //to test -> && pos > 1
                        pos--;
                    }
                    addGreaterInterval(conditionList, condition, pos);
                } else {
                    int pos = 0;
                    while (conditionList.get(pos).getEnd() < condition.getEnd() && pos < conditionList.size() - 2) {
                        pos++;
                    }
                    addEqualInterval(conditionList, condition, pos);
                }
            }
        }

        private void evaluateFirstInterval(ArrayList<Condition> list, Condition condition) {
            if (condition.getStart() == Double.NEGATIVE_INFINITY) {
                if (condition.isClosedRight()) addFirstIntervals(list, new String[] {" <= ", " > "}, condition.getEnd());
                else addFirstIntervals(list, new String[] {" < ", " >= "}, condition.getEnd());
            } else if (condition.getEnd() == Double.POSITIVE_INFINITY) {
                if (condition.isClosedLeft()) addFirstIntervals(list, new String[] {" < ", " >= "}, condition.getStart());
                else addFirstIntervals(list, new String[] {" <= ", " > "}, condition.getStart());
            } else {
                addFirstIntervals(list, new String[] {" < ", " = ", " > "}, condition.getStart());
            }
        }

        private void addFirstIntervals(ArrayList<Condition> list, String[] strings, double number) {
            for (String string : strings) {
                list.add(new Condition(type, name + string + number));
            }
        }

        private void addLessInterval(ArrayList<Condition> list, Condition condition, int pos) {
            Condition newCondition = new Condition(type, condition.getString());
            Condition intervalBefore = list.get(pos);
            Condition intervalAfter = list.get(pos + 1);
            if (intervalBefore.getEnd() < newCondition.getEnd()) {
                newCondition.setStart(intervalBefore.getEnd());
                newCondition.setClosedLeft(!intervalBefore.isClosedRight());
                if (intervalAfter.getStart() < newCondition.getEnd()) {
                    intervalAfter.setStart(newCondition.getEnd());
                    intervalAfter.setClosedLeft(!newCondition.isClosedRight());
                }
                list.add(++pos, newCondition);
            } else {
                intervalBefore.setStart(newCondition.getEnd());
                intervalBefore.setClosedLeft(!newCondition.isClosedRight());
                list.add(0, newCondition);
            }
        }

        private void addGreaterInterval(ArrayList<Condition> list, Condition condition, int pos) {
            Condition newCondition = new Condition(type, condition.getString());
            Condition intervalBefore = list.get(pos - 1);
            Condition intervalAfter = list.get(pos);
            if (intervalAfter.getStart() > newCondition.getStart()) {
                newCondition.setEnd(intervalAfter.getStart());
                newCondition.setClosedRight(!intervalAfter.isClosedLeft());
                if (intervalBefore.getEnd() > newCondition.getStart()) {
                    intervalBefore.setEnd(newCondition.getStart());
                    intervalBefore.setClosedRight(!newCondition.isClosedLeft());
                }
                list.add(pos, newCondition);
            } else {
                intervalAfter.setEnd(newCondition.getStart());
                intervalAfter.setClosedRight(!newCondition.isClosedLeft());
                list.add(list.size(), newCondition);
            }
        }

        private void addEqualInterval(ArrayList<Condition> list, Condition condition, int pos) {
            if (list.get(pos).getEnd() == condition.getStart()) {
                addToDisjoint(list, new Condition(type,name + " < " + condition.getStart()));
            } else {
                addToDisjoint(list, new Condition(type,name + " < " + condition.getStart()));
                addToDisjoint(list, new Condition(type,name + " > " + condition.getEnd()));
            }
        }

        private ArrayList<String> createNonOverlappingConditions(ArrayList<Condition> list) {
            ArrayList<String> nonOverLappingConditions = new ArrayList<>();
            for (Condition condition : list) {
                nonOverLappingConditions.add(intervalToCondition(condition));
            }
            return nonOverLappingConditions;
        }

        private String intervalToCondition(Condition condition) {
            StringBuilder builder = new StringBuilder();
            String operatorLeft = condition.isClosedLeft()? "<=" : "<";
            String operatorRight = condition.isClosedRight()? "<=" : "<";
            builder.append(condition.getStart()).append(" ").append(operatorLeft).append(" ").append(name).append(" ").append(operatorRight).append(" ").append(condition.getEnd());
            return builder.toString();
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
            return stringBuilder.append("\n\n").toString();
        }

        public String getName() {
            return name;
        }

        public String getType() {
            return type;
        }
    }
}