(define (domain Mining)
(:requirements :typing :equality)
(:types state)

(:predicates
(currstate ?s - state)
)

(:functions
(total-cost)
)

(:action add-activity9-ct0
:precondition (and (currstate s_5_2) (not (currstate s_1_2)) (not (currstate s_2_2)) (not (currstate s_0_0)) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity9-ct1
:precondition (and (currstate s_1_2) (not (currstate s_5_2)) (not (currstate s_2_2)) (not (currstate s_0_0)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1)  (increase (total-cost) 1))
)

(:action add-activity9-ct2
:precondition (and (currstate s_2_2) (not (currstate s_5_2)) (not (currstate s_1_2)) (not (currstate s_0_0)) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity9-ct3
:precondition (and (currstate s_0_0) (not (currstate s_5_2)) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate s_0_0)) (currstate s_0_2)  (increase (total-cost) 1))
)

(:action add-activity9-ct4
:precondition (and (currstate s_5_2) (currstate s_1_2) (not (currstate s_2_2)) (not (currstate s_0_0)) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_1_2)) (currstate s_1_1)  (increase (total-cost) 1))
)

(:action add-activity9-ct5
:precondition (and (currstate s_5_2) (currstate s_2_2) (not (currstate s_1_2)) (not (currstate s_0_0)) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity9-ct6
:precondition (and (currstate s_5_2) (currstate s_0_0) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_0_0)) (currstate s_0_2)  (increase (total-cost) 1))
)

(:action add-activity9-ct7
:precondition (and (currstate s_1_2) (currstate s_2_2) (not (currstate s_5_2)) (not (currstate s_0_0)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity9-ct8
:precondition (and (currstate s_1_2) (currstate s_0_0) (not (currstate s_5_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_0_0)) (currstate s_0_2)  (increase (total-cost) 1))
)

(:action add-activity9-ct9
:precondition (and (currstate s_2_2) (currstate s_0_0) (not (currstate s_5_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_0_0)) (currstate s_0_2)  (increase (total-cost) 1))
)

(:action add-activity9-ct10
:precondition (and (currstate s_5_2) (currstate s_1_2) (currstate s_2_2) (not (currstate s_0_0)) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity9-ct11
:precondition (and (currstate s_5_2) (currstate s_1_2) (currstate s_0_0) (not (currstate s_2_2)) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_0_0)) (currstate s_0_2)  (increase (total-cost) 1))
)

(:action add-activity9-ct12
:precondition (and (currstate s_5_2) (currstate s_2_2) (currstate s_0_0) (not (currstate s_1_2)) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_0_0)) (currstate s_0_2)  (increase (total-cost) 1))
)

(:action add-activity9-ct13
:precondition (and (currstate s_1_2) (currstate s_2_2) (currstate s_0_0) (not (currstate s_5_2)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_0_0)) (currstate s_0_2)  (increase (total-cost) 1))
)

(:action add-activity9-ct14
:precondition (and (currstate s_5_2) (currstate s_1_2) (currstate s_2_2) (currstate s_0_0) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_0_0)) (currstate s_0_2)  (increase (total-cost) 1))
)

(:action add-activity10-ct15
:precondition (and (currstate s_2_2) (not (currstate s_0_0)) (not (currstate s_5_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity10-ct16
:precondition (and (currstate s_0_0) (not (currstate s_2_2)) (not (currstate s_5_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_0_0)) (currstate s_0_1)  (increase (total-cost) 1))
)

(:action add-activity10-ct17
:precondition (and (currstate s_5_2) (not (currstate s_2_2)) (not (currstate s_0_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity10-ct18
:precondition (and (currstate s_1_2) (not (currstate s_2_2)) (not (currstate s_0_0)) (not (currstate s_5_2)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1)  (increase (total-cost) 1))
)

(:action add-activity10-ct19
:precondition (and (currstate s_2_2) (currstate s_0_0) (not (currstate s_5_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_0_0)) (currstate s_0_1)  (increase (total-cost) 1))
)

(:action add-activity10-ct20
:precondition (and (currstate s_2_2) (currstate s_5_2) (not (currstate s_0_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity10-ct21
:precondition (and (currstate s_2_2) (currstate s_1_2) (not (currstate s_0_0)) (not (currstate s_5_2)) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_1_2)) (currstate s_1_1)  (increase (total-cost) 1))
)

(:action add-activity10-ct22
:precondition (and (currstate s_0_0) (currstate s_5_2) (not (currstate s_2_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_0_0)) (currstate s_0_1) (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity10-ct23
:precondition (and (currstate s_0_0) (currstate s_1_2) (not (currstate s_2_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate s_0_0)) (currstate s_0_1) (not (currstate s_1_2)) (currstate s_1_1)  (increase (total-cost) 1))
)

(:action add-activity10-ct24
:precondition (and (currstate s_5_2) (currstate s_1_2) (not (currstate s_2_2)) (not (currstate s_0_0)) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_1_2)) (currstate s_1_1)  (increase (total-cost) 1))
)

(:action add-activity10-ct25
:precondition (and (currstate s_2_2) (currstate s_0_0) (currstate s_5_2) (not (currstate s_1_2)) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_0_0)) (currstate s_0_1) (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity10-ct26
:precondition (and (currstate s_2_2) (currstate s_0_0) (currstate s_1_2) (not (currstate s_5_2)) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_0_0)) (currstate s_0_1) (not (currstate s_1_2)) (currstate s_1_1)  (increase (total-cost) 1))
)

(:action add-activity10-ct27
:precondition (and (currstate s_2_2) (currstate s_5_2) (currstate s_1_2) (not (currstate s_0_0)) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_1_2)) (currstate s_1_1)  (increase (total-cost) 1))
)

(:action add-activity10-ct28
:precondition (and (currstate s_0_0) (currstate s_5_2) (currstate s_1_2) (not (currstate s_2_2)) )
:effect (and (not (currstate s_0_0)) (currstate s_0_1) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_1_2)) (currstate s_1_1)  (increase (total-cost) 1))
)

(:action add-activity10-ct29
:precondition (and (currstate s_2_2) (currstate s_0_0) (currstate s_5_2) (currstate s_1_2) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_0_0)) (currstate s_0_1) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_1_2)) (currstate s_1_1)  (increase (total-cost) 1))
)

(:action add-activity14-ct30
:precondition (and (currstate s_2_2) (not (currstate s_1_2)) (not (currstate s_1_0)) (not (currstate s_5_2)) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity14-ct31
:precondition (and (currstate s_1_2) (not (currstate s_2_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1)  (increase (total-cost) 1))
)

(:action add-activity14-ct32
:precondition (and (currstate s_1_0) (not (currstate s_2_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate s_1_0)) (currstate s_1_2)  (increase (total-cost) 1))
)

(:action add-activity14-ct33
:precondition (and (currstate s_5_2) (not (currstate s_2_2)) (not (currstate s_1_2)) (not (currstate s_1_0)) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity14-ct34
:precondition (and (currstate s_2_2) (currstate s_1_2) (not (currstate s_5_2)) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_1_2)) (currstate s_1_1)  (increase (total-cost) 1))
)

(:action add-activity14-ct35
:precondition (and (currstate s_2_2) (currstate s_1_0) (not (currstate s_5_2)) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_1_0)) (currstate s_1_2)  (increase (total-cost) 1))
)

