package translations;

import input.model.DeclareConstraint;

public class DeclareToLTL {

    String globally = "\u25A1";
    String eventually = "\u25C7";
    String weakUntil = "W";
    String until = "U";
    String notOperator =  "\u00AC";
    String orOperator = "\u2228";
    String andOperator = "\u2227";
    String implies = "\u2192";
    String next = "\u25CB";

    public DeclareToLTL(){

    }


    public String translate(DeclareConstraint constraint) {
        String activationActivity = constraint.getActivationActivity();
        String activationCondition = constraint.getActivationCondition();
        String targetActivity = constraint.getTargetActivity();
        String targetCondition = constraint.getTargetCondition();

        return switch (constraint.getConstraintString().toLowerCase()) {
            case "absence" -> formulateAbsence(activationActivity, activationCondition);
            case "existence" -> formulateExistence(activationActivity, activationCondition);
            case "init" -> formulateInit(activationActivity, activationCondition);
            case "alternate precedence" ->
                    formulateAlternatePrecedence(activationActivity, activationCondition, targetActivity, targetCondition);
            case "alternate response" ->
                    formulateAlternateResponse(activationActivity, activationCondition, targetActivity, targetCondition);
            case "chain precedence" ->
                    formulateChainPrecedence(activationActivity, activationCondition, targetActivity, targetCondition);
            case "chain response" ->
                    formulateChainResponse(activationActivity, activationCondition, targetActivity, targetCondition);
            case "choice" -> formulateChoice(activationActivity, activationCondition, targetActivity, targetCondition);
            case "exclusive choice" ->
                    formulateExclusiveChoice(activationActivity, activationCondition, targetActivity, targetCondition);
            case "precedence" ->
                    formulatePrecedence(activationActivity, activationCondition, targetActivity, targetCondition);
            case "responded existence" ->
                    formulateRespondedExistence(activationActivity, activationCondition, targetActivity, targetCondition);
            case "response" ->
                    formulateResponse(activationActivity, activationCondition, targetActivity, targetCondition);
            case "not chain precedence" ->
                    formulateNoChainPrecedence(activationActivity, activationCondition, targetActivity, targetCondition);
            case "not chain response" ->
                    formulateNoChainResponse(activationActivity, activationCondition, targetActivity, targetCondition);
            case "not precedence" ->
                    formulateNoPrecedence(activationActivity, activationCondition, targetActivity, targetCondition);
            case "not responded existence" ->
                    formulateNoRespondedExistence(activationActivity, activationCondition, targetActivity, targetCondition);
            case "not response" ->
                    formulateNoResponse(activationActivity, activationCondition, targetActivity, targetCondition);
            case "alternate succession" -> formulateAlternateSuccession(activationActivity, targetActivity);
            case "chain succession" -> formulateChainSuccession(activationActivity, targetActivity);
            case "co-existence" -> formulateCoExistence(activationActivity, targetActivity);
            case "succession" -> formulateSuccession(activationActivity, targetActivity);
            case "not chain succession" -> formulateNoChainSuccession(activationActivity, targetActivity);
            case "not co-existence" -> formulateNoCoExistence(activationActivity, targetActivity);
            case "not succession" -> formulateNoSuccession(activationActivity, targetActivity);
            default -> "not implemented";
        };
    }

