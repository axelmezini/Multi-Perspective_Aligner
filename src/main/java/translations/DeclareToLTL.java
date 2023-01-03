package translations;

import model.Condition;
import model.DeclareConstraint;
import model.DeclareModel;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

public class DeclareToLTL {

    private final DeclareModel model;
    private static final String GLOBALLY = "\u25A1", EVENTUALLY = "\u25C7";
    private static final String UNTIL = "U", WEAK_UNTIL = "W";
    private static final String NOT_OPERATOR = "\u00AC", OR_OPERATOR = "\u2228", AND_OPERATOR = "\u2227";
    private static final String IMPLIES = "\u2192";
    private static final String NEXT = "\u25CB";

    public DeclareToLTL(DeclareModel declareModel) {
        this.model = declareModel;
    }

    public void translateModel() throws IOException {
        File tempFile = new File("LTLFile.txt");
        tempFile.createNewFile();
        FileWriter fw = new FileWriter(tempFile);
        StringBuilder builder = new StringBuilder();

        for (DeclareConstraint constraint : model.getDeclareConstraints()) {
            String string = constraint.getConstraintString();
            String name = string.split("\\[")[0];
            builder.append(name).append(" translated to -> ").append(translateConstraint(constraint)).append("\n");
        }

        fw.write(builder.toString());
        fw.close();
    }

    private String translateConstraint(DeclareConstraint constraint) {
        String name = constraint.getConstraintString().toLowerCase().split("\\[")[0];
        String aActivity = constraint.getActivationActivity();
        String aConditionString = constraint.getActivationConditionString();
        ArrayList<Condition> aConditionList = constraint.getActivationConditionsList();
        String tActivity = constraint.getTargetActivity();
        String tConditionString = constraint.getTargetConditionString();
        ArrayList<Condition> tConditionList = constraint.getTargetConditionsList();

        return switch (name) {
            case "absence" -> formulateAbsence(aActivity, aConditionString, aConditionList);
            case "existence" -> formulateExistence(aActivity, aConditionString, aConditionList);
            case "init" -> formulateInit(aActivity, aConditionString, aConditionList);
            case "alternate precedence" ->
                    formulateAlternatePrecedence(aActivity, aConditionString, aConditionList, tActivity, tConditionString, tConditionList);
            case "alternate response" ->
                    formulateAlternateResponse(aActivity, aConditionString, aConditionList, tActivity, tConditionString, tConditionList);
            case "chain precedence" ->
                    formulateChainPrecedence(aActivity, aConditionString, aConditionList, tActivity, tConditionString, tConditionList);
            case "chain response" ->
                    formulateChainResponse(aActivity, aConditionString, aConditionList, tActivity, tConditionString, tConditionList);
            case "choice" -> formulateChoice(aActivity, aConditionString, aConditionList, tActivity, tConditionString, tConditionList);
            case "exclusive choice" ->
                    formulateExclusiveChoice(aActivity, aConditionString, aConditionList, tActivity, tConditionString, tConditionList);
            case "precedence" ->
                    formulatePrecedence(aActivity, aConditionString, aConditionList, tActivity, tConditionString, tConditionList);
            case "responded existence" ->
                    formulateRespondedExistence(aActivity, aConditionString, aConditionList, tActivity, tConditionString, tConditionList);
            case "response" ->
                    formulateResponse(aActivity, aConditionString, aConditionList, tActivity, tConditionString, tConditionList);
            case "not chain precedence" ->
                    formulateNoChainPrecedence(aActivity, aConditionString, aConditionList, tActivity, tConditionString, tConditionList);
            case "not chain response" ->
                    formulateNoChainResponse(aActivity, aConditionString, aConditionList, tActivity, tConditionString, tConditionList);
            case "not precedence" ->
                    formulateNoPrecedence(aActivity, aConditionString, aConditionList, tActivity, tConditionString, tConditionList);
            case "not responded existence" ->
                    formulateNoRespondedExistence(aActivity, aConditionString, aConditionList, tActivity, tConditionString, tConditionList);
            case "not response" ->
                    formulateNoResponse(aActivity, aConditionString, aConditionList, tActivity, tConditionString, tConditionList);
            case "alternate succession" -> formulateAlternateSuccession(aActivity, tActivity);
            case "chain succession" -> formulateChainSuccession(aActivity, tActivity);
            case "co-existence" -> formulateCoExistence(aActivity, tActivity);
            case "succession" -> formulateSuccession(aActivity, tActivity);
            case "not chain succession" -> formulateNoChainSuccession(aActivity, tActivity);
            case "not co-existence" -> formulateNoCoExistence(aActivity, tActivity);
            case "not succession" -> formulateNoSuccession(aActivity, tActivity);
            default -> "not implemented";
        };
    }