(:action add-activity14-ct36
:precondition (and (currstate s_2_2) (currstate s_5_2) (not (currstate s_1_2)) (not (currstate s_1_0)) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity14-ct37
:precondition (and (currstate s_1_2) (currstate s_5_2) (not (currstate s_2_2)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity14-ct38
:precondition (and (currstate s_1_0) (currstate s_5_2) (not (currstate s_2_2)) )
:effect (and (not (currstate s_1_0)) (currstate s_1_2) (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity14-ct39
:precondition (and (currstate s_2_2) (currstate s_1_2) (currstate s_5_2) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity14-ct40
:precondition (and (currstate s_2_2) (currstate s_1_0) (currstate s_5_2) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_1_0)) (currstate s_1_2) (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity15-ct41
:precondition (and (currstate s_5_2) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity15-ct42
:precondition (and (currstate s_1_2) (not (currstate s_5_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_0)  (increase (total-cost) 1))
)

(:action add-activity15-ct43
:precondition (and (currstate s_2_2) (not (currstate s_5_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity15-ct44
:precondition (and (currstate s_5_2) (currstate s_1_2) (not (currstate s_2_2)) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_1_2)) (currstate s_1_0)  (increase (total-cost) 1))
)

(:action add-activity15-ct45
:precondition (and (currstate s_5_2) (currstate s_2_2) (not (currstate s_1_2)) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity15-ct46
:precondition (and (currstate s_1_2) (currstate s_2_2) (not (currstate s_5_2)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_0) (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity15-ct47
:precondition (and (currstate s_5_2) (currstate s_1_2) (currstate s_2_2) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_1_2)) (currstate s_1_0) (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity16-ct48
:precondition (and (currstate s_1_2) (not (currstate s_5_2)) (not (currstate s_2_0)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1)  (increase (total-cost) 1))
)

(:action add-activity16-ct49
:precondition (and (currstate s_5_2) (not (currstate s_1_2)) (not (currstate s_2_0)) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity16-ct50
:precondition (and (currstate s_2_0) (not (currstate s_1_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate s_2_0)) (currstate s_2_2)  (increase (total-cost) 1))
)

(:action add-activity16-ct51
:precondition (and (currstate s_1_2) (currstate s_5_2) (not (currstate s_2_0)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity16-ct52
:precondition (and (currstate s_1_2) (currstate s_2_0) (not (currstate s_5_2)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_0)) (currstate s_2_2)  (increase (total-cost) 1))
)

(:action add-activity16-ct53
:precondition (and (currstate s_5_2) (currstate s_2_0) (not (currstate s_1_2)) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_2_0)) (currstate s_2_2)  (increase (total-cost) 1))
)

(:action add-activity16-ct54
:precondition (and (currstate s_1_2) (currstate s_5_2) (currstate s_2_0) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_2_0)) (currstate s_2_2)  (increase (total-cost) 1))
)

(:action add-activity17-ct55
:precondition (and (currstate s_5_2) (not (currstate s_2_0)) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity17-ct56
:precondition (and (currstate s_2_0) (not (currstate s_5_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_2_0)) (currstate s_2_1)  (increase (total-cost) 1))
)

(:action add-activity17-ct57
:precondition (and (currstate s_1_2) (not (currstate s_5_2)) (not (currstate s_2_0)) (not (currstate s_2_2)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1)  (increase (total-cost) 1))
)

(:action add-activity17-ct58
:precondition (and (currstate s_2_2) (not (currstate s_5_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity17-ct59
:precondition (and (currstate s_5_2) (currstate s_2_0) (not (currstate s_1_2)) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_2_0)) (currstate s_2_1)  (increase (total-cost) 1))
)

(:action add-activity17-ct60
:precondition (and (currstate s_5_2) (currstate s_1_2) (not (currstate s_2_0)) (not (currstate s_2_2)) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_1_2)) (currstate s_1_1)  (increase (total-cost) 1))
)

(:action add-activity17-ct61
:precondition (and (currstate s_5_2) (currstate s_2_2) (not (currstate s_1_2)) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity17-ct62
:precondition (and (currstate s_2_0) (currstate s_1_2) (not (currstate s_5_2)) )
:effect (and (not (currstate s_2_0)) (currstate s_2_1) (not (currstate s_1_2)) (currstate s_1_1)  (increase (total-cost) 1))
)

(:action add-activity17-ct63
:precondition (and (currstate s_1_2) (currstate s_2_2) (not (currstate s_5_2)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity17-ct64
:precondition (and (currstate s_5_2) (currstate s_2_0) (currstate s_1_2) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_2_0)) (currstate s_2_1) (not (currstate s_1_2)) (currstate s_1_1)  (increase (total-cost) 1))
)

(:action add-activity17-ct65
:precondition (and (currstate s_5_2) (currstate s_1_2) (currstate s_2_2) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity19-ct66
:precondition (and (currstate s_3_0) (not (currstate s_5_2)) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate s_3_0)) (currstate s_3_2)  (increase (total-cost) 1))
)

(:action add-activity19-ct67
:precondition (and (currstate s_3_3) (not (currstate s_5_2)) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate s_3_3)) (currstate s_3_1)  (increase (total-cost) 1))
)

(:action add-activity19-ct68
:precondition (and (currstate s_5_2) (not (currstate s_3_0)) (not (currstate s_3_3)) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity19-ct69
:precondition (and (currstate s_1_2) (not (currstate s_3_0)) (not (currstate s_3_3)) (not (currstate s_5_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1)  (increase (total-cost) 1))
)

(:action add-activity19-ct70
:precondition (and (currstate s_2_2) (not (currstate s_3_0)) (not (currstate s_3_3)) (not (currstate s_5_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity19-ct71
:precondition (and (currstate s_3_0) (currstate s_5_2) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate s_3_0)) (currstate s_3_2) (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity19-ct72
:precondition (and (currstate s_3_0) (currstate s_1_2) (not (currstate s_5_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate s_3_0)) (currstate s_3_2) (not (currstate s_1_2)) (currstate s_1_1)  (increase (total-cost) 1))
)

(:action add-activity19-ct73
:precondition (and (currstate s_3_0) (currstate s_2_2) (not (currstate s_5_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_3_0)) (currstate s_3_2) (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity19-ct74
:precondition (and (currstate s_3_3) (currstate s_5_2) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate s_3_3)) (currstate s_3_1) (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity19-ct75
:precondition (and (currstate s_3_3) (currstate s_1_2) (not (currstate s_5_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate s_3_3)) (currstate s_3_1) (not (currstate s_1_2)) (currstate s_1_1)  (increase (total-cost) 1))
)

(:action add-activity19-ct76
:precondition (and (currstate s_3_3) (currstate s_2_2) (not (currstate s_5_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_3_3)) (currstate s_3_1) (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity19-ct77
:precondition (and (currstate s_5_2) (currstate s_1_2) (not (currstate s_3_0)) (not (currstate s_3_3)) (not (currstate s_2_2)) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_1_2)) (currstate s_1_1)  (increase (total-cost) 1))
)

(:action add-activity19-ct78
:precondition (and (currstate s_5_2) (currstate s_2_2) (not (currstate s_3_0)) (not (currstate s_3_3)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity19-ct79
:precondition (and (currstate s_1_2) (currstate s_2_2) (not (currstate s_3_0)) (not (currstate s_3_3)) (not (currstate s_5_2)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity19-ct80
:precondition (and (currstate s_3_0) (currstate s_5_2) (currstate s_1_2) (not (currstate s_2_2)) )
:effect (and (not (currstate s_3_0)) (currstate s_3_2) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_1_2)) (currstate s_1_1)  (increase (total-cost) 1))
)

(:action add-activity19-ct81
:precondition (and (currstate s_3_0) (currstate s_5_2) (currstate s_2_2) (not (currstate s_1_2)) )
:effect (and (not (currstate s_3_0)) (currstate s_3_2) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity19-ct82
:precondition (and (currstate s_3_0) (currstate s_1_2) (currstate s_2_2) (not (currstate s_5_2)) )
:effect (and (not (currstate s_3_0)) (currstate s_3_2) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity19-ct83
:precondition (and (currstate s_3_3) (currstate s_5_2) (currstate s_1_2) (not (currstate s_2_2)) )
:effect (and (not (currstate s_3_3)) (currstate s_3_1) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_1_2)) (currstate s_1_1)  (increase (total-cost) 1))
)

(:action add-activity19-ct84
:precondition (and (currstate s_3_3) (currstate s_5_2) (currstate s_2_2) (not (currstate s_1_2)) )
:effect (and (not (currstate s_3_3)) (currstate s_3_1) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity19-ct85
:precondition (and (currstate s_3_3) (currstate s_1_2) (currstate s_2_2) (not (currstate s_5_2)) )
:effect (and (not (currstate s_3_3)) (currstate s_3_1) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity19-ct86
:precondition (and (currstate s_5_2) (currstate s_1_2) (currstate s_2_2) (not (currstate s_3_0)) (not (currstate s_3_3)) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity19-ct87
:precondition (and (currstate s_3_0) (currstate s_5_2) (currstate s_1_2) (currstate s_2_2) )
:effect (and (not (currstate s_3_0)) (currstate s_3_2) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity19-ct88
:precondition (and (currstate s_3_3) (currstate s_5_2) (currstate s_1_2) (currstate s_2_2) )
:effect (and (not (currstate s_3_3)) (currstate s_3_1) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity20-ct89
:precondition (and (currstate s_4_0) (not (currstate s_1_2)) (not (currstate s_3_2)) (not (currstate s_2_2)) (not (currstate s_5_2)) (not (currstate s_3_0)) )
:effect (and (not (currstate s_4_0)) (currstate s_4_2)  (increase (total-cost) 1))
)

(:action add-activity20-ct90
:precondition (and (currstate s_1_2) (not (currstate s_4_0)) (not (currstate s_3_2)) (not (currstate s_2_2)) (not (currstate s_5_2)) (not (currstate s_3_0)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1)  (increase (total-cost) 1))
)

(:action add-activity20-ct91
:precondition (and (currstate s_3_2) (not (currstate s_4_0)) (not (currstate s_1_2)) (not (currstate s_2_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate s_3_2)) (currstate s_3_1)  (increase (total-cost) 1))
)

(:action add-activity20-ct92
:precondition (and (currstate s_2_2) (not (currstate s_4_0)) (not (currstate s_1_2)) (not (currstate s_3_2)) (not (currstate s_5_2)) (not (currstate s_3_0)) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity20-ct93
:precondition (and (currstate s_5_2) (not (currstate s_4_0)) (not (currstate s_1_2)) (not (currstate s_3_2)) (not (currstate s_2_2)) (not (currstate s_3_0)) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity20-ct94
:precondition (and (currstate s_3_0) (not (currstate s_4_0)) (not (currstate s_1_2)) (not (currstate s_2_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate s_3_0)) (currstate s_3_3)  (increase (total-cost) 1))
)

(:action add-activity20-ct95
:precondition (and (currstate s_4_0) (currstate s_1_2) (not (currstate s_3_2)) (not (currstate s_2_2)) (not (currstate s_5_2)) (not (currstate s_3_0)) )
:effect (and (not (currstate s_4_0)) (currstate s_4_2) (not (currstate s_1_2)) (currstate s_1_1)  (increase (total-cost) 1))
)

(:action add-activity20-ct96
:precondition (and (currstate s_4_0) (currstate s_3_2) (not (currstate s_1_2)) (not (currstate s_2_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate s_4_0)) (currstate s_4_2) (not (currstate s_3_2)) (currstate s_3_1)  (increase (total-cost) 1))
)

(:action add-activity20-ct97
:precondition (and (currstate s_4_0) (currstate s_2_2) (not (currstate s_1_2)) (not (currstate s_3_2)) (not (currstate s_5_2)) (not (currstate s_3_0)) )
:effect (and (not (currstate s_4_0)) (currstate s_4_2) (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity20-ct98
:precondition (and (currstate s_4_0) (currstate s_5_2) (not (currstate s_1_2)) (not (currstate s_3_2)) (not (currstate s_2_2)) (not (currstate s_3_0)) )
:effect (and (not (currstate s_4_0)) (currstate s_4_2) (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity20-ct99
:precondition (and (currstate s_4_0) (currstate s_3_0) (not (currstate s_1_2)) (not (currstate s_2_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate s_4_0)) (currstate s_4_2) (not (currstate s_3_0)) (currstate s_3_3)  (increase (total-cost) 1))
)

(:action add-activity20-ct100
:precondition (and (currstate s_1_2) (currstate s_3_2) (not (currstate s_4_0)) (not (currstate s_2_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_3_2)) (currstate s_3_1)  (increase (total-cost) 1))
)

(:action add-activity20-ct101
:precondition (and (currstate s_1_2) (currstate s_2_2) (not (currstate s_4_0)) (not (currstate s_3_2)) (not (currstate s_5_2)) (not (currstate s_3_0)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity20-ct102
:precondition (and (currstate s_1_2) (currstate s_5_2) (not (currstate s_4_0)) (not (currstate s_3_2)) (not (currstate s_2_2)) (not (currstate s_3_0)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity20-ct103
:precondition (and (currstate s_1_2) (currstate s_3_0) (not (currstate s_4_0)) (not (currstate s_2_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_3_0)) (currstate s_3_3)  (increase (total-cost) 1))
)

(:action add-activity20-ct104
:precondition (and (currstate s_3_2) (currstate s_2_2) (not (currstate s_4_0)) (not (currstate s_1_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate s_3_2)) (currstate s_3_1) (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity20-ct105
:precondition (and (currstate s_3_2) (currstate s_5_2) (not (currstate s_4_0)) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate s_3_2)) (currstate s_3_1) (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity20-ct106
:precondition (and (currstate s_2_2) (currstate s_5_2) (not (currstate s_4_0)) (not (currstate s_1_2)) (not (currstate s_3_2)) (not (currstate s_3_0)) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity20-ct107
:precondition (and (currstate s_2_2) (currstate s_3_0) (not (currstate s_4_0)) (not (currstate s_1_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_3_0)) (currstate s_3_3)  (increase (total-cost) 1))
)

(:action add-activity20-ct108
:precondition (and (currstate s_5_2) (currstate s_3_0) (not (currstate s_4_0)) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_3_0)) (currstate s_3_3)  (increase (total-cost) 1))
)

(:action add-activity20-ct109
:precondition (and (currstate s_4_0) (currstate s_1_2) (currstate s_3_2) (not (currstate s_2_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate s_4_0)) (currstate s_4_2) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_3_2)) (currstate s_3_1)  (increase (total-cost) 1))
)

(:action add-activity20-ct110
:precondition (and (currstate s_4_0) (currstate s_1_2) (currstate s_2_2) (not (currstate s_3_2)) (not (currstate s_5_2)) (not (currstate s_3_0)) )
:effect (and (not (currstate s_4_0)) (currstate s_4_2) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity20-ct111
:precondition (and (currstate s_4_0) (currstate s_1_2) (currstate s_5_2) (not (currstate s_3_2)) (not (currstate s_2_2)) (not (currstate s_3_0)) )
:effect (and (not (currstate s_4_0)) (currstate s_4_2) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity20-ct112
:precondition (and (currstate s_4_0) (currstate s_1_2) (currstate s_3_0) (not (currstate s_2_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate s_4_0)) (currstate s_4_2) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_3_0)) (currstate s_3_3)  (increase (total-cost) 1))
)

(:action add-activity20-ct113
:precondition (and (currstate s_4_0) (currstate s_3_2) (currstate s_2_2) (not (currstate s_1_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate s_4_0)) (currstate s_4_2) (not (currstate s_3_2)) (currstate s_3_1) (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity20-ct114
:precondition (and (currstate s_4_0) (currstate s_3_2) (currstate s_5_2) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate s_4_0)) (currstate s_4_2) (not (currstate s_3_2)) (currstate s_3_1) (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity20-ct115
:precondition (and (currstate s_4_0) (currstate s_2_2) (currstate s_5_2) (not (currstate s_1_2)) (not (currstate s_3_2)) (not (currstate s_3_0)) )
:effect (and (not (currstate s_4_0)) (currstate s_4_2) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity20-ct116
:precondition (and (currstate s_4_0) (currstate s_2_2) (currstate s_3_0) (not (currstate s_1_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate s_4_0)) (currstate s_4_2) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_3_0)) (currstate s_3_3)  (increase (total-cost) 1))
)

(:action add-activity20-ct117
:precondition (and (currstate s_4_0) (currstate s_5_2) (currstate s_3_0) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate s_4_0)) (currstate s_4_2) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_3_0)) (currstate s_3_3)  (increase (total-cost) 1))
)

(:action add-activity20-ct118
:precondition (and (currstate s_1_2) (currstate s_3_2) (currstate s_2_2) (not (currstate s_4_0)) (not (currstate s_5_2)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_3_2)) (currstate s_3_1) (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity20-ct119
:precondition (and (currstate s_1_2) (currstate s_3_2) (currstate s_5_2) (not (currstate s_4_0)) (not (currstate s_2_2)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_3_2)) (currstate s_3_1) (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity20-ct120
:precondition (and (currstate s_1_2) (currstate s_2_2) (currstate s_5_2) (not (currstate s_4_0)) (not (currstate s_3_2)) (not (currstate s_3_0)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity20-ct121
:precondition (and (currstate s_1_2) (currstate s_2_2) (currstate s_3_0) (not (currstate s_4_0)) (not (currstate s_5_2)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_3_0)) (currstate s_3_3)  (increase (total-cost) 1))
)

(:action add-activity20-ct122
:precondition (and (currstate s_1_2) (currstate s_5_2) (currstate s_3_0) (not (currstate s_4_0)) (not (currstate s_2_2)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_3_0)) (currstate s_3_3)  (increase (total-cost) 1))
)

(:action add-activity20-ct123
:precondition (and (currstate s_3_2) (currstate s_2_2) (currstate s_5_2) (not (currstate s_4_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_3_2)) (currstate s_3_1) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity20-ct124
:precondition (and (currstate s_2_2) (currstate s_5_2) (currstate s_3_0) (not (currstate s_4_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_3_0)) (currstate s_3_3)  (increase (total-cost) 1))
)

(:action add-activity20-ct125
:precondition (and (currstate s_4_0) (currstate s_1_2) (currstate s_3_2) (currstate s_2_2) (not (currstate s_5_2)) )
:effect (and (not (currstate s_4_0)) (currstate s_4_2) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_3_2)) (currstate s_3_1) (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity20-ct126
:precondition (and (currstate s_4_0) (currstate s_1_2) (currstate s_3_2) (currstate s_5_2) (not (currstate s_2_2)) )
:effect (and (not (currstate s_4_0)) (currstate s_4_2) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_3_2)) (currstate s_3_1) (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity20-ct127
:precondition (and (currstate s_4_0) (currstate s_1_2) (currstate s_2_2) (currstate s_5_2) (not (currstate s_3_2)) (not (currstate s_3_0)) )
:effect (and (not (currstate s_4_0)) (currstate s_4_2) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity20-ct128
:precondition (and (currstate s_4_0) (currstate s_1_2) (currstate s_2_2) (currstate s_3_0) (not (currstate s_5_2)) )
:effect (and (not (currstate s_4_0)) (currstate s_4_2) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_3_0)) (currstate s_3_3)  (increase (total-cost) 1))
)

(:action add-activity20-ct129
:precondition (and (currstate s_4_0) (currstate s_1_2) (currstate s_5_2) (currstate s_3_0) (not (currstate s_2_2)) )
:effect (and (not (currstate s_4_0)) (currstate s_4_2) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_3_0)) (currstate s_3_3)  (increase (total-cost) 1))
)

(:action add-activity20-ct130
:precondition (and (currstate s_4_0) (currstate s_3_2) (currstate s_2_2) (currstate s_5_2) (not (currstate s_1_2)) )
:effect (and (not (currstate s_4_0)) (currstate s_4_2) (not (currstate s_3_2)) (currstate s_3_1) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity20-ct131
:precondition (and (currstate s_4_0) (currstate s_2_2) (currstate s_5_2) (currstate s_3_0) (not (currstate s_1_2)) )
:effect (and (not (currstate s_4_0)) (currstate s_4_2) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_3_0)) (currstate s_3_3)  (increase (total-cost) 1))
)

(:action add-activity20-ct132
:precondition (and (currstate s_1_2) (currstate s_3_2) (currstate s_2_2) (currstate s_5_2) (not (currstate s_4_0)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_3_2)) (currstate s_3_1) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity20-ct133
:precondition (and (currstate s_1_2) (currstate s_2_2) (currstate s_5_2) (currstate s_3_0) (not (currstate s_4_0)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_3_0)) (currstate s_3_3)  (increase (total-cost) 1))
)

(:action add-activity20-ct134
:precondition (and (currstate s_4_0) (currstate s_1_2) (currstate s_3_2) (currstate s_2_2) (currstate s_5_2) )
:effect (and (not (currstate s_4_0)) (currstate s_4_2) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_3_2)) (currstate s_3_1) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity20-ct135
:precondition (and (currstate s_4_0) (currstate s_1_2) (currstate s_2_2) (currstate s_5_2) (currstate s_3_0) )
:effect (and (not (currstate s_4_0)) (currstate s_4_2) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_3_0)) (currstate s_3_3)  (increase (total-cost) 1))
)

(:action add-activity21-ct136
:precondition (and (currstate s_1_2) (not (currstate s_4_2)) (not (currstate s_2_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1)  (increase (total-cost) 1))
)

(:action add-activity21-ct137
:precondition (and (currstate s_4_2) (not (currstate s_1_2)) (not (currstate s_2_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate s_4_2)) (currstate s_4_1)  (increase (total-cost) 1))
)

(:action add-activity21-ct138
:precondition (and (currstate s_2_2) (not (currstate s_1_2)) (not (currstate s_4_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity21-ct139
:precondition (and (currstate s_5_2) (not (currstate s_1_2)) (not (currstate s_4_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity21-ct140
:precondition (and (currstate s_1_2) (currstate s_4_2) (not (currstate s_2_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_4_2)) (currstate s_4_1)  (increase (total-cost) 1))
)

(:action add-activity21-ct141
:precondition (and (currstate s_1_2) (currstate s_2_2) (not (currstate s_4_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity21-ct142
:precondition (and (currstate s_1_2) (currstate s_5_2) (not (currstate s_4_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity21-ct143
:precondition (and (currstate s_4_2) (currstate s_2_2) (not (currstate s_1_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate s_4_2)) (currstate s_4_1) (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity21-ct144
:precondition (and (currstate s_4_2) (currstate s_5_2) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate s_4_2)) (currstate s_4_1) (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity21-ct145
:precondition (and (currstate s_2_2) (currstate s_5_2) (not (currstate s_1_2)) (not (currstate s_4_2)) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity21-ct146
:precondition (and (currstate s_1_2) (currstate s_4_2) (currstate s_2_2) (not (currstate s_5_2)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_4_2)) (currstate s_4_1) (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity21-ct147
:precondition (and (currstate s_1_2) (currstate s_4_2) (currstate s_5_2) (not (currstate s_2_2)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_4_2)) (currstate s_4_1) (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity21-ct148
:precondition (and (currstate s_1_2) (currstate s_2_2) (currstate s_5_2) (not (currstate s_4_2)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity21-ct149
:precondition (and (currstate s_4_2) (currstate s_2_2) (currstate s_5_2) (not (currstate s_1_2)) )
:effect (and (not (currstate s_4_2)) (currstate s_4_1) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity21-ct150
:precondition (and (currstate s_1_2) (currstate s_4_2) (currstate s_2_2) (currstate s_5_2) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_4_2)) (currstate s_4_1) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity22-ct151
:precondition (and (currstate s_1_2) (not (currstate s_5_0)) (not (currstate s_2_2)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1)  (increase (total-cost) 1))
)

(:action add-activity22-ct152
:precondition (and (currstate s_5_0) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate s_5_0)) (currstate s_5_2)  (increase (total-cost) 1))
)

(:action add-activity22-ct153
:precondition (and (currstate s_2_2) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity22-ct154
:precondition (and (currstate s_1_2) (currstate s_5_0) (not (currstate s_2_2)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_5_0)) (currstate s_5_2)  (increase (total-cost) 1))
)

(:action add-activity22-ct155
:precondition (and (currstate s_1_2) (currstate s_2_2) (not (currstate s_5_0)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity22-ct156
:precondition (and (currstate s_5_0) (currstate s_2_2) (not (currstate s_1_2)) )
:effect (and (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity22-ct157
:precondition (and (currstate s_1_2) (currstate s_5_0) (currstate s_2_2) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity23-ct158
:precondition (and (currstate s_2_2) (not (currstate s_1_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity23-ct159
:precondition (and (currstate s_1_2) (not (currstate s_2_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1)  (increase (total-cost) 1))
)

(:action add-activity23-ct160
:precondition (and (currstate s_5_2) (not (currstate s_2_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_5_2)) (currstate s_5_1)  (increase (total-cost) 1))
)

(:action add-activity23-ct161
:precondition (and (currstate s_2_2) (currstate s_1_2) (not (currstate s_5_2)) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_1_2)) (currstate s_1_1)  (increase (total-cost) 1))
)

(:action add-activity23-ct162
:precondition (and (currstate s_2_2) (currstate s_5_2) (not (currstate s_1_2)) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_5_2)) (currstate s_5_1)  (increase (total-cost) 1))
)

(:action add-activity23-ct163
:precondition (and (currstate s_1_2) (currstate s_5_2) (not (currstate s_2_2)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_5_2)) (currstate s_5_1)  (increase (total-cost) 1))
)

(:action add-activity23-ct164
:precondition (and (currstate s_2_2) (currstate s_1_2) (currstate s_5_2) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_5_2)) (currstate s_5_1)  (increase (total-cost) 1))
)

(:action add-activity5-ct165
:precondition (and (currstate s_1_2) (not (currstate s_2_2)) (not (currstate s_6_0)) (not (currstate s_5_2)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1)  (increase (total-cost) 1))
)

(:action add-activity5-ct166
:precondition (and (currstate s_2_2) (not (currstate s_1_2)) (not (currstate s_6_0)) (not (currstate s_5_2)) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity5-ct167
:precondition (and (currstate s_6_0) (not (currstate s_1_2)) (not (currstate s_2_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate s_6_0)) (currstate s_6_1)  (increase (total-cost) 1))
)

(:action add-activity5-ct168
:precondition (and (currstate s_5_2) (not (currstate s_1_2)) (not (currstate s_2_2)) (not (currstate s_6_0)) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity5-ct169
:precondition (and (currstate s_1_2) (currstate s_2_2) (not (currstate s_6_0)) (not (currstate s_5_2)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity5-ct170
:precondition (and (currstate s_1_2) (currstate s_6_0) (not (currstate s_2_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_6_0)) (currstate s_6_1)  (increase (total-cost) 1))
)

(:action add-activity5-ct171
:precondition (and (currstate s_1_2) (currstate s_5_2) (not (currstate s_2_2)) (not (currstate s_6_0)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity5-ct172
:precondition (and (currstate s_2_2) (currstate s_6_0) (not (currstate s_1_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_6_0)) (currstate s_6_1)  (increase (total-cost) 1))
)

(:action add-activity5-ct173
:precondition (and (currstate s_2_2) (currstate s_5_2) (not (currstate s_1_2)) (not (currstate s_6_0)) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity5-ct174
:precondition (and (currstate s_6_0) (currstate s_5_2) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate s_6_0)) (currstate s_6_1) (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity5-ct175
:precondition (and (currstate s_1_2) (currstate s_2_2) (currstate s_6_0) (not (currstate s_5_2)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_6_0)) (currstate s_6_1)  (increase (total-cost) 1))
)

(:action add-activity5-ct176
:precondition (and (currstate s_1_2) (currstate s_2_2) (currstate s_5_2) (not (currstate s_6_0)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity5-ct177
:precondition (and (currstate s_1_2) (currstate s_6_0) (currstate s_5_2) (not (currstate s_2_2)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_6_0)) (currstate s_6_1) (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity5-ct178
:precondition (and (currstate s_2_2) (currstate s_6_0) (currstate s_5_2) (not (currstate s_1_2)) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_6_0)) (currstate s_6_1) (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity5-ct179
:precondition (and (currstate s_1_2) (currstate s_2_2) (currstate s_6_0) (currstate s_5_2) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_6_0)) (currstate s_6_1) (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity6-ct180
:precondition (and (currstate s_5_2) (not (currstate s_6_0)) (not (currstate s_6_1)) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity6-ct181
:precondition (and (currstate s_6_0) (not (currstate s_5_2)) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate s_6_0)) (currstate s_6_2)  (increase (total-cost) 1))
)

(:action add-activity6-ct182
:precondition (and (currstate s_6_1) (not (currstate s_5_2)) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate s_6_1)) (currstate s_6_2)  (increase (total-cost) 1))
)

(:action add-activity6-ct183
:precondition (and (currstate s_1_2) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_6_1)) (not (currstate s_2_2)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1)  (increase (total-cost) 1))
)

(:action add-activity6-ct184
:precondition (and (currstate s_2_2) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_6_1)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity6-ct185
:precondition (and (currstate s_5_2) (currstate s_6_0) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_6_0)) (currstate s_6_2)  (increase (total-cost) 1))
)

(:action add-activity6-ct186
:precondition (and (currstate s_5_2) (currstate s_6_1) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_6_1)) (currstate s_6_2)  (increase (total-cost) 1))
)

(:action add-activity6-ct187
:precondition (and (currstate s_5_2) (currstate s_1_2) (not (currstate s_6_0)) (not (currstate s_6_1)) (not (currstate s_2_2)) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_1_2)) (currstate s_1_1)  (increase (total-cost) 1))
)

(:action add-activity6-ct188
:precondition (and (currstate s_5_2) (currstate s_2_2) (not (currstate s_6_0)) (not (currstate s_6_1)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity6-ct189
:precondition (and (currstate s_6_0) (currstate s_1_2) (not (currstate s_5_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate s_6_0)) (currstate s_6_2) (not (currstate s_1_2)) (currstate s_1_1)  (increase (total-cost) 1))
)

(:action add-activity6-ct190
:precondition (and (currstate s_6_0) (currstate s_2_2) (not (currstate s_5_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_6_0)) (currstate s_6_2) (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity6-ct191
:precondition (and (currstate s_6_1) (currstate s_1_2) (not (currstate s_5_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate s_6_1)) (currstate s_6_2) (not (currstate s_1_2)) (currstate s_1_1)  (increase (total-cost) 1))
)

(:action add-activity6-ct192
:precondition (and (currstate s_6_1) (currstate s_2_2) (not (currstate s_5_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_6_1)) (currstate s_6_2) (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity6-ct193
:precondition (and (currstate s_1_2) (currstate s_2_2) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_6_1)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity6-ct194
:precondition (and (currstate s_5_2) (currstate s_6_0) (currstate s_1_2) (not (currstate s_2_2)) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_6_0)) (currstate s_6_2) (not (currstate s_1_2)) (currstate s_1_1)  (increase (total-cost) 1))
)

(:action add-activity6-ct195
:precondition (and (currstate s_5_2) (currstate s_6_0) (currstate s_2_2) (not (currstate s_1_2)) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_6_0)) (currstate s_6_2) (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity6-ct196
:precondition (and (currstate s_5_2) (currstate s_6_1) (currstate s_1_2) (not (currstate s_2_2)) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_6_1)) (currstate s_6_2) (not (currstate s_1_2)) (currstate s_1_1)  (increase (total-cost) 1))
)

(:action add-activity6-ct197
:precondition (and (currstate s_5_2) (currstate s_6_1) (currstate s_2_2) (not (currstate s_1_2)) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_6_1)) (currstate s_6_2) (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity6-ct198
:precondition (and (currstate s_5_2) (currstate s_1_2) (currstate s_2_2) (not (currstate s_6_0)) (not (currstate s_6_1)) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity6-ct199
:precondition (and (currstate s_6_0) (currstate s_1_2) (currstate s_2_2) (not (currstate s_5_2)) )
:effect (and (not (currstate s_6_0)) (currstate s_6_2) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity6-ct200
:precondition (and (currstate s_6_1) (currstate s_1_2) (currstate s_2_2) (not (currstate s_5_2)) )
:effect (and (not (currstate s_6_1)) (currstate s_6_2) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity6-ct201
:precondition (and (currstate s_5_2) (currstate s_6_0) (currstate s_1_2) (currstate s_2_2) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_6_0)) (currstate s_6_2) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity6-ct202
:precondition (and (currstate s_5_2) (currstate s_6_1) (currstate s_1_2) (currstate s_2_2) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_6_1)) (currstate s_6_2) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity1-ct203
:precondition (and (currstate s_5_2) (not (currstate s_7_1)) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity1-ct204
:precondition (and (currstate s_7_1) (not (currstate s_5_2)) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate s_7_1)) (currstate s_7_0)  (increase (total-cost) 1))
)

(:action add-activity1-ct205
:precondition (and (currstate s_1_2) (not (currstate s_5_2)) (not (currstate s_7_1)) (not (currstate s_2_2)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1)  (increase (total-cost) 1))
)

(:action add-activity1-ct206
:precondition (and (currstate s_2_2) (not (currstate s_5_2)) (not (currstate s_7_1)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity1-ct207
:precondition (and (currstate s_5_2) (currstate s_7_1) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_7_1)) (currstate s_7_0)  (increase (total-cost) 1))
)

(:action add-activity1-ct208
:precondition (and (currstate s_5_2) (currstate s_1_2) (not (currstate s_7_1)) (not (currstate s_2_2)) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_1_2)) (currstate s_1_1)  (increase (total-cost) 1))
)

(:action add-activity1-ct209
:precondition (and (currstate s_5_2) (currstate s_2_2) (not (currstate s_7_1)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity1-ct210
:precondition (and (currstate s_7_1) (currstate s_1_2) (not (currstate s_5_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate s_7_1)) (currstate s_7_0) (not (currstate s_1_2)) (currstate s_1_1)  (increase (total-cost) 1))
)

(:action add-activity1-ct211
:precondition (and (currstate s_7_1) (currstate s_2_2) (not (currstate s_5_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_7_1)) (currstate s_7_0) (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity1-ct212
:precondition (and (currstate s_1_2) (currstate s_2_2) (not (currstate s_5_2)) (not (currstate s_7_1)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity1-ct213
:precondition (and (currstate s_5_2) (currstate s_7_1) (currstate s_1_2) (not (currstate s_2_2)) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_7_1)) (currstate s_7_0) (not (currstate s_1_2)) (currstate s_1_1)  (increase (total-cost) 1))
)

(:action add-activity1-ct214
:precondition (and (currstate s_5_2) (currstate s_7_1) (currstate s_2_2) (not (currstate s_1_2)) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_7_1)) (currstate s_7_0) (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity1-ct215
:precondition (and (currstate s_5_2) (currstate s_1_2) (currstate s_2_2) (not (currstate s_7_1)) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity1-ct216
:precondition (and (currstate s_7_1) (currstate s_1_2) (currstate s_2_2) (not (currstate s_5_2)) )
:effect (and (not (currstate s_7_1)) (currstate s_7_0) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity1-ct217
:precondition (and (currstate s_5_2) (currstate s_7_1) (currstate s_1_2) (currstate s_2_2) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_7_1)) (currstate s_7_0) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity11-ct218
:precondition (and (currstate s_2_2) (not (currstate s_1_2)) (not (currstate s_8_0)) (not (currstate s_5_2)) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity11-ct219
:precondition (and (currstate s_1_2) (not (currstate s_2_2)) (not (currstate s_8_0)) (not (currstate s_5_2)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1)  (increase (total-cost) 1))
)

(:action add-activity11-ct220
:precondition (and (currstate s_8_0) (not (currstate s_2_2)) (not (currstate s_1_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate s_8_0)) (currstate s_8_1)  (increase (total-cost) 1))
)

(:action add-activity11-ct221
:precondition (and (currstate s_5_2) (not (currstate s_2_2)) (not (currstate s_1_2)) (not (currstate s_8_0)) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity11-ct222
:precondition (and (currstate s_2_2) (currstate s_1_2) (not (currstate s_8_0)) (not (currstate s_5_2)) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_1_2)) (currstate s_1_1)  (increase (total-cost) 1))
)

(:action add-activity11-ct223
:precondition (and (currstate s_2_2) (currstate s_8_0) (not (currstate s_1_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_8_0)) (currstate s_8_1)  (increase (total-cost) 1))
)

(:action add-activity11-ct224
:precondition (and (currstate s_2_2) (currstate s_5_2) (not (currstate s_1_2)) (not (currstate s_8_0)) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity11-ct225
:precondition (and (currstate s_1_2) (currstate s_8_0) (not (currstate s_2_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_8_0)) (currstate s_8_1)  (increase (total-cost) 1))
)

(:action add-activity11-ct226
:precondition (and (currstate s_1_2) (currstate s_5_2) (not (currstate s_2_2)) (not (currstate s_8_0)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity11-ct227
:precondition (and (currstate s_8_0) (currstate s_5_2) (not (currstate s_2_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_8_0)) (currstate s_8_1) (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity11-ct228
:precondition (and (currstate s_2_2) (currstate s_1_2) (currstate s_8_0) (not (currstate s_5_2)) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_8_0)) (currstate s_8_1)  (increase (total-cost) 1))
)

(:action add-activity11-ct229
:precondition (and (currstate s_2_2) (currstate s_1_2) (currstate s_5_2) (not (currstate s_8_0)) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity11-ct230
:precondition (and (currstate s_2_2) (currstate s_8_0) (currstate s_5_2) (not (currstate s_1_2)) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_8_0)) (currstate s_8_1) (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity11-ct231
:precondition (and (currstate s_1_2) (currstate s_8_0) (currstate s_5_2) (not (currstate s_2_2)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_8_0)) (currstate s_8_1) (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity11-ct232
:precondition (and (currstate s_2_2) (currstate s_1_2) (currstate s_8_0) (currstate s_5_2) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_8_0)) (currstate s_8_1) (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity12-ct233
:precondition (and (currstate s_1_2) (not (currstate s_2_2)) (not (currstate s_5_2)) (not (currstate s_8_1)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1)  (increase (total-cost) 1))
)

(:action add-activity12-ct234
:precondition (and (currstate s_2_2) (not (currstate s_1_2)) (not (currstate s_5_2)) (not (currstate s_8_1)) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity12-ct235
:precondition (and (currstate s_5_2) (not (currstate s_1_2)) (not (currstate s_2_2)) (not (currstate s_8_1)) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity12-ct236
:precondition (and (currstate s_8_1) (not (currstate s_1_2)) (not (currstate s_2_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate s_8_1)) (currstate s_8_0)  (increase (total-cost) 1))
)

(:action add-activity12-ct237
:precondition (and (currstate s_1_2) (currstate s_2_2) (not (currstate s_5_2)) (not (currstate s_8_1)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity12-ct238
:precondition (and (currstate s_1_2) (currstate s_5_2) (not (currstate s_2_2)) (not (currstate s_8_1)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity12-ct239
:precondition (and (currstate s_1_2) (currstate s_8_1) (not (currstate s_2_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_8_1)) (currstate s_8_0)  (increase (total-cost) 1))
)

(:action add-activity12-ct240
:precondition (and (currstate s_2_2) (currstate s_5_2) (not (currstate s_1_2)) (not (currstate s_8_1)) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity12-ct241
:precondition (and (currstate s_2_2) (currstate s_8_1) (not (currstate s_1_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_8_1)) (currstate s_8_0)  (increase (total-cost) 1))
)

(:action add-activity12-ct242
:precondition (and (currstate s_5_2) (currstate s_8_1) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_8_1)) (currstate s_8_0)  (increase (total-cost) 1))
)

(:action add-activity12-ct243
:precondition (and (currstate s_1_2) (currstate s_2_2) (currstate s_5_2) (not (currstate s_8_1)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity12-ct244
:precondition (and (currstate s_1_2) (currstate s_2_2) (currstate s_8_1) (not (currstate s_5_2)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_8_1)) (currstate s_8_0)  (increase (total-cost) 1))
)

(:action add-activity12-ct245
:precondition (and (currstate s_1_2) (currstate s_5_2) (currstate s_8_1) (not (currstate s_2_2)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_8_1)) (currstate s_8_0)  (increase (total-cost) 1))
)

(:action add-activity12-ct246
:precondition (and (currstate s_2_2) (currstate s_5_2) (currstate s_8_1) (not (currstate s_1_2)) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_8_1)) (currstate s_8_0)  (increase (total-cost) 1))
)

(:action add-activity12-ct247
:precondition (and (currstate s_1_2) (currstate s_2_2) (currstate s_5_2) (currstate s_8_1) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_8_1)) (currstate s_8_0)  (increase (total-cost) 1))
)

(:action add-activity2-ct248
:precondition (and (currstate s_2_2) (not (currstate s_1_2)) (not (currstate s_5_2)) (not (currstate s_9_0)) (not (currstate s_9_2)) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action add-activity2-ct249
:precondition (and (currstate s_1_2) (not (currstate s_2_2)) (not (currstate s_5_2)) (not (currstate s_9_0)) (not (currstate s_9_2)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1)  (increase (total-cost) 1))
)

(:action add-activity2-ct250
:precondition (and (currstate s_5_2) (not (currstate s_2_2)) (not (currstate s_1_2)) (not (currstate s_9_0)) (not (currstate s_9_2)) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity2-ct251
:precondition (and (currstate s_9_0) (not (currstate s_2_2)) (not (currstate s_1_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate s_9_0)) (currstate s_9_2)  (increase (total-cost) 1))
)

(:action add-activity2-ct252
:precondition (and (currstate s_9_2) (not (currstate s_2_2)) (not (currstate s_1_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate s_9_2)) (currstate s_9_1)  (increase (total-cost) 1))
)

(:action add-activity2-ct253
:precondition (and (currstate s_2_2) (currstate s_1_2) (not (currstate s_5_2)) (not (currstate s_9_0)) (not (currstate s_9_2)) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_1_2)) (currstate s_1_1)  (increase (total-cost) 1))
)

(:action add-activity2-ct254
:precondition (and (currstate s_2_2) (currstate s_5_2) (not (currstate s_1_2)) (not (currstate s_9_0)) (not (currstate s_9_2)) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity2-ct255
:precondition (and (currstate s_2_2) (currstate s_9_0) (not (currstate s_1_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_9_0)) (currstate s_9_2)  (increase (total-cost) 1))
)

(:action add-activity2-ct256
:precondition (and (currstate s_2_2) (currstate s_9_2) (not (currstate s_1_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_9_2)) (currstate s_9_1)  (increase (total-cost) 1))
)

(:action add-activity2-ct257
:precondition (and (currstate s_1_2) (currstate s_5_2) (not (currstate s_2_2)) (not (currstate s_9_0)) (not (currstate s_9_2)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity2-ct258
:precondition (and (currstate s_1_2) (currstate s_9_0) (not (currstate s_2_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_9_0)) (currstate s_9_2)  (increase (total-cost) 1))
)

(:action add-activity2-ct259
:precondition (and (currstate s_1_2) (currstate s_9_2) (not (currstate s_2_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_9_2)) (currstate s_9_1)  (increase (total-cost) 1))
)

(:action add-activity2-ct260
:precondition (and (currstate s_5_2) (currstate s_9_0) (not (currstate s_2_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_9_0)) (currstate s_9_2)  (increase (total-cost) 1))
)

(:action add-activity2-ct261
:precondition (and (currstate s_5_2) (currstate s_9_2) (not (currstate s_2_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_9_2)) (currstate s_9_1)  (increase (total-cost) 1))
)

(:action add-activity2-ct262
:precondition (and (currstate s_2_2) (currstate s_1_2) (currstate s_5_2) (not (currstate s_9_0)) (not (currstate s_9_2)) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action add-activity2-ct263
:precondition (and (currstate s_2_2) (currstate s_1_2) (currstate s_9_0) (not (currstate s_5_2)) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_9_0)) (currstate s_9_2)  (increase (total-cost) 1))
)

(:action add-activity2-ct264
:precondition (and (currstate s_2_2) (currstate s_1_2) (currstate s_9_2) (not (currstate s_5_2)) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_9_2)) (currstate s_9_1)  (increase (total-cost) 1))
)

(:action add-activity2-ct265
:precondition (and (currstate s_2_2) (currstate s_5_2) (currstate s_9_0) (not (currstate s_1_2)) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_9_0)) (currstate s_9_2)  (increase (total-cost) 1))
)

(:action add-activity2-ct266
:precondition (and (currstate s_2_2) (currstate s_5_2) (currstate s_9_2) (not (currstate s_1_2)) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_9_2)) (currstate s_9_1)  (increase (total-cost) 1))
)

(:action add-activity2-ct267
:precondition (and (currstate s_1_2) (currstate s_5_2) (currstate s_9_0) (not (currstate s_2_2)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_9_0)) (currstate s_9_2)  (increase (total-cost) 1))
)

(:action add-activity2-ct268
:precondition (and (currstate s_1_2) (currstate s_5_2) (currstate s_9_2) (not (currstate s_2_2)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_9_2)) (currstate s_9_1)  (increase (total-cost) 1))
)

(:action add-activity2-ct269
:precondition (and (currstate s_2_2) (currstate s_1_2) (currstate s_5_2) (currstate s_9_0) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_9_0)) (currstate s_9_2)  (increase (total-cost) 1))
)

(:action add-activity2-ct270
:precondition (and (currstate s_2_2) (currstate s_1_2) (currstate s_5_2) (currstate s_9_2) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_9_2)) (currstate s_9_1)  (increase (total-cost) 1))
)

(:action sync-activity15-ct41
:precondition (and (currstate t0) (currstate s_5_2) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate t0)) (currstate t1) (not (currstate s_5_2)) (currstate s_5_0) )
)

(:action sync-activity15-ct41
:precondition (and (currstate t3) (currstate s_5_2) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate t3)) (currstate t4) (not (currstate s_5_2)) (currstate s_5_0) )
)

(:action sync-activity15-ct42
:precondition (and (currstate t0) (currstate s_1_2) (not (currstate s_5_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate t0)) (currstate t1) (not (currstate s_1_2)) (currstate s_1_0) )
)

(:action sync-activity15-ct42
:precondition (and (currstate t3) (currstate s_1_2) (not (currstate s_5_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate t3)) (currstate t4) (not (currstate s_1_2)) (currstate s_1_0) )
)

(:action sync-activity15-ct43
:precondition (and (currstate t0) (currstate s_2_2) (not (currstate s_5_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate t0)) (currstate t1) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity15-ct43
:precondition (and (currstate t3) (currstate s_2_2) (not (currstate s_5_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate t3)) (currstate t4) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity15-ct44
:precondition (and (currstate t0) (currstate s_5_2) (currstate s_1_2) (not (currstate s_2_2)) )
:effect (and (not (currstate t0)) (currstate t1) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_1_2)) (currstate s_1_0) )
)

(:action sync-activity15-ct44
:precondition (and (currstate t3) (currstate s_5_2) (currstate s_1_2) (not (currstate s_2_2)) )
:effect (and (not (currstate t3)) (currstate t4) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_1_2)) (currstate s_1_0) )
)

(:action sync-activity15-ct45
:precondition (and (currstate t0) (currstate s_5_2) (currstate s_2_2) (not (currstate s_1_2)) )
:effect (and (not (currstate t0)) (currstate t1) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity15-ct45
:precondition (and (currstate t3) (currstate s_5_2) (currstate s_2_2) (not (currstate s_1_2)) )
:effect (and (not (currstate t3)) (currstate t4) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity15-ct46
:precondition (and (currstate t0) (currstate s_1_2) (currstate s_2_2) (not (currstate s_5_2)) )
:effect (and (not (currstate t0)) (currstate t1) (not (currstate s_1_2)) (currstate s_1_0) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity15-ct46
:precondition (and (currstate t3) (currstate s_1_2) (currstate s_2_2) (not (currstate s_5_2)) )
:effect (and (not (currstate t3)) (currstate t4) (not (currstate s_1_2)) (currstate s_1_0) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity15-ct47
:precondition (and (currstate t0) (currstate s_5_2) (currstate s_1_2) (currstate s_2_2) )
:effect (and (not (currstate t0)) (currstate t1) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_1_2)) (currstate s_1_0) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity15-ct47
:precondition (and (currstate t3) (currstate s_5_2) (currstate s_1_2) (currstate s_2_2) )
:effect (and (not (currstate t3)) (currstate t4) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_1_2)) (currstate s_1_0) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity16-ct48
:precondition (and (currstate t6) (currstate s_1_2) (not (currstate s_5_2)) (not (currstate s_2_0)) )
:effect (and (not (currstate t6)) (currstate t7) (not (currstate s_1_2)) (currstate s_1_1) )
)

(:action sync-activity16-ct48
:precondition (and (currstate t14) (currstate s_1_2) (not (currstate s_5_2)) (not (currstate s_2_0)) )
:effect (and (not (currstate t14)) (currstate t15) (not (currstate s_1_2)) (currstate s_1_1) )
)

(:action sync-activity16-ct49
:precondition (and (currstate t6) (currstate s_5_2) (not (currstate s_1_2)) (not (currstate s_2_0)) )
:effect (and (not (currstate t6)) (currstate t7) (not (currstate s_5_2)) (currstate s_5_0) )
)

(:action sync-activity16-ct49
:precondition (and (currstate t14) (currstate s_5_2) (not (currstate s_1_2)) (not (currstate s_2_0)) )
:effect (and (not (currstate t14)) (currstate t15) (not (currstate s_5_2)) (currstate s_5_0) )
)

(:action sync-activity16-ct50
:precondition (and (currstate t6) (currstate s_2_0) (not (currstate s_1_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate t6)) (currstate t7) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action sync-activity16-ct50
:precondition (and (currstate t14) (currstate s_2_0) (not (currstate s_1_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate t14)) (currstate t15) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action sync-activity16-ct51
:precondition (and (currstate t6) (currstate s_1_2) (currstate s_5_2) (not (currstate s_2_0)) )
:effect (and (not (currstate t6)) (currstate t7) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_5_2)) (currstate s_5_0) )
)

(:action sync-activity16-ct51
:precondition (and (currstate t14) (currstate s_1_2) (currstate s_5_2) (not (currstate s_2_0)) )
:effect (and (not (currstate t14)) (currstate t15) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_5_2)) (currstate s_5_0) )
)

(:action sync-activity16-ct52
:precondition (and (currstate t6) (currstate s_1_2) (currstate s_2_0) (not (currstate s_5_2)) )
:effect (and (not (currstate t6)) (currstate t7) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action sync-activity16-ct52
:precondition (and (currstate t14) (currstate s_1_2) (currstate s_2_0) (not (currstate s_5_2)) )
:effect (and (not (currstate t14)) (currstate t15) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action sync-activity16-ct53
:precondition (and (currstate t6) (currstate s_5_2) (currstate s_2_0) (not (currstate s_1_2)) )
:effect (and (not (currstate t6)) (currstate t7) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action sync-activity16-ct53
:precondition (and (currstate t14) (currstate s_5_2) (currstate s_2_0) (not (currstate s_1_2)) )
:effect (and (not (currstate t14)) (currstate t15) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action sync-activity16-ct54
:precondition (and (currstate t6) (currstate s_1_2) (currstate s_5_2) (currstate s_2_0) )
:effect (and (not (currstate t6)) (currstate t7) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action sync-activity16-ct54
:precondition (and (currstate t14) (currstate s_1_2) (currstate s_5_2) (currstate s_2_0) )
:effect (and (not (currstate t14)) (currstate t15) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action sync-activity19-ct66
:precondition (and (currstate t12) (currstate s_3_0) (not (currstate s_5_2)) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate t12)) (currstate t13) (not (currstate s_3_0)) (currstate s_3_2) )
)

(:action sync-activity19-ct67
:precondition (and (currstate t12) (currstate s_3_3) (not (currstate s_5_2)) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate t12)) (currstate t13) (not (currstate s_3_3)) (currstate s_3_1) )
)

(:action sync-activity19-ct68
:precondition (and (currstate t12) (currstate s_5_2) (not (currstate s_3_0)) (not (currstate s_3_3)) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate t12)) (currstate t13) (not (currstate s_5_2)) (currstate s_5_0) )
)

(:action sync-activity19-ct69
:precondition (and (currstate t12) (currstate s_1_2) (not (currstate s_3_0)) (not (currstate s_3_3)) (not (currstate s_5_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate t12)) (currstate t13) (not (currstate s_1_2)) (currstate s_1_1) )
)

(:action sync-activity19-ct70
:precondition (and (currstate t12) (currstate s_2_2) (not (currstate s_3_0)) (not (currstate s_3_3)) (not (currstate s_5_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate t12)) (currstate t13) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity19-ct71
:precondition (and (currstate t12) (currstate s_3_0) (currstate s_5_2) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate t12)) (currstate t13) (not (currstate s_3_0)) (currstate s_3_2) (not (currstate s_5_2)) (currstate s_5_0) )
)

(:action sync-activity19-ct72
:precondition (and (currstate t12) (currstate s_3_0) (currstate s_1_2) (not (currstate s_5_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate t12)) (currstate t13) (not (currstate s_3_0)) (currstate s_3_2) (not (currstate s_1_2)) (currstate s_1_1) )
)

(:action sync-activity19-ct73
:precondition (and (currstate t12) (currstate s_3_0) (currstate s_2_2) (not (currstate s_5_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate t12)) (currstate t13) (not (currstate s_3_0)) (currstate s_3_2) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity19-ct74
:precondition (and (currstate t12) (currstate s_3_3) (currstate s_5_2) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate t12)) (currstate t13) (not (currstate s_3_3)) (currstate s_3_1) (not (currstate s_5_2)) (currstate s_5_0) )
)

(:action sync-activity19-ct75
:precondition (and (currstate t12) (currstate s_3_3) (currstate s_1_2) (not (currstate s_5_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate t12)) (currstate t13) (not (currstate s_3_3)) (currstate s_3_1) (not (currstate s_1_2)) (currstate s_1_1) )
)

(:action sync-activity19-ct76
:precondition (and (currstate t12) (currstate s_3_3) (currstate s_2_2) (not (currstate s_5_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate t12)) (currstate t13) (not (currstate s_3_3)) (currstate s_3_1) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity19-ct77
:precondition (and (currstate t12) (currstate s_5_2) (currstate s_1_2) (not (currstate s_3_0)) (not (currstate s_3_3)) (not (currstate s_2_2)) )
:effect (and (not (currstate t12)) (currstate t13) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_1_2)) (currstate s_1_1) )
)

(:action sync-activity19-ct78
:precondition (and (currstate t12) (currstate s_5_2) (currstate s_2_2) (not (currstate s_3_0)) (not (currstate s_3_3)) (not (currstate s_1_2)) )
:effect (and (not (currstate t12)) (currstate t13) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity19-ct79
:precondition (and (currstate t12) (currstate s_1_2) (currstate s_2_2) (not (currstate s_3_0)) (not (currstate s_3_3)) (not (currstate s_5_2)) )
:effect (and (not (currstate t12)) (currstate t13) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity19-ct80
:precondition (and (currstate t12) (currstate s_3_0) (currstate s_5_2) (currstate s_1_2) (not (currstate s_2_2)) )
:effect (and (not (currstate t12)) (currstate t13) (not (currstate s_3_0)) (currstate s_3_2) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_1_2)) (currstate s_1_1) )
)

(:action sync-activity19-ct81
:precondition (and (currstate t12) (currstate s_3_0) (currstate s_5_2) (currstate s_2_2) (not (currstate s_1_2)) )
:effect (and (not (currstate t12)) (currstate t13) (not (currstate s_3_0)) (currstate s_3_2) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity19-ct82
:precondition (and (currstate t12) (currstate s_3_0) (currstate s_1_2) (currstate s_2_2) (not (currstate s_5_2)) )
:effect (and (not (currstate t12)) (currstate t13) (not (currstate s_3_0)) (currstate s_3_2) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity19-ct83
:precondition (and (currstate t12) (currstate s_3_3) (currstate s_5_2) (currstate s_1_2) (not (currstate s_2_2)) )
:effect (and (not (currstate t12)) (currstate t13) (not (currstate s_3_3)) (currstate s_3_1) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_1_2)) (currstate s_1_1) )
)

(:action sync-activity19-ct84
:precondition (and (currstate t12) (currstate s_3_3) (currstate s_5_2) (currstate s_2_2) (not (currstate s_1_2)) )
:effect (and (not (currstate t12)) (currstate t13) (not (currstate s_3_3)) (currstate s_3_1) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity19-ct85
:precondition (and (currstate t12) (currstate s_3_3) (currstate s_1_2) (currstate s_2_2) (not (currstate s_5_2)) )
:effect (and (not (currstate t12)) (currstate t13) (not (currstate s_3_3)) (currstate s_3_1) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity19-ct86
:precondition (and (currstate t12) (currstate s_5_2) (currstate s_1_2) (currstate s_2_2) (not (currstate s_3_0)) (not (currstate s_3_3)) )
:effect (and (not (currstate t12)) (currstate t13) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity19-ct87
:precondition (and (currstate t12) (currstate s_3_0) (currstate s_5_2) (currstate s_1_2) (currstate s_2_2) )
:effect (and (not (currstate t12)) (currstate t13) (not (currstate s_3_0)) (currstate s_3_2) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity19-ct88
:precondition (and (currstate t12) (currstate s_3_3) (currstate s_5_2) (currstate s_1_2) (currstate s_2_2) )
:effect (and (not (currstate t12)) (currstate t13) (not (currstate s_3_3)) (currstate s_3_1) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity23-ct158
:precondition (and (currstate t7) (currstate s_2_2) (not (currstate s_1_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate t7)) (currstate t8) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity23-ct158
:precondition (and (currstate t17) (currstate s_2_2) (not (currstate s_1_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate t17)) (currstate t18) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity23-ct159
:precondition (and (currstate t7) (currstate s_1_2) (not (currstate s_2_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate t7)) (currstate t8) (not (currstate s_1_2)) (currstate s_1_1) )
)

(:action sync-activity23-ct159
:precondition (and (currstate t17) (currstate s_1_2) (not (currstate s_2_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate t17)) (currstate t18) (not (currstate s_1_2)) (currstate s_1_1) )
)

(:action sync-activity23-ct160
:precondition (and (currstate t7) (currstate s_5_2) (not (currstate s_2_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate t7)) (currstate t8) (not (currstate s_5_2)) (currstate s_5_1) )
)

(:action sync-activity23-ct160
:precondition (and (currstate t17) (currstate s_5_2) (not (currstate s_2_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate t17)) (currstate t18) (not (currstate s_5_2)) (currstate s_5_1) )
)

(:action sync-activity23-ct161
:precondition (and (currstate t7) (currstate s_2_2) (currstate s_1_2) (not (currstate s_5_2)) )
:effect (and (not (currstate t7)) (currstate t8) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_1_2)) (currstate s_1_1) )
)

(:action sync-activity23-ct161
:precondition (and (currstate t17) (currstate s_2_2) (currstate s_1_2) (not (currstate s_5_2)) )
:effect (and (not (currstate t17)) (currstate t18) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_1_2)) (currstate s_1_1) )
)

(:action sync-activity23-ct162
:precondition (and (currstate t7) (currstate s_2_2) (currstate s_5_2) (not (currstate s_1_2)) )
:effect (and (not (currstate t7)) (currstate t8) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_5_2)) (currstate s_5_1) )
)

(:action sync-activity23-ct162
:precondition (and (currstate t17) (currstate s_2_2) (currstate s_5_2) (not (currstate s_1_2)) )
:effect (and (not (currstate t17)) (currstate t18) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_5_2)) (currstate s_5_1) )
)

(:action sync-activity23-ct163
:precondition (and (currstate t7) (currstate s_1_2) (currstate s_5_2) (not (currstate s_2_2)) )
:effect (and (not (currstate t7)) (currstate t8) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_5_2)) (currstate s_5_1) )
)

(:action sync-activity23-ct163
:precondition (and (currstate t17) (currstate s_1_2) (currstate s_5_2) (not (currstate s_2_2)) )
:effect (and (not (currstate t17)) (currstate t18) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_5_2)) (currstate s_5_1) )
)

(:action sync-activity23-ct164
:precondition (and (currstate t7) (currstate s_2_2) (currstate s_1_2) (currstate s_5_2) )
:effect (and (not (currstate t7)) (currstate t8) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_5_2)) (currstate s_5_1) )
)

(:action sync-activity23-ct164
:precondition (and (currstate t17) (currstate s_2_2) (currstate s_1_2) (currstate s_5_2) )
:effect (and (not (currstate t17)) (currstate t18) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_5_2)) (currstate s_5_1) )
)

(:action sync-activity5-ct165
:precondition (and (currstate t5) (currstate s_1_2) (not (currstate s_2_2)) (not (currstate s_6_0)) (not (currstate s_5_2)) )
:effect (and (not (currstate t5)) (currstate t6) (not (currstate s_1_2)) (currstate s_1_1) )
)

(:action sync-activity5-ct166
:precondition (and (currstate t5) (currstate s_2_2) (not (currstate s_1_2)) (not (currstate s_6_0)) (not (currstate s_5_2)) )
:effect (and (not (currstate t5)) (currstate t6) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity5-ct167
:precondition (and (currstate t5) (currstate s_6_0) (not (currstate s_1_2)) (not (currstate s_2_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate t5)) (currstate t6) (not (currstate s_6_0)) (currstate s_6_1) )
)

(:action sync-activity5-ct168
:precondition (and (currstate t5) (currstate s_5_2) (not (currstate s_1_2)) (not (currstate s_2_2)) (not (currstate s_6_0)) )
:effect (and (not (currstate t5)) (currstate t6) (not (currstate s_5_2)) (currstate s_5_0) )
)

(:action sync-activity5-ct169
:precondition (and (currstate t5) (currstate s_1_2) (currstate s_2_2) (not (currstate s_6_0)) (not (currstate s_5_2)) )
:effect (and (not (currstate t5)) (currstate t6) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity5-ct170
:precondition (and (currstate t5) (currstate s_1_2) (currstate s_6_0) (not (currstate s_2_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate t5)) (currstate t6) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_6_0)) (currstate s_6_1) )
)

(:action sync-activity5-ct171
:precondition (and (currstate t5) (currstate s_1_2) (currstate s_5_2) (not (currstate s_2_2)) (not (currstate s_6_0)) )
:effect (and (not (currstate t5)) (currstate t6) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_5_2)) (currstate s_5_0) )
)

(:action sync-activity5-ct172
:precondition (and (currstate t5) (currstate s_2_2) (currstate s_6_0) (not (currstate s_1_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate t5)) (currstate t6) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_6_0)) (currstate s_6_1) )
)

(:action sync-activity5-ct173
:precondition (and (currstate t5) (currstate s_2_2) (currstate s_5_2) (not (currstate s_1_2)) (not (currstate s_6_0)) )
:effect (and (not (currstate t5)) (currstate t6) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_5_2)) (currstate s_5_0) )
)

(:action sync-activity5-ct174
:precondition (and (currstate t5) (currstate s_6_0) (currstate s_5_2) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate t5)) (currstate t6) (not (currstate s_6_0)) (currstate s_6_1) (not (currstate s_5_2)) (currstate s_5_0) )
)

(:action sync-activity5-ct175
:precondition (and (currstate t5) (currstate s_1_2) (currstate s_2_2) (currstate s_6_0) (not (currstate s_5_2)) )
:effect (and (not (currstate t5)) (currstate t6) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_6_0)) (currstate s_6_1) )
)

(:action sync-activity5-ct176
:precondition (and (currstate t5) (currstate s_1_2) (currstate s_2_2) (currstate s_5_2) (not (currstate s_6_0)) )
:effect (and (not (currstate t5)) (currstate t6) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_5_2)) (currstate s_5_0) )
)

(:action sync-activity5-ct177
:precondition (and (currstate t5) (currstate s_1_2) (currstate s_6_0) (currstate s_5_2) (not (currstate s_2_2)) )
:effect (and (not (currstate t5)) (currstate t6) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_6_0)) (currstate s_6_1) (not (currstate s_5_2)) (currstate s_5_0) )
)

(:action sync-activity5-ct178
:precondition (and (currstate t5) (currstate s_2_2) (currstate s_6_0) (currstate s_5_2) (not (currstate s_1_2)) )
:effect (and (not (currstate t5)) (currstate t6) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_6_0)) (currstate s_6_1) (not (currstate s_5_2)) (currstate s_5_0) )
)

(:action sync-activity5-ct179
:precondition (and (currstate t5) (currstate s_1_2) (currstate s_2_2) (currstate s_6_0) (currstate s_5_2) )
:effect (and (not (currstate t5)) (currstate t6) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_6_0)) (currstate s_6_1) (not (currstate s_5_2)) (currstate s_5_0) )
)

(:action sync-activity6-ct180
:precondition (and (currstate t20) (currstate s_5_2) (not (currstate s_6_0)) (not (currstate s_6_1)) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate t20)) (currstate t21) (not (currstate s_5_2)) (currstate s_5_0) )
)

(:action sync-activity6-ct180
:precondition (and (currstate t21) (currstate s_5_2) (not (currstate s_6_0)) (not (currstate s_6_1)) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate t21)) (currstate t22) (not (currstate s_5_2)) (currstate s_5_0) )
)

(:action sync-activity6-ct181
:precondition (and (currstate t20) (currstate s_6_0) (not (currstate s_5_2)) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate t20)) (currstate t21) (not (currstate s_6_0)) (currstate s_6_2) )
)

