(set-logic QF_NRA_ODE)
(declare-fun x1 () Real)
(declare-fun x2 () Real)
(define-ode flow_1 ((= d/dt[x1] 0.0)(= d/dt[x2] 1.0)))
(declare-fun x1_0 () Real)
(declare-fun x1_t () Real)
(declare-fun x2_0 () Real)
(declare-fun x2_t () Real)
(declare-fun time_0 () Real)
(assert (and (<= 0.9999 time_0) (<= time_0 1)))
(assert (= x1_0 0))
(assert (= x1_t 0))
(assert (= x2_0 0))
(assert (= x2_t 1))
(assert (= [x1_t x2_t] (integral 0. time_0 [x1_0 x2_0] flow_1)))
(check-sat)
(exit)