    private String getDataFormula(String activity, String condition) {
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

    private String formulateAbsence(String aActivity, String aCondition) {
        return notOperator + eventually + getDataFormula(aActivity, aCondition);
    }

    private String formulateExistence(String aActivity, String aCondition) {
        return eventually + getDataFormula(aActivity, aCondition);
    }

    private String formulateInit(String aActivity, String aCondition) {
        return getDataFormula(aActivity, aCondition);
    }

    private String formulateAlternatePrecedence(String aActivity, String aCondition, String tActivity, String tCondition) {
        return "(" + notOperator + getDataFormula(tActivity, tCondition) + " " + weakUntil + " " +
                getDataFormula(aActivity, aCondition) + ") " + andOperator + " " + globally + "(" +
                getDataFormula(tActivity, tCondition) + " " + implies + " " + next + "(" + notOperator +
                getDataFormula(tActivity, tCondition) + " " + weakUntil + " " + getDataFormula(aActivity, aCondition) + "))";

    }

    private String formulateAlternateResponse(String aActivity, String aCondition, String tActivity, String tCondition) {
        return globally + "(" + getDataFormula(aActivity, aCondition) + " " + implies + " " + next + "(" +
                notOperator + getDataFormula(aActivity, aCondition) + " " + until + " " +
                getDataFormula(tActivity, tCondition) + "))";
    }

    private String formulateChainPrecedence(String aActivity, String aCondition, String tActivity, String tCondition) {
        return globally + "(" + next + getDataFormula(tActivity, tCondition) + " " + implies + " " +
                getDataFormula(aActivity, aCondition) + ")";
    }

    private String formulateChainResponse(String aActivity, String aCondition, String tActivity, String tCondition) {
        return globally + "(" + getDataFormula(aActivity, aCondition) + " " + implies + " " + next +
                getDataFormula(tActivity, tCondition) + ")";
    }

    private String formulateChoice(String aActivity, String aCondition, String tActivity, String tCondition) {
        return eventually + getDataFormula(aActivity, aCondition) + " " + orOperator + " " + eventually +
                getDataFormula(tActivity, tCondition);
    }

    private String formulateExclusiveChoice(String aActivity, String aCondition, String tActivity, String tCondition) {
        return "(" + eventually + getDataFormula(aActivity, aCondition) + " " + orOperator + " " + eventually +
                getDataFormula(tActivity, tCondition) + ")" + " " + andOperator + " " + notOperator + "(" + eventually +
                getDataFormula(aActivity, tCondition) + " " + andOperator + " " + eventually +
                getDataFormula(tActivity, tCondition) + ")";
    }

    private String formulatePrecedence(String aActivity, String aCondition, String tActivity, String tCondition) {
        return notOperator + getDataFormula(tActivity, tCondition) + " " + weakUntil + " " +
                getDataFormula(aActivity, aCondition);
    }

    private String formulateRespondedExistence(String aActivity, String aCondition, String tActivity, String tCondition) {
        return eventually + getDataFormula(aActivity, aCondition) + " " + implies + " " + eventually +
                getDataFormula(tActivity, tCondition);
    }

    private String formulateResponse(String aActivity, String aCondition, String tActivity, String tCondition) {
        return globally + "(" + getDataFormula(aActivity, aCondition) + " " + implies + " " + eventually +
                getDataFormula(tActivity, tCondition) + ")";
    }

    private String formulateNoChainPrecedence(String aActivity, String aCondition, String tActivity, String tCondition) {
        return globally + "(" + next + getDataFormula(tActivity, tCondition) + " " + implies + " " + notOperator +
                getDataFormula(aActivity, aCondition) + ")";
    }

    private String formulateNoChainResponse(String aActivity, String aCondition, String tActivity, String tCondition) {
        return globally + "(" + getDataFormula(aActivity, aCondition) + " " + implies + " " + notOperator + next +
                getDataFormula(tActivity, tCondition) + ")";
    }

    private String formulateNoPrecedence(String aActivity, String aCondition, String tActivity, String tCondition) {
        return globally + "(" + getDataFormula(aActivity, aCondition) + " " + implies + " " + notOperator + eventually +
                getDataFormula(tActivity, tCondition) + ")";
    }

    private String formulateNoRespondedExistence(String aActivity, String aCondition, String tActivity, String tCondition) {
        return eventually + getDataFormula(aActivity, aCondition) + " " + implies + " " + notOperator + eventually +
                getDataFormula(tActivity, tCondition);
    }

    private String formulateNoResponse(String aActivity, String aCondition, String tActivity, String tCondition) {
        return globally + "(" + getDataFormula(aActivity, aCondition) + " " + implies + " " + notOperator + eventually +
                getDataFormula(tActivity, tCondition) + ")";
    }

    private String formulateAlternateSuccession(String aActivity, String tActivity) {
        return globally + "(" + aActivity + " " + implies + " " + next + "(" + notOperator + aActivity + " " + until +
                " " + tActivity + "))" + " " + andOperator + " (" + notOperator + tActivity + " " + weakUntil + " " +
                aActivity + ")" + " " + andOperator + " " + globally + "(" + tActivity + " " + implies + " " +
                next + "(" + notOperator + tActivity + " " + weakUntil + " " + aActivity + "))";
    }

    private String formulateChainSuccession(String aActivity, String tActivity) {
        return globally + "(" + aActivity + implies + " " + next + tActivity + ")" + " " + andOperator + " " +
                globally + "(" + next + tActivity + " " + implies + " " + aActivity + ")";
    }

    private String formulateCoExistence(String aActivity, String tActivity) {
        return "(" + eventually + aActivity + " " + implies + " " + eventually + tActivity + ")" + " " + andOperator +
                " (" + eventually + tActivity + " " + implies + " " + eventually + tActivity + ")";
    }

    private String formulateSuccession(String aActivity, String tActivity) {
        return globally + "(" + aActivity + " " + implies + " " + eventually + tActivity + ")" + " " + andOperator +
                " (" + notOperator + tActivity + " " + weakUntil + " " + aActivity + " " + ")";
    }

    private String formulateNoChainSuccession(String aActivity, String tActivity) {
        return globally + "(" + aActivity + " " + implies + " " + notOperator + next + tActivity + ")" + " " +
                andOperator + " " + globally + "(" + next + tActivity + " " + implies + " " + notOperator + aActivity + ")";
    }

    private String formulateNoCoExistence(String aActivity, String tActivity) {
        return eventually + aActivity + " " + implies + " " + notOperator + eventually + tActivity;
    }

    private String formulateNoSuccession(String aActivity, String tActivity) {
        return globally + "(" + aActivity + " " + implies + " " + notOperator + eventually + tActivity + ")";
    }
}