(:action sync-activity6-ct181
:precondition (and (currstate t21) (currstate s_6_0) (not (currstate s_5_2)) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate t21)) (currstate t22) (not (currstate s_6_0)) (currstate s_6_2) )
)

(:action sync-activity6-ct182
:precondition (and (currstate t20) (currstate s_6_1) (not (currstate s_5_2)) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate t20)) (currstate t21) (not (currstate s_6_1)) (currstate s_6_2) )
)

(:action sync-activity6-ct182
:precondition (and (currstate t21) (currstate s_6_1) (not (currstate s_5_2)) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate t21)) (currstate t22) (not (currstate s_6_1)) (currstate s_6_2) )
)

(:action sync-activity6-ct183
:precondition (and (currstate t20) (currstate s_1_2) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_6_1)) (not (currstate s_2_2)) )
:effect (and (not (currstate t20)) (currstate t21) (not (currstate s_1_2)) (currstate s_1_1) )
)

(:action sync-activity6-ct183
:precondition (and (currstate t21) (currstate s_1_2) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_6_1)) (not (currstate s_2_2)) )
:effect (and (not (currstate t21)) (currstate t22) (not (currstate s_1_2)) (currstate s_1_1) )
)

(:action sync-activity6-ct184
:precondition (and (currstate t20) (currstate s_2_2) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_6_1)) (not (currstate s_1_2)) )
:effect (and (not (currstate t20)) (currstate t21) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity6-ct184
:precondition (and (currstate t21) (currstate s_2_2) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_6_1)) (not (currstate s_1_2)) )
:effect (and (not (currstate t21)) (currstate t22) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity6-ct185
:precondition (and (currstate t20) (currstate s_5_2) (currstate s_6_0) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate t20)) (currstate t21) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_6_0)) (currstate s_6_2) )
)

