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

    public String translate (String constraintName, String activator, String target) {
        if (constraintName.equalsIgnoreCase("existence")) {
            System.out.println("test");
            return eventually + activator;
        } else if(constraintName.equalsIgnoreCase("absence")) {
            return notOperator + eventually + activator;
        }
        if (constraintName.equalsIgnoreCase("init")) {
            return activator;
        }
        else if(constraintName.equalsIgnoreCase("choice")) {
            return eventually + activator + " " + orOperator + " " + eventually + target;
        }
        else if(constraintName.equalsIgnoreCase("exclusive choice")) {
            return "(" + eventually + activator + " " + orOperator + " " + eventually + target + ")" +
                    " " + andOperator + " " + notOperator + "(" + eventually + activator + " " + andOperator + " " + eventually + target + ")";
        }
        else if(constraintName.equalsIgnoreCase("responded existence")) {
            return eventually + activator + " " + implies + " " + eventually + target;
        }
        else if(constraintName.equalsIgnoreCase("not responded existence")) {
            return eventually + activator + " " + implies + " " + notOperator + eventually + target;
        }
        else if(constraintName.equalsIgnoreCase("co-existence")) {
            return "(" + eventually + activator + " " + implies + " " + eventually + target + ")" + " " + andOperator + " " +
                    "(" + eventually + target + " " + implies + " " + eventually + target + ")";
        }
        else if(constraintName.equalsIgnoreCase("not co-existence")) {
            return eventually + activator + " " + implies + " " + notOperator + eventually + target;
        }
        else if(constraintName.equalsIgnoreCase("response")) {
            return globally + "(" + activator + " " + implies + " " + eventually + target + ")";
        }
        else if(constraintName.equalsIgnoreCase("precedence")) {
            return notOperator + target + " " + weakUntil + " " + activator;
        }
        else if(constraintName.equalsIgnoreCase("succession")) {
            return globally + "(" + activator + " " + implies + " " + eventually + target + ")" + " " + andOperator + " " + "(" + notOperator + target + " " + weakUntil + " " + activator + " " + ")";
        }
        else if(constraintName.equalsIgnoreCase("alternate response")) {
            return globally + "(" + activator + " " + implies + " " + next + "(" + notOperator + activator + " " + until + " " + target + "))";
        }
        else if(constraintName.equalsIgnoreCase("alternate precedence")) {
            return "(" + notOperator + target + " " + weakUntil + " " + activator + ")" + " " + andOperator + " " + globally + "(" + target + " " + implies + " " + next +
                    "(" + notOperator + target + " " + weakUntil + " " + activator + "))";
        }
        else if(constraintName.equalsIgnoreCase("alternate succession")) {
            return globally + "(" + activator + " " + implies + " " + next + "(" + notOperator + activator + " " + until + " " + target + "))" + " " + andOperator + " " +
                    "(" + notOperator + target + " " + weakUntil + " " + activator + ")" + " " + andOperator + " " + globally + "(" + target + " " + implies + " " +
                    next + "(" + notOperator + target + " " + weakUntil + " " + activator + "))";
        }
        else if(constraintName.equalsIgnoreCase("chain response")) {
            return globally + "(" + activator + " " + implies + " " + next + target + ")";
        }
        else if(constraintName.equalsIgnoreCase("chain precedence")) {
            return globally + "(" + next + target + " " + implies + " " + activator + ")";
        }
        else if(constraintName.equalsIgnoreCase("chain succession")) {
            return globally + "(" + activator + " " + implies + " " + next + target + ")" + " " + andOperator + " " + globally + "(" + next + target +
                    " " + implies + " " + activator + ")";
        }
        else if(constraintName.equalsIgnoreCase("not response")) {
            return globally + "(" + activator + " " + implies + " " + notOperator + eventually + target + ")";
        }
        else if(constraintName.equalsIgnoreCase("not precedence")) {
            return globally + "(" + activator + " " + implies + " " + notOperator + eventually + target + ")";
        }
        else if(constraintName.equalsIgnoreCase("not succession")) {
            return globally + "(" + activator + " " + implies + " " + notOperator + eventually + target + ")";
        }
        else if(constraintName.equalsIgnoreCase("not chain response")) {
            return globally + "(" + activator + " " + implies + " " + notOperator + next + target + ")";
        }
        else if(constraintName.equalsIgnoreCase("not chain precedence")) {
            return globally + "(" + next + target + " " + implies + " " + notOperator + activator + ")";
        }
        else if(constraintName.equalsIgnoreCase("not chain succession")) {
            return globally + "(" + activator + " " + implies + " " + notOperator + next + target + ")" + " " + andOperator + " " + globally +
                    "(" + next + target + " " + implies + " " + notOperator + activator + ")";
        }
        return "not yet implemented";
    }
}
