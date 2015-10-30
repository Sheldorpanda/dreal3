(set-logic QF_NRA_ODE)
(declare-fun y              () Real)
(declare-fun x              () Real)
(declare-fun on             () Real)
(declare-fun aim_height     () Real)
(declare-fun y_0_0          () Real [-10, 10])
(declare-fun y_0_t          () Real [-10, 10])
(declare-fun y_1_0          () Real [-10, 10])
(declare-fun y_1_t          () Real [-10, 10])
(declare-fun x_0_0          () Real [-10, 10])
(declare-fun x_0_t          () Real [-10, 10])
(declare-fun x_1_0          () Real [-10, 10])
(declare-fun x_1_t          () Real [-10, 10])
(declare-fun on_0_0         () Real [0, 1])
(declare-fun on_0_t         () Real [0, 1])
(declare-fun on_1_0         () Real [0, 1])
(declare-fun on_1_t         () Real [0, 1])
(declare-fun aim_height_0_0 () Real [-50, 50])
(declare-fun aim_height_0_t () Real [-50, 50])
(declare-fun aim_height_1_0 () Real [-50, 50])
(declare-fun aim_height_1_t () Real [-50, 50])
(declare-fun time_0         () Real [0, 10])
(declare-fun time_1         () Real [0, 10])
(declare-fun mode_0         () Int  [1, 2])
(declare-fun mode_1         () Int  [1, 2])
(define-ode flow_1 ((= d/dt[y] 0.000000)
                    (= d/dt[x] 0.000000)
                    (= d/dt[on] 0.000000)
                    (= d/dt[aim_height] 0.000000)))
(define-ode flow_2 ((= d/dt[y] 0.000000)
                    (= d/dt[x] 0.000000)
                    (= d/dt[on] 0.000000)
                    (= d/dt[aim_height] 0.000000)))
(assert (and
         (= [y_0_t x_0_t on_0_t aim_height_0_t] (integral 0. time_0 [y_0_0 x_0_0 on_0_0 aim_height_0_0] flow_1))
         (= [y_1_t x_1_t on_1_t aim_height_1_t] (integral 0. time_1 [y_1_0 x_1_0 on_1_0 aim_height_1_0] flow_2))
         (= aim_height_0_0 0.000000)
         (= aim_height_1_0 (- y_0_t (* x_0_t x_0_t)))
         (= aim_height_1_t 5.000000)
         (= mode_0 1.000000)
         (= mode_1 2.000000)
         (= on_0_0 0.000000)
         (= on_0_t 0.000000)
         (= on_1_0 1.000000)
         (>= on_1_0 1.000000)
         (>= on_1_t 1.000000)
         (forall_t 1.000000 [0.000000 time_0] (<= -50.000000 aim_height_0_t))
         (forall_t 1.000000 [0.000000 time_0] (<= on_0_t 0.000000))
         (forall_t 1.000000 [0.000000 time_0] (>= 50.000000 aim_height_0_t))
         (forall_t 2.000000 [0.000000 time_1] (>= on_1_t 1.000000))
         ))
(check-sat)
(exit)