(:action sync-activity6-ct185
:precondition (and (currstate t21) (currstate s_5_2) (currstate s_6_0) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate t21)) (currstate t22) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_6_0)) (currstate s_6_2) )
)

(:action sync-activity6-ct186
:precondition (and (currstate t20) (currstate s_5_2) (currstate s_6_1) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate t20)) (currstate t21) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_6_1)) (currstate s_6_2) )
)

(:action sync-activity6-ct186
:precondition (and (currstate t21) (currstate s_5_2) (currstate s_6_1) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate t21)) (currstate t22) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_6_1)) (currstate s_6_2) )
)

(:action sync-activity6-ct187
:precondition (and (currstate t20) (currstate s_5_2) (currstate s_1_2) (not (currstate s_6_0)) (not (currstate s_6_1)) (not (currstate s_2_2)) )
:effect (and (not (currstate t20)) (currstate t21) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_1_2)) (currstate s_1_1) )
)

(:action sync-activity6-ct187
:precondition (and (currstate t21) (currstate s_5_2) (currstate s_1_2) (not (currstate s_6_0)) (not (currstate s_6_1)) (not (currstate s_2_2)) )
:effect (and (not (currstate t21)) (currstate t22) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_1_2)) (currstate s_1_1) )
)

(:action sync-activity6-ct188
:precondition (and (currstate t20) (currstate s_5_2) (currstate s_2_2) (not (currstate s_6_0)) (not (currstate s_6_1)) (not (currstate s_1_2)) )
:effect (and (not (currstate t20)) (currstate t21) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity6-ct188
:precondition (and (currstate t21) (currstate s_5_2) (currstate s_2_2) (not (currstate s_6_0)) (not (currstate s_6_1)) (not (currstate s_1_2)) )
:effect (and (not (currstate t21)) (currstate t22) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity6-ct189
:precondition (and (currstate t20) (currstate s_6_0) (currstate s_1_2) (not (currstate s_5_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate t20)) (currstate t21) (not (currstate s_6_0)) (currstate s_6_2) (not (currstate s_1_2)) (currstate s_1_1) )
)

(:action sync-activity6-ct189
:precondition (and (currstate t21) (currstate s_6_0) (currstate s_1_2) (not (currstate s_5_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate t21)) (currstate t22) (not (currstate s_6_0)) (currstate s_6_2) (not (currstate s_1_2)) (currstate s_1_1) )
)

(:action sync-activity6-ct190
:precondition (and (currstate t20) (currstate s_6_0) (currstate s_2_2) (not (currstate s_5_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate t20)) (currstate t21) (not (currstate s_6_0)) (currstate s_6_2) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity6-ct190
:precondition (and (currstate t21) (currstate s_6_0) (currstate s_2_2) (not (currstate s_5_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate t21)) (currstate t22) (not (currstate s_6_0)) (currstate s_6_2) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity6-ct191
:precondition (and (currstate t20) (currstate s_6_1) (currstate s_1_2) (not (currstate s_5_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate t20)) (currstate t21) (not (currstate s_6_1)) (currstate s_6_2) (not (currstate s_1_2)) (currstate s_1_1) )
)

(:action sync-activity6-ct191
:precondition (and (currstate t21) (currstate s_6_1) (currstate s_1_2) (not (currstate s_5_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate t21)) (currstate t22) (not (currstate s_6_1)) (currstate s_6_2) (not (currstate s_1_2)) (currstate s_1_1) )
)

(:action sync-activity6-ct192
:precondition (and (currstate t20) (currstate s_6_1) (currstate s_2_2) (not (currstate s_5_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate t20)) (currstate t21) (not (currstate s_6_1)) (currstate s_6_2) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity6-ct192
:precondition (and (currstate t21) (currstate s_6_1) (currstate s_2_2) (not (currstate s_5_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate t21)) (currstate t22) (not (currstate s_6_1)) (currstate s_6_2) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity6-ct193
:precondition (and (currstate t20) (currstate s_1_2) (currstate s_2_2) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_6_1)) )
:effect (and (not (currstate t20)) (currstate t21) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity6-ct193
:precondition (and (currstate t21) (currstate s_1_2) (currstate s_2_2) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_6_1)) )
:effect (and (not (currstate t21)) (currstate t22) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity6-ct194
:precondition (and (currstate t20) (currstate s_5_2) (currstate s_6_0) (currstate s_1_2) (not (currstate s_2_2)) )
:effect (and (not (currstate t20)) (currstate t21) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_6_0)) (currstate s_6_2) (not (currstate s_1_2)) (currstate s_1_1) )
)

(:action sync-activity6-ct194
:precondition (and (currstate t21) (currstate s_5_2) (currstate s_6_0) (currstate s_1_2) (not (currstate s_2_2)) )
:effect (and (not (currstate t21)) (currstate t22) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_6_0)) (currstate s_6_2) (not (currstate s_1_2)) (currstate s_1_1) )
)