    private String getDataFormula(String activity, String aString, ArrayList<Condition> aList) {
        if (aString != null) {
            StringBuilder builder = new StringBuilder("(" + activity + " " + AND_OPERATOR + " ");
            String[] tokens = aString.toLowerCase().split(" and | or ");


            model.getActivities().get(activity).getAcceptedPartitions(aString);

            for (String token : tokens) {
                String temporary = token.replaceAll(" AND ", " " + AND_OPERATOR + " ");
                temporary = temporary.replaceAll(" OR ", " " + OR_OPERATOR + " ");
                String expression = temporary.substring(1);
                builder.append(activity).append(expression).append(" ").append(AND_OPERATOR).append(" ");
            }
            String result = builder.toString();
            return result.substring(0, result.length() - 3) + ")";
        }
        return activity;
    }

    private String formulateAbsence(String aActivity, String aString, ArrayList<Condition> aList) {
        return NOT_OPERATOR + EVENTUALLY + getDataFormula(aActivity, aString, aList);
    }

    private String formulateExistence(String aActivity, String aString, ArrayList<Condition> aList) {
        return EVENTUALLY + getDataFormula(aActivity, aString, aList);
    }

    private String formulateInit(String aActivity, String aString, ArrayList<Condition> aList) {
        return getDataFormula(aActivity, aString, aList);
    }

    private String formulateAlternatePrecedence(String aActivity, String aCondition, ArrayList<Condition> aList, String tActivity, String tCondition, ArrayList<Condition> tList) {
        return "(" + NOT_OPERATOR + getDataFormula(tActivity, tCondition, tList) + " " + WEAK_UNTIL + " " +
                getDataFormula(aActivity, aCondition, aList) + ") " + AND_OPERATOR + " " + GLOBALLY + "(" +
                getDataFormula(tActivity, tCondition, tList) + " " + IMPLIES + " " + NEXT + "(" + NOT_OPERATOR +
                getDataFormula(tActivity, tCondition, tList) + " " + WEAK_UNTIL + " " + getDataFormula(aActivity, aCondition, aList) + "))";

    }

    private String formulateAlternateResponse(String aActivity, String aCondition, ArrayList<Condition> aList, String tActivity, String tCondition, ArrayList<Condition> tList) {
        return GLOBALLY + "(" + getDataFormula(aActivity, aCondition, aList) + " " + IMPLIES + " " + NEXT + "(" +
                NOT_OPERATOR + getDataFormula(aActivity, aCondition, aList) + " " + UNTIL + " " +
                getDataFormula(tActivity, tCondition, tList) + "))";
    }

    private String formulateChainPrecedence(String aActivity, String aCondition, ArrayList<Condition> aList, String tActivity, String tCondition, ArrayList<Condition> tList) {
        return GLOBALLY + "(" + NEXT + getDataFormula(tActivity, tCondition, tList) + " " + IMPLIES + " " +
                getDataFormula(aActivity, aCondition, aList) + ")";
    }

    private String formulateChainResponse(String aActivity, String aCondition, ArrayList<Condition> aList, String tActivity, String tCondition, ArrayList<Condition> tList) {
        return GLOBALLY + "(" + getDataFormula(aActivity, aCondition, aList) + " " + IMPLIES + " " + NEXT +
                getDataFormula(tActivity, tCondition, tList) + ")";
    }

    private String formulateChoice(String aActivity, String aCondition, ArrayList<Condition> aList, String tActivity, String tCondition, ArrayList<Condition> tList) {
        return EVENTUALLY + getDataFormula(aActivity, aCondition, aList) + " " + OR_OPERATOR + " " + EVENTUALLY +
                getDataFormula(tActivity, tCondition, tList);
    }

    private String formulateExclusiveChoice(String aActivity, String aCondition, ArrayList<Condition> aList, String tActivity, String tCondition, ArrayList<Condition> tList) {
        return "(" + EVENTUALLY + getDataFormula(aActivity, aCondition, aList) + " " + OR_OPERATOR + " " + EVENTUALLY +
                getDataFormula(tActivity, tCondition, tList) + ")" + " " + AND_OPERATOR + " " + NOT_OPERATOR + "(" + EVENTUALLY +
                getDataFormula(aActivity, aCondition, aList) + " " + AND_OPERATOR + " " + EVENTUALLY +
                getDataFormula(tActivity, tCondition, tList) + ")";
    }

    private String formulatePrecedence(String aActivity, String aCondition, ArrayList<Condition> aList, String tActivity, String tCondition, ArrayList<Condition> tList) {
        return NOT_OPERATOR + getDataFormula(tActivity, tCondition, tList) + " " + WEAK_UNTIL + " " +
                getDataFormula(aActivity, aCondition, aList);
    }

    private String formulateRespondedExistence(String aActivity, String aCondition, ArrayList<Condition> aList, String tActivity, String tCondition, ArrayList<Condition> tList) {
        return EVENTUALLY + getDataFormula(aActivity, aCondition, aList) + " " + IMPLIES + " " + EVENTUALLY +
                getDataFormula(tActivity, tCondition, tList);
    }

