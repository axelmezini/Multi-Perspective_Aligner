import java.util.Arrays;

public class DeclConst2LTL {

    String globally = "\u25A1";
    String eventually = "\u25C7";
    String weakUntil = "W";
    String until = "U";
    String notOperator =  "\u00AC";
    String orOperator = "\u2228";
    String andOperator = "\u2227";
    String implies = "\u2192";
    String next = "\u25CB";

    public String translate (String constraintName, String activator, String actCondition, String target) {
        if (constraintName.equalsIgnoreCase("existence")) {
            return eventually + getActCondFormula(activator, actCondition);
        } else if(constraintName.equalsIgnoreCase("absence")) {
            return notOperator + eventually + getActCondFormula(activator, actCondition);
        }
        if (constraintName.equalsIgnoreCase("init")) {
            return getActCondFormula(activator, actCondition);
        }
        else if(constraintName.equalsIgnoreCase("choice")) {
            return eventually + getActCondFormula(activator, actCondition) + " " + orOperator + " " + eventually + target;
        }
        else if(constraintName.equalsIgnoreCase("exclusive choice")) {
            return "(" + eventually + getActCondFormula(activator, actCondition) + " " + orOperator + " " + eventually + target + ")" +
                    " " + andOperator + " " + notOperator + "(" + eventually + getActCondFormula(activator, actCondition) + " " + andOperator + " " + eventually + target + ")";
        }
        else if(constraintName.equalsIgnoreCase("responded existence")) {
            return eventually + getActCondFormula(activator, actCondition) + " " + implies + " " + eventually + target;
        }
        else if(constraintName.equalsIgnoreCase("not responded existence")) {
            return eventually + getActCondFormula(activator, actCondition) + " " + implies + " " + notOperator + eventually + target;
        }
        else if(constraintName.equalsIgnoreCase("co-existence")) {
            return "(" + eventually + getActCondFormula(activator, actCondition) + " " + implies + " " + eventually + target + ")" + " " + andOperator + " " +
                    "(" + eventually + target + " " + implies + " " + eventually + target + ")";
        }
        else if(constraintName.equalsIgnoreCase("not co-existence")) {
            return eventually + getActCondFormula(activator, actCondition) + " " + implies + " " + notOperator + eventually + target;
        }
        else if(constraintName.equalsIgnoreCase("response")) {
            return globally + "(" + getActCondFormula(activator, actCondition) + " " + implies + " " + eventually + target + ")";
        }
        else if(constraintName.equalsIgnoreCase("precedence")) {
            return notOperator + target + " " + weakUntil + " " + getActCondFormula(activator, actCondition);
        }
        else if(constraintName.equalsIgnoreCase("succession")) {
            return globally + "(" + getActCondFormula(activator, actCondition) + " " + implies + " " + eventually + target + ")" + " " + andOperator + " " + "(" + notOperator + target + " " + weakUntil + " " + activator + " " + ")";
        }
        else if(constraintName.equalsIgnoreCase("alternate response")) {
            return globally + "(" + getActCondFormula(activator, actCondition) + " " + implies + " " + next + "(" + notOperator + getActCondFormula(activator, actCondition) + " " + until + " " + target + "))";
        }
        else if(constraintName.equalsIgnoreCase("alternate precedence")) {
            return "(" + notOperator + target + " " + weakUntil + " " + getActCondFormula(activator, actCondition) + ")" + " " + andOperator + " " + globally + "(" + target + " " + implies + " " + next +
                    "(" + notOperator + target + " " + weakUntil + " " + getActCondFormula(activator, actCondition) + "))";
        }
        else if(constraintName.equalsIgnoreCase("alternate succession")) {
            return globally + "(" + getActCondFormula(activator, actCondition) + " " + implies + " " + next + "(" + notOperator + getActCondFormula(activator, actCondition) + " " + until + " " + target + "))" + " " + andOperator + " " +
                    "(" + notOperator + target + " " + weakUntil + " " + getActCondFormula(activator, actCondition) + ")" + " " + andOperator + " " + globally + "(" + target + " " + implies + " " +
                    next + "(" + notOperator + target + " " + weakUntil + " " + getActCondFormula(activator, actCondition) + "))";
        }
        else if(constraintName.equalsIgnoreCase("chain response")) {
            return globally + "(" + getActCondFormula(activator, actCondition) + " " + implies + " " + next + target + ")";
        }
        else if(constraintName.equalsIgnoreCase("chain precedence")) {
            return globally + "(" + next + target + " " + implies + " " + getActCondFormula(activator, actCondition) + ")";
        }
        else if(constraintName.equalsIgnoreCase("chain succession")) {
            return globally + "(" + getActCondFormula(activator, actCondition) + implies + " " + next + target + ")" + " " + andOperator + " " + globally + "(" + next + target +
                    " " + implies + " " + getActCondFormula(activator, actCondition) + ")";
        }
        else if(constraintName.equalsIgnoreCase("not response")) {
            return globally + "(" + getActCondFormula(activator, actCondition) + " " + implies + " " + notOperator + eventually + target + ")";
        }
        else if(constraintName.equalsIgnoreCase("not precedence")) {
            return globally + "(" + getActCondFormula(activator, actCondition) + " " + implies + " " + notOperator + eventually + target + ")";
        }
        else if(constraintName.equalsIgnoreCase("not succession")) {
            return globally + "(" + getActCondFormula(activator, actCondition) + " " + implies + " " + notOperator + eventually + target + ")";
        }
        else if(constraintName.equalsIgnoreCase("not chain response")) {
            return globally + "(" + getActCondFormula(activator, actCondition) + " " + implies + " " + notOperator + next + target + ")";
        }
        else if(constraintName.equalsIgnoreCase("not chain precedence")) {
            return globally + "(" + next + target + " " + implies + " " + notOperator + getActCondFormula(activator, actCondition) + ")";
        }
        else if(constraintName.equalsIgnoreCase("not chain succession")) {
            return globally + "(" + getActCondFormula(activator, actCondition) + " " + implies + " " + notOperator + next + target + ")" + " " + andOperator + " " + globally +
                    "(" + next + target + " " + implies + " " + notOperator + getActCondFormula(activator, actCondition) + ")";
        }
        return "not yet implemented";
    }

    private String getActCondFormula(String activity, String condition) {
        StringBuilder builder = new StringBuilder("(" + activity + " " + andOperator + " ");
        String[] tokens = condition.split(" AND | OR ");
        for (String token : tokens) {
            String temporary = token.replaceAll(" AND ", " " + andOperator + " ");
            temporary = temporary.replaceAll(" OR ", " " + orOperator + " ");
            String expression = temporary.substring(1);
            builder.append(activity).append(expression).append(" ").append(andOperator).append(" ");
        }
        String result = builder.toString();
        return result.substring(0, result.length() - 3) + ")";
    }
}