(:action sync-activity6-ct195
:precondition (and (currstate t20) (currstate s_5_2) (currstate s_6_0) (currstate s_2_2) (not (currstate s_1_2)) )
:effect (and (not (currstate t20)) (currstate t21) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_6_0)) (currstate s_6_2) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity6-ct195
:precondition (and (currstate t21) (currstate s_5_2) (currstate s_6_0) (currstate s_2_2) (not (currstate s_1_2)) )
:effect (and (not (currstate t21)) (currstate t22) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_6_0)) (currstate s_6_2) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity6-ct196
:precondition (and (currstate t20) (currstate s_5_2) (currstate s_6_1) (currstate s_1_2) (not (currstate s_2_2)) )
:effect (and (not (currstate t20)) (currstate t21) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_6_1)) (currstate s_6_2) (not (currstate s_1_2)) (currstate s_1_1) )
)

(:action sync-activity6-ct196
:precondition (and (currstate t21) (currstate s_5_2) (currstate s_6_1) (currstate s_1_2) (not (currstate s_2_2)) )
:effect (and (not (currstate t21)) (currstate t22) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_6_1)) (currstate s_6_2) (not (currstate s_1_2)) (currstate s_1_1) )
)

(:action sync-activity6-ct197
:precondition (and (currstate t20) (currstate s_5_2) (currstate s_6_1) (currstate s_2_2) (not (currstate s_1_2)) )
:effect (and (not (currstate t20)) (currstate t21) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_6_1)) (currstate s_6_2) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity6-ct197
:precondition (and (currstate t21) (currstate s_5_2) (currstate s_6_1) (currstate s_2_2) (not (currstate s_1_2)) )
:effect (and (not (currstate t21)) (currstate t22) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_6_1)) (currstate s_6_2) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity6-ct198
:precondition (and (currstate t20) (currstate s_5_2) (currstate s_1_2) (currstate s_2_2) (not (currstate s_6_0)) (not (currstate s_6_1)) )
:effect (and (not (currstate t20)) (currstate t21) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity6-ct198
:precondition (and (currstate t21) (currstate s_5_2) (currstate s_1_2) (currstate s_2_2) (not (currstate s_6_0)) (not (currstate s_6_1)) )
:effect (and (not (currstate t21)) (currstate t22) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity6-ct199
:precondition (and (currstate t20) (currstate s_6_0) (currstate s_1_2) (currstate s_2_2) (not (currstate s_5_2)) )
:effect (and (not (currstate t20)) (currstate t21) (not (currstate s_6_0)) (currstate s_6_2) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity6-ct199
:precondition (and (currstate t21) (currstate s_6_0) (currstate s_1_2) (currstate s_2_2) (not (currstate s_5_2)) )
:effect (and (not (currstate t21)) (currstate t22) (not (currstate s_6_0)) (currstate s_6_2) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity6-ct200
:precondition (and (currstate t20) (currstate s_6_1) (currstate s_1_2) (currstate s_2_2) (not (currstate s_5_2)) )
:effect (and (not (currstate t20)) (currstate t21) (not (currstate s_6_1)) (currstate s_6_2) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity6-ct200
:precondition (and (currstate t21) (currstate s_6_1) (currstate s_1_2) (currstate s_2_2) (not (currstate s_5_2)) )
:effect (and (not (currstate t21)) (currstate t22) (not (currstate s_6_1)) (currstate s_6_2) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity6-ct201
:precondition (and (currstate t20) (currstate s_5_2) (currstate s_6_0) (currstate s_1_2) (currstate s_2_2) )
:effect (and (not (currstate t20)) (currstate t21) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_6_0)) (currstate s_6_2) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity6-ct201
:precondition (and (currstate t21) (currstate s_5_2) (currstate s_6_0) (currstate s_1_2) (currstate s_2_2) )
:effect (and (not (currstate t21)) (currstate t22) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_6_0)) (currstate s_6_2) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity6-ct202
:precondition (and (currstate t20) (currstate s_5_2) (currstate s_6_1) (currstate s_1_2) (currstate s_2_2) )
:effect (and (not (currstate t20)) (currstate t21) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_6_1)) (currstate s_6_2) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity6-ct202
:precondition (and (currstate t21) (currstate s_5_2) (currstate s_6_1) (currstate s_1_2) (currstate s_2_2) )
:effect (and (not (currstate t21)) (currstate t22) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_6_1)) (currstate s_6_2) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity1-ct203
:precondition (and (currstate t2) (currstate s_5_2) (not (currstate s_7_1)) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate t2)) (currstate t3) (not (currstate s_5_2)) (currstate s_5_0) )
)