    private String formulateResponse(String aActivity, String aCondition, ArrayList<Condition> aList, String tActivity, String tCondition, ArrayList<Condition> tList) {
        return GLOBALLY + "(" + getDataFormula(aActivity, aCondition, aList) + " " + IMPLIES + " " + EVENTUALLY +
                getDataFormula(tActivity, tCondition, tList) + ")";
    }

    private String formulateNoChainPrecedence(String aActivity, String aCondition, ArrayList<Condition> aList, String tActivity, String tCondition, ArrayList<Condition> tList) {
        return GLOBALLY + "(" + NEXT + getDataFormula(tActivity, tCondition, tList) + " " + IMPLIES + " " + NOT_OPERATOR +
                getDataFormula(aActivity, aCondition, aList) + ")";
    }

    private String formulateNoChainResponse(String aActivity, String aCondition, ArrayList<Condition> aList, String tActivity, String tCondition, ArrayList<Condition> tList) {
        return GLOBALLY + "(" + getDataFormula(aActivity, aCondition, aList) + " " + IMPLIES + " " + NOT_OPERATOR + NEXT +
                getDataFormula(tActivity, tCondition, tList) + ")";
    }

    private String formulateNoPrecedence(String aActivity, String aCondition, ArrayList<Condition> aList, String tActivity, String tCondition, ArrayList<Condition> tList) {
        return GLOBALLY + "(" + getDataFormula(aActivity, aCondition, aList) + " " + IMPLIES + " " + NOT_OPERATOR + EVENTUALLY +
                getDataFormula(tActivity, tCondition, tList) + ")";
    }

    private String formulateNoRespondedExistence(String aActivity, String aCondition, ArrayList<Condition> aList, String tActivity, String tCondition, ArrayList<Condition> tList) {
        return EVENTUALLY + getDataFormula(aActivity, aCondition, aList) + " " + IMPLIES + " " + NOT_OPERATOR + EVENTUALLY +
                getDataFormula(tActivity, tCondition, tList);
    }

    private String formulateNoResponse(String aActivity, String aCondition, ArrayList<Condition> aList, String tActivity, String tCondition, ArrayList<Condition> tList) {
        return GLOBALLY + "(" + getDataFormula(aActivity, aCondition, aList) + " " + IMPLIES + " " + NOT_OPERATOR + EVENTUALLY +
                getDataFormula(tActivity, tCondition, tList) + ")";
    }

    private String formulateAlternateSuccession(String aActivity, String tActivity) {
        return GLOBALLY + "(" + aActivity + " " + IMPLIES + " " + NEXT + "(" + NOT_OPERATOR + aActivity + " " + UNTIL +
                " " + tActivity + "))" + " " + AND_OPERATOR + " (" + NOT_OPERATOR + tActivity + " " + WEAK_UNTIL + " " +
                aActivity + ")" + " " + AND_OPERATOR + " " + GLOBALLY + "(" + tActivity + " " + IMPLIES + " " +
                NEXT + "(" + NOT_OPERATOR + tActivity + " " + WEAK_UNTIL + " " + aActivity + "))";
    }

    private String formulateChainSuccession(String aActivity, String tActivity) {
        return GLOBALLY + "(" + aActivity + IMPLIES + " " + NEXT + tActivity + ")" + " " + AND_OPERATOR + " " +
                GLOBALLY + "(" + NEXT + tActivity + " " + IMPLIES + " " + aActivity + ")";
    }

    private String formulateCoExistence(String aActivity, String tActivity) {
        return "(" + EVENTUALLY + aActivity + " " + IMPLIES + " " + EVENTUALLY + tActivity + ")" + " " + AND_OPERATOR +
                " (" + EVENTUALLY + tActivity + " " + IMPLIES + " " + EVENTUALLY + tActivity + ")";
    }

    private String formulateSuccession(String aActivity, String tActivity) {
        return GLOBALLY + "(" + aActivity + " " + IMPLIES + " " + EVENTUALLY + tActivity + ")" + " " + AND_OPERATOR +
                " (" + NOT_OPERATOR + tActivity + " " + WEAK_UNTIL + " " + aActivity + " " + ")";
    }

    private String formulateNoChainSuccession(String aActivity, String tActivity) {
        return GLOBALLY + "(" + aActivity + " " + IMPLIES + " " + NOT_OPERATOR + NEXT + tActivity + ")" + " " +
                AND_OPERATOR + " " + GLOBALLY + "(" + NEXT + tActivity + " " + IMPLIES + " " + NOT_OPERATOR + aActivity + ")";
    }

    private String formulateNoCoExistence(String aActivity, String tActivity) {
        return EVENTUALLY + aActivity + " " + IMPLIES + " " + NOT_OPERATOR + EVENTUALLY + tActivity;
    }

    private String formulateNoSuccession(String aActivity, String tActivity) {
        return GLOBALLY + "(" + aActivity + " " + IMPLIES + " " + NOT_OPERATOR + EVENTUALLY + tActivity + ")";
    }
}