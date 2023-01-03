package model;

import java.util.HashMap;
import java.util.Map;

public enum DeclareTemplate {
    Absence("Absence",false),
    Absence2("Absence2",false),
    Absence3("Absence3",false),
    End("End",false),
    Exactly1("Exactly1",false),
    Exactly2("Exactly2",false),
    Existence("Existence",false),
    Existence2("Existence2",false),
    Existence3("Existence3",false),
    Init("Init",false),
    Alternate_Precedence("Alternate Precedence",true),
    Alternate_Response("Alternate Response",false),
    Alternate_Succession("Alternate Succession", false),
    Chain_Precedence("Chain Precedence",true),
    Chain_Response("Chain Response", false),
    Chain_Succession("Chain Succession", false),
    CoExistence("Co-Existence", false),
    Precedence("Precedence", true),
    Responded_Existence("Responded Existence", false),
    Response("Response", false),
    Succession("Succession", false),
    Choice("Choice", false),
    Exclusive_Choice("Exclusive Choice", false),
    Not_Chain_Precedence("Not Chain Precedence", true),
    Not_Chain_Response("Not Chain Response", false),
    Not_Chain_Succession("Not Chain Succession", false),
    Not_CoExistence("Not Co-Existence", false),
    Not_Precedence("Not Precedence", true),
    Not_Responded_Existence("Not Responded Existence", false),
    Not_Response("Not Response", false),
    Not_Succession("Not Succession", false);

    private final String templateName;
    private final boolean reverseActivationTarget;
    private static final Map<String, DeclareTemplate> templateNameToTemplate = new HashMap<>();

    static {
        for (DeclareTemplate constraintTemplate : DeclareTemplate.values()) {
            templateNameToTemplate.put(constraintTemplate.getTemplateName(), constraintTemplate);
        }
    }

    DeclareTemplate(String templateName, boolean reverseActivationTarget) {
        this.templateName = templateName;
        this.reverseActivationTarget = reverseActivationTarget;
    }

    public String getTemplateName() {
        return templateName;
    }

    public boolean getReverseActivationTarget() {
        return reverseActivationTarget;
    }

    public static DeclareTemplate getByTemplateName(String templateName) {
        return templateNameToTemplate.get(templateName);
    }
}