(:action sync-activity1-ct204
:precondition (and (currstate t2) (currstate s_7_1) (not (currstate s_5_2)) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate t2)) (currstate t3) (not (currstate s_7_1)) (currstate s_7_0) )
)

(:action sync-activity1-ct205
:precondition (and (currstate t2) (currstate s_1_2) (not (currstate s_5_2)) (not (currstate s_7_1)) (not (currstate s_2_2)) )
:effect (and (not (currstate t2)) (currstate t3) (not (currstate s_1_2)) (currstate s_1_1) )
)

(:action sync-activity1-ct206
:precondition (and (currstate t2) (currstate s_2_2) (not (currstate s_5_2)) (not (currstate s_7_1)) (not (currstate s_1_2)) )
:effect (and (not (currstate t2)) (currstate t3) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity1-ct207
:precondition (and (currstate t2) (currstate s_5_2) (currstate s_7_1) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate t2)) (currstate t3) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_7_1)) (currstate s_7_0) )
)

(:action sync-activity1-ct208
:precondition (and (currstate t2) (currstate s_5_2) (currstate s_1_2) (not (currstate s_7_1)) (not (currstate s_2_2)) )
:effect (and (not (currstate t2)) (currstate t3) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_1_2)) (currstate s_1_1) )
)

(:action sync-activity1-ct209
:precondition (and (currstate t2) (currstate s_5_2) (currstate s_2_2) (not (currstate s_7_1)) (not (currstate s_1_2)) )
:effect (and (not (currstate t2)) (currstate t3) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity1-ct210
:precondition (and (currstate t2) (currstate s_7_1) (currstate s_1_2) (not (currstate s_5_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate t2)) (currstate t3) (not (currstate s_7_1)) (currstate s_7_0) (not (currstate s_1_2)) (currstate s_1_1) )
)

(:action sync-activity1-ct211
:precondition (and (currstate t2) (currstate s_7_1) (currstate s_2_2) (not (currstate s_5_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate t2)) (currstate t3) (not (currstate s_7_1)) (currstate s_7_0) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity1-ct212
:precondition (and (currstate t2) (currstate s_1_2) (currstate s_2_2) (not (currstate s_5_2)) (not (currstate s_7_1)) )
:effect (and (not (currstate t2)) (currstate t3) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity1-ct213
:precondition (and (currstate t2) (currstate s_5_2) (currstate s_7_1) (currstate s_1_2) (not (currstate s_2_2)) )
:effect (and (not (currstate t2)) (currstate t3) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_7_1)) (currstate s_7_0) (not (currstate s_1_2)) (currstate s_1_1) )
)

(:action sync-activity1-ct214
:precondition (and (currstate t2) (currstate s_5_2) (currstate s_7_1) (currstate s_2_2) (not (currstate s_1_2)) )
:effect (and (not (currstate t2)) (currstate t3) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_7_1)) (currstate s_7_0) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity1-ct215
:precondition (and (currstate t2) (currstate s_5_2) (currstate s_1_2) (currstate s_2_2) (not (currstate s_7_1)) )
:effect (and (not (currstate t2)) (currstate t3) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity1-ct216
:precondition (and (currstate t2) (currstate s_7_1) (currstate s_1_2) (currstate s_2_2) (not (currstate s_5_2)) )
:effect (and (not (currstate t2)) (currstate t3) (not (currstate s_7_1)) (currstate s_7_0) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity1-ct217
:precondition (and (currstate t2) (currstate s_5_2) (currstate s_7_1) (currstate s_1_2) (currstate s_2_2) )
:effect (and (not (currstate t2)) (currstate t3) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_7_1)) (currstate s_7_0) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity12-ct233
:precondition (and (currstate t11) (currstate s_1_2) (not (currstate s_2_2)) (not (currstate s_5_2)) (not (currstate s_8_1)) )
:effect (and (not (currstate t11)) (currstate t12) (not (currstate s_1_2)) (currstate s_1_1) )
)

(:action sync-activity12-ct233
:precondition (and (currstate t19) (currstate s_1_2) (not (currstate s_2_2)) (not (currstate s_5_2)) (not (currstate s_8_1)) )
:effect (and (not (currstate t19)) (currstate t20) (not (currstate s_1_2)) (currstate s_1_1) )
)

(:action sync-activity12-ct234
:precondition (and (currstate t11) (currstate s_2_2) (not (currstate s_1_2)) (not (currstate s_5_2)) (not (currstate s_8_1)) )
:effect (and (not (currstate t11)) (currstate t12) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity12-ct234
:precondition (and (currstate t19) (currstate s_2_2) (not (currstate s_1_2)) (not (currstate s_5_2)) (not (currstate s_8_1)) )
:effect (and (not (currstate t19)) (currstate t20) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity12-ct235
:precondition (and (currstate t11) (currstate s_5_2) (not (currstate s_1_2)) (not (currstate s_2_2)) (not (currstate s_8_1)) )
:effect (and (not (currstate t11)) (currstate t12) (not (currstate s_5_2)) (currstate s_5_0) )
)

(:action sync-activity12-ct235
:precondition (and (currstate t19) (currstate s_5_2) (not (currstate s_1_2)) (not (currstate s_2_2)) (not (currstate s_8_1)) )
:effect (and (not (currstate t19)) (currstate t20) (not (currstate s_5_2)) (currstate s_5_0) )
)

(:action sync-activity12-ct236
:precondition (and (currstate t11) (currstate s_8_1) (not (currstate s_1_2)) (not (currstate s_2_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate t11)) (currstate t12) (not (currstate s_8_1)) (currstate s_8_0) )
)

(:action sync-activity12-ct236
:precondition (and (currstate t19) (currstate s_8_1) (not (currstate s_1_2)) (not (currstate s_2_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate t19)) (currstate t20) (not (currstate s_8_1)) (currstate s_8_0) )
)

(:action sync-activity12-ct237
:precondition (and (currstate t11) (currstate s_1_2) (currstate s_2_2) (not (currstate s_5_2)) (not (currstate s_8_1)) )
:effect (and (not (currstate t11)) (currstate t12) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity12-ct237
:precondition (and (currstate t19) (currstate s_1_2) (currstate s_2_2) (not (currstate s_5_2)) (not (currstate s_8_1)) )
:effect (and (not (currstate t19)) (currstate t20) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity12-ct238
:precondition (and (currstate t11) (currstate s_1_2) (currstate s_5_2) (not (currstate s_2_2)) (not (currstate s_8_1)) )
:effect (and (not (currstate t11)) (currstate t12) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_5_2)) (currstate s_5_0) )
)

(:action sync-activity12-ct238
:precondition (and (currstate t19) (currstate s_1_2) (currstate s_5_2) (not (currstate s_2_2)) (not (currstate s_8_1)) )
:effect (and (not (currstate t19)) (currstate t20) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_5_2)) (currstate s_5_0) )
)

(:action sync-activity12-ct239
:precondition (and (currstate t11) (currstate s_1_2) (currstate s_8_1) (not (currstate s_2_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate t11)) (currstate t12) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_8_1)) (currstate s_8_0) )
)

(:action sync-activity12-ct239
:precondition (and (currstate t19) (currstate s_1_2) (currstate s_8_1) (not (currstate s_2_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate t19)) (currstate t20) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_8_1)) (currstate s_8_0) )
)

(:action sync-activity12-ct240
:precondition (and (currstate t11) (currstate s_2_2) (currstate s_5_2) (not (currstate s_1_2)) (not (currstate s_8_1)) )
:effect (and (not (currstate t11)) (currstate t12) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_5_2)) (currstate s_5_0) )
)

(:action sync-activity12-ct240
:precondition (and (currstate t19) (currstate s_2_2) (currstate s_5_2) (not (currstate s_1_2)) (not (currstate s_8_1)) )
:effect (and (not (currstate t19)) (currstate t20) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_5_2)) (currstate s_5_0) )
)

(:action sync-activity12-ct241
:precondition (and (currstate t11) (currstate s_2_2) (currstate s_8_1) (not (currstate s_1_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate t11)) (currstate t12) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_8_1)) (currstate s_8_0) )
)

(:action sync-activity12-ct241
:precondition (and (currstate t19) (currstate s_2_2) (currstate s_8_1) (not (currstate s_1_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate t19)) (currstate t20) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_8_1)) (currstate s_8_0) )
)

(:action sync-activity12-ct242
:precondition (and (currstate t11) (currstate s_5_2) (currstate s_8_1) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate t11)) (currstate t12) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_8_1)) (currstate s_8_0) )
)

(:action sync-activity12-ct242
:precondition (and (currstate t19) (currstate s_5_2) (currstate s_8_1) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate t19)) (currstate t20) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_8_1)) (currstate s_8_0) )
)

(:action sync-activity12-ct243
:precondition (and (currstate t11) (currstate s_1_2) (currstate s_2_2) (currstate s_5_2) (not (currstate s_8_1)) )
:effect (and (not (currstate t11)) (currstate t12) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_5_2)) (currstate s_5_0) )
)

(:action sync-activity12-ct243
:precondition (and (currstate t19) (currstate s_1_2) (currstate s_2_2) (currstate s_5_2) (not (currstate s_8_1)) )
:effect (and (not (currstate t19)) (currstate t20) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_5_2)) (currstate s_5_0) )
)

(:action sync-activity12-ct244
:precondition (and (currstate t11) (currstate s_1_2) (currstate s_2_2) (currstate s_8_1) (not (currstate s_5_2)) )
:effect (and (not (currstate t11)) (currstate t12) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_8_1)) (currstate s_8_0) )
)

(:action sync-activity12-ct244
:precondition (and (currstate t19) (currstate s_1_2) (currstate s_2_2) (currstate s_8_1) (not (currstate s_5_2)) )
:effect (and (not (currstate t19)) (currstate t20) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_8_1)) (currstate s_8_0) )
)

(:action sync-activity12-ct245
:precondition (and (currstate t11) (currstate s_1_2) (currstate s_5_2) (currstate s_8_1) (not (currstate s_2_2)) )
:effect (and (not (currstate t11)) (currstate t12) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_8_1)) (currstate s_8_0) )
)

(:action sync-activity12-ct245
:precondition (and (currstate t19) (currstate s_1_2) (currstate s_5_2) (currstate s_8_1) (not (currstate s_2_2)) )
:effect (and (not (currstate t19)) (currstate t20) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_8_1)) (currstate s_8_0) )
)

(:action sync-activity12-ct246
:precondition (and (currstate t11) (currstate s_2_2) (currstate s_5_2) (currstate s_8_1) (not (currstate s_1_2)) )
:effect (and (not (currstate t11)) (currstate t12) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_8_1)) (currstate s_8_0) )
)

(:action sync-activity12-ct246
:precondition (and (currstate t19) (currstate s_2_2) (currstate s_5_2) (currstate s_8_1) (not (currstate s_1_2)) )
:effect (and (not (currstate t19)) (currstate t20) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_8_1)) (currstate s_8_0) )
)

(:action sync-activity12-ct247
:precondition (and (currstate t11) (currstate s_1_2) (currstate s_2_2) (currstate s_5_2) (currstate s_8_1) )
:effect (and (not (currstate t11)) (currstate t12) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_8_1)) (currstate s_8_0) )
)

(:action sync-activity12-ct247
:precondition (and (currstate t19) (currstate s_1_2) (currstate s_2_2) (currstate s_5_2) (currstate s_8_1) )
:effect (and (not (currstate t19)) (currstate t20) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_8_1)) (currstate s_8_0) )
)

(:action sync-activity2-ct248
:precondition (and (currstate t18) (currstate s_2_2) (not (currstate s_1_2)) (not (currstate s_5_2)) (not (currstate s_9_0)) (not (currstate s_9_2)) )
:effect (and (not (currstate t18)) (currstate t19) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action sync-activity2-ct249
:precondition (and (currstate t18) (currstate s_1_2) (not (currstate s_2_2)) (not (currstate s_5_2)) (not (currstate s_9_0)) (not (currstate s_9_2)) )
:effect (and (not (currstate t18)) (currstate t19) (not (currstate s_1_2)) (currstate s_1_1) )
)

(:action sync-activity2-ct250
:precondition (and (currstate t18) (currstate s_5_2) (not (currstate s_2_2)) (not (currstate s_1_2)) (not (currstate s_9_0)) (not (currstate s_9_2)) )
:effect (and (not (currstate t18)) (currstate t19) (not (currstate s_5_2)) (currstate s_5_0) )
)

(:action sync-activity2-ct251
:precondition (and (currstate t18) (currstate s_9_0) (not (currstate s_2_2)) (not (currstate s_1_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate t18)) (currstate t19) (not (currstate s_9_0)) (currstate s_9_2) )
)

(:action sync-activity2-ct252
:precondition (and (currstate t18) (currstate s_9_2) (not (currstate s_2_2)) (not (currstate s_1_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate t18)) (currstate t19) (not (currstate s_9_2)) (currstate s_9_1) )
)

(:action sync-activity2-ct253
:precondition (and (currstate t18) (currstate s_2_2) (currstate s_1_2) (not (currstate s_5_2)) (not (currstate s_9_0)) (not (currstate s_9_2)) )
:effect (and (not (currstate t18)) (currstate t19) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_1_2)) (currstate s_1_1) )
)

(:action sync-activity2-ct254
:precondition (and (currstate t18) (currstate s_2_2) (currstate s_5_2) (not (currstate s_1_2)) (not (currstate s_9_0)) (not (currstate s_9_2)) )
:effect (and (not (currstate t18)) (currstate t19) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_5_2)) (currstate s_5_0) )
)

(:action sync-activity2-ct255
:precondition (and (currstate t18) (currstate s_2_2) (currstate s_9_0) (not (currstate s_1_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate t18)) (currstate t19) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_9_0)) (currstate s_9_2) )
)

(:action sync-activity2-ct256
:precondition (and (currstate t18) (currstate s_2_2) (currstate s_9_2) (not (currstate s_1_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate t18)) (currstate t19) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_9_2)) (currstate s_9_1) )
)

(:action sync-activity2-ct257
:precondition (and (currstate t18) (currstate s_1_2) (currstate s_5_2) (not (currstate s_2_2)) (not (currstate s_9_0)) (not (currstate s_9_2)) )
:effect (and (not (currstate t18)) (currstate t19) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_5_2)) (currstate s_5_0) )
)

(:action sync-activity2-ct258
:precondition (and (currstate t18) (currstate s_1_2) (currstate s_9_0) (not (currstate s_2_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate t18)) (currstate t19) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_9_0)) (currstate s_9_2) )
)

(:action sync-activity2-ct259
:precondition (and (currstate t18) (currstate s_1_2) (currstate s_9_2) (not (currstate s_2_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate t18)) (currstate t19) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_9_2)) (currstate s_9_1) )
)

(:action sync-activity2-ct260
:precondition (and (currstate t18) (currstate s_5_2) (currstate s_9_0) (not (currstate s_2_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate t18)) (currstate t19) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_9_0)) (currstate s_9_2) )
)

(:action sync-activity2-ct261
:precondition (and (currstate t18) (currstate s_5_2) (currstate s_9_2) (not (currstate s_2_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate t18)) (currstate t19) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_9_2)) (currstate s_9_1) )
)

(:action sync-activity2-ct262
:precondition (and (currstate t18) (currstate s_2_2) (currstate s_1_2) (currstate s_5_2) (not (currstate s_9_0)) (not (currstate s_9_2)) )
:effect (and (not (currstate t18)) (currstate t19) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_5_2)) (currstate s_5_0) )
)

(:action sync-activity2-ct263
:precondition (and (currstate t18) (currstate s_2_2) (currstate s_1_2) (currstate s_9_0) (not (currstate s_5_2)) )
:effect (and (not (currstate t18)) (currstate t19) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_9_0)) (currstate s_9_2) )
)

(:action sync-activity2-ct264
:precondition (and (currstate t18) (currstate s_2_2) (currstate s_1_2) (currstate s_9_2) (not (currstate s_5_2)) )
:effect (and (not (currstate t18)) (currstate t19) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_9_2)) (currstate s_9_1) )
)

(:action sync-activity2-ct265
:precondition (and (currstate t18) (currstate s_2_2) (currstate s_5_2) (currstate s_9_0) (not (currstate s_1_2)) )
:effect (and (not (currstate t18)) (currstate t19) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_9_0)) (currstate s_9_2) )
)

(:action sync-activity2-ct266
:precondition (and (currstate t18) (currstate s_2_2) (currstate s_5_2) (currstate s_9_2) (not (currstate s_1_2)) )
:effect (and (not (currstate t18)) (currstate t19) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_9_2)) (currstate s_9_1) )
)

(:action sync-activity2-ct267
:precondition (and (currstate t18) (currstate s_1_2) (currstate s_5_2) (currstate s_9_0) (not (currstate s_2_2)) )
:effect (and (not (currstate t18)) (currstate t19) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_9_0)) (currstate s_9_2) )
)

(:action sync-activity2-ct268
:precondition (and (currstate t18) (currstate s_1_2) (currstate s_5_2) (currstate s_9_2) (not (currstate s_2_2)) )
:effect (and (not (currstate t18)) (currstate t19) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_9_2)) (currstate s_9_1) )
)

(:action sync-activity2-ct269
:precondition (and (currstate t18) (currstate s_2_2) (currstate s_1_2) (currstate s_5_2) (currstate s_9_0) )
:effect (and (not (currstate t18)) (currstate t19) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_9_0)) (currstate s_9_2) )
)

(:action sync-activity2-ct270
:precondition (and (currstate t18) (currstate s_2_2) (currstate s_1_2) (currstate s_5_2) (currstate s_9_2) )
:effect (and (not (currstate t18)) (currstate t19) (not (currstate s_2_2)) (currstate s_2_0) (not (currstate s_1_2)) (currstate s_1_1) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_9_2)) (currstate s_9_1) )
)

(:action sync-activity15-t0t1
:precondition (and (currstate t0) (not (currstate s_5_2)) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate t0)) (currstate t1))) 

(:action sync-activity13-t1t2
:precondition (and (currstate t1) (not (currstate s_2_2)) (not (currstate s_1_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate t1)) (currstate t2))) 

(:action sync-activity1-t2t3
:precondition (and (currstate t2) (not (currstate s_5_2)) (not (currstate s_7_1)) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate t2)) (currstate t3))) 

(:action sync-activity15-t3t4
:precondition (and (currstate t3) (not (currstate s_5_2)) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate t3)) (currstate t4))) 

(:action sync-activity8-t4t5
:precondition (and (currstate t4) (not (currstate s_1_2)) (not (currstate s_2_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate t4)) (currstate t5))) 

(:action sync-activity5-t5t6
:precondition (and (currstate t5) (not (currstate s_1_2)) (not (currstate s_2_2)) (not (currstate s_6_0)) (not (currstate s_5_2)) )
:effect (and (not (currstate t5)) (currstate t6))) 

(:action sync-activity16-t6t7
:precondition (and (currstate t6) (not (currstate s_1_2)) (not (currstate s_5_2)) (not (currstate s_2_0)) )
:effect (and (not (currstate t6)) (currstate t7))) 

(:action sync-activity23-t7t8
:precondition (and (currstate t7) (not (currstate s_2_2)) (not (currstate s_1_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate t7)) (currstate t8))) 

(:action sync-activity4-t8t9
:precondition (and (currstate t8) (not (currstate s_5_2)) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate t8)) (currstate t9))) 

(:action sync-activity4-t9t10
:precondition (and (currstate t9) (not (currstate s_5_2)) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate t9)) (currstate t10))) 

(:action sync-activity4-t10t11
:precondition (and (currstate t10) (not (currstate s_5_2)) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate t10)) (currstate t11))) 

(:action sync-activity12-t11t12
:precondition (and (currstate t11) (not (currstate s_1_2)) (not (currstate s_2_2)) (not (currstate s_5_2)) (not (currstate s_8_1)) )
:effect (and (not (currstate t11)) (currstate t12))) 

(:action sync-activity19-t12t13
:precondition (and (currstate t12) (not (currstate s_3_0)) (not (currstate s_3_3)) (not (currstate s_5_2)) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate t12)) (currstate t13))) 

(:action sync-activity8-t13t14
:precondition (and (currstate t13) (not (currstate s_1_2)) (not (currstate s_2_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate t13)) (currstate t14))) 

(:action sync-activity16-t14t15
:precondition (and (currstate t14) (not (currstate s_1_2)) (not (currstate s_5_2)) (not (currstate s_2_0)) )
:effect (and (not (currstate t14)) (currstate t15))) 

(:action sync-activity4-t15t16
:precondition (and (currstate t15) (not (currstate s_5_2)) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate t15)) (currstate t16))) 

(:action sync-activity13-t16t17
:precondition (and (currstate t16) (not (currstate s_2_2)) (not (currstate s_1_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate t16)) (currstate t17))) 

(:action sync-activity23-t17t18
:precondition (and (currstate t17) (not (currstate s_2_2)) (not (currstate s_1_2)) (not (currstate s_5_2)) )
:effect (and (not (currstate t17)) (currstate t18))) 

(:action sync-activity2-t18t19
:precondition (and (currstate t18) (not (currstate s_2_2)) (not (currstate s_1_2)) (not (currstate s_5_2)) (not (currstate s_9_0)) (not (currstate s_9_2)) )
:effect (and (not (currstate t18)) (currstate t19))) 

(:action sync-activity12-t19t20
:precondition (and (currstate t19) (not (currstate s_1_2)) (not (currstate s_2_2)) (not (currstate s_5_2)) (not (currstate s_8_1)) )
:effect (and (not (currstate t19)) (currstate t20))) 

(:action sync-activity6-t20t21
:precondition (and (currstate t20) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_6_1)) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate t20)) (currstate t21))) 

(:action sync-activity6-t21t22
:precondition (and (currstate t21) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_6_1)) (not (currstate s_1_2)) (not (currstate s_2_2)) )
:effect (and (not (currstate t21)) (currstate t22))) 

(:action del-activity15-t0t1
:precondition (currstate t0) 
:effect (and (not (currstate t0)) (currstate t1)  (increase (total-cost) 1))
) 

(:action del-activity13-t1t2
:precondition (currstate t1) 
:effect (and (not (currstate t1)) (currstate t2)  (increase (total-cost) 1))
) 

(:action del-activity1-t2t3
:precondition (currstate t2) 
:effect (and (not (currstate t2)) (currstate t3)  (increase (total-cost) 1))
) 

(:action del-activity15-t3t4
:precondition (currstate t3) 
:effect (and (not (currstate t3)) (currstate t4)  (increase (total-cost) 1))
) 

(:action del-activity8-t4t5
:precondition (currstate t4) 
:effect (and (not (currstate t4)) (currstate t5)  (increase (total-cost) 1))
) 

(:action del-activity5-t5t6
:precondition (currstate t5) 
:effect (and (not (currstate t5)) (currstate t6)  (increase (total-cost) 1))
) 

(:action del-activity16-t6t7
:precondition (currstate t6) 
:effect (and (not (currstate t6)) (currstate t7)  (increase (total-cost) 1))
) 

(:action del-activity23-t7t8
:precondition (currstate t7) 
:effect (and (not (currstate t7)) (currstate t8)  (increase (total-cost) 1))
) 

(:action del-activity4-t8t9
:precondition (currstate t8) 
:effect (and (not (currstate t8)) (currstate t9)  (increase (total-cost) 1))
) 

(:action del-activity4-t9t10
:precondition (currstate t9) 
:effect (and (not (currstate t9)) (currstate t10)  (increase (total-cost) 1))
) 

(:action del-activity4-t10t11
:precondition (currstate t10) 
:effect (and (not (currstate t10)) (currstate t11)  (increase (total-cost) 1))
) 

(:action del-activity12-t11t12
:precondition (currstate t11) 
:effect (and (not (currstate t11)) (currstate t12)  (increase (total-cost) 1))
) 

(:action del-activity19-t12t13
:precondition (currstate t12) 
:effect (and (not (currstate t12)) (currstate t13)  (increase (total-cost) 1))
) 

(:action del-activity8-t13t14
:precondition (currstate t13) 
:effect (and (not (currstate t13)) (currstate t14)  (increase (total-cost) 1))
) 

(:action del-activity16-t14t15
:precondition (currstate t14) 
:effect (and (not (currstate t14)) (currstate t15)  (increase (total-cost) 1))
) 

(:action del-activity4-t15t16
:precondition (currstate t15) 
:effect (and (not (currstate t15)) (currstate t16)  (increase (total-cost) 1))
) 

(:action del-activity13-t16t17
:precondition (currstate t16) 
:effect (and (not (currstate t16)) (currstate t17)  (increase (total-cost) 1))
) 

(:action del-activity23-t17t18
:precondition (currstate t17) 
:effect (and (not (currstate t17)) (currstate t18)  (increase (total-cost) 1))
) 

(:action del-activity2-t18t19
:precondition (currstate t18) 
:effect (and (not (currstate t18)) (currstate t19)  (increase (total-cost) 1))
) 

(:action del-activity12-t19t20
:precondition (currstate t19) 
:effect (and (not (currstate t19)) (currstate t20)  (increase (total-cost) 1))
) 

(:action del-activity6-t20t21
:precondition (currstate t20) 
:effect (and (not (currstate t20)) (currstate t21)  (increase (total-cost) 1))
) 

(:action del-activity6-t21t22
:precondition (currstate t21) 
:effect (and (not (currstate t21)) (currstate t22)  (increase (total-cost) 1))
) 

(:action goto-abstract_states-cs0
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_0) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs1
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_0) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs2
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_0) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs3
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_0) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs4
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_0) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs5
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_0) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs6
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_0) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs7
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_0) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs8
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_2) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs9
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_2) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs10
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_2) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs11
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_2) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs12
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_2) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs13
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_2) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs14
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_2) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs15
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_2) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs16
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_0) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs17
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_0) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs18
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_0) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs19
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_0) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs20
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_0) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs21
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_0) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs22
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_0) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs23
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_0) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs24
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_2) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs25
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_2) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs26
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_2) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs27
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_2) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs28
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_2) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs29
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_2) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs30
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_2) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs31
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_2) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs32
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_0) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs33
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_0) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs34
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_0) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs35
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_0) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs36
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_0) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs37
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_0) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs38
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_0) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs39
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_0) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs40
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_2) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs41
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_2) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs42
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_2) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs43
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_2) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs44
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_2) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs45
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_2) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs46
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_2) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs47
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_2) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs48
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_0) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs49
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_0) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs50
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_0) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs51
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_0) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs52
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_0) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs53
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_0) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs54
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_0) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs55
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_0) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs56
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_2) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs57
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_2) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs58
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_2) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs59
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_2) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs60
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_2) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs61
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_2) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs62
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_2) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs63
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_2) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs64
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_0) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs65
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_0) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs66
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_0) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs67
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_0) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs68
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_0) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs69
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_0) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs70
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_0) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs71
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_0) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs72
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_2) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs73
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_2) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs74
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_2) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs75
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_2) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs76
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_2) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs77
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_2) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs78
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_2) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs79
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_2) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs80
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_0) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs81
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_0) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs82
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_0) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs83
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_0) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs84
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_0) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs85
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_0) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs86
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_0) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs87
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_0) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs88
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_2) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs89
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_2) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs90
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_2) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs91
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_2) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs92
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_2) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs93
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_2) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs94
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_2) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs95
:precondition (and (currstate t22) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_2) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs96
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_0) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs97
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_0) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs98
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_0) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs99
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_0) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs100
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_0) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs101
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_0) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs102
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_0) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs103
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_0) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs104
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_2) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs105
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_2) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs106
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_2) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs107
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_2) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs108
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_2) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs109
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_2) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs110
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_2) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs111
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_2) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs112
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_0) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs113
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_0) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs114
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_0) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs115
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_0) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs116
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_0) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs117
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_0) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs118
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_0) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs119
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_0) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs120
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_2) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs121
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_2) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs122
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_2) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs123
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_2) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs124
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_2) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs125
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_2) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs126
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_2) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs127
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_2) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs128
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_0) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs129
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_0) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs130
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_0) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs131
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_0) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs132
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_0) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs133
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_0) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs134
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_0) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs135
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_0) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs136
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_2) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs137
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_2) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs138
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_2) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs139
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_2) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs140
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_2) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs141
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_2) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs142
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_2) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs143
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_2) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs144
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_0) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs145
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_0) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs146
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_0) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs147
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_0) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs148
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_0) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs149
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_0) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs150
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_0) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs151
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_0) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs152
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_2) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs153
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_2) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs154
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_2) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs155
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_2) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs156
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_2) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs157
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_2) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs158
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_2) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs159
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_2) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs160
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_0) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs161
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_0) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs162
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_0) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs163
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_0) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs164
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_0) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs165
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_0) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs166
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_0) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs167
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_0) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs168
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_2) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs169
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_2) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs170
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_2) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs171
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_2) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs172
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_2) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs173
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_2) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs174
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_2) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs175
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_2) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs176
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_0) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs177
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_0) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs178
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_0) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs179
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_0) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs180
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_0) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs181
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_0) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs182
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_0) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs183
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_0) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs184
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_2) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs185
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_2) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs186
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_2) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs187
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_2) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs188
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_2) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs189
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_2) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs190
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_2) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs191
:precondition (and (currstate t22) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_2) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

)