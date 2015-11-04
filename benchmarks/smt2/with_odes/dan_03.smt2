(set-logic QF_NRA_ODE)
(declare-fun T_generate_gen_automaton () Real)
(declare-fun T_refuel_gen_tank1_automaton () Real)
(declare-fun available_tank1 () Real)
(declare-fun fuellevel_gen () Real)
(declare-fun generator_ran () Real)
(declare-fun lock () Real)
(declare-fun refueling_gen () Real)
(declare-fun T_generate_gen_automaton_0_0 () Real)
(declare-fun T_generate_gen_automaton_0_t () Real)
(declare-fun T_refuel_gen_tank1_automaton_0_0 () Real)
(declare-fun T_refuel_gen_tank1_automaton_0_t () Real)
(declare-fun available_tank1_0_0 () Real)
(declare-fun available_tank1_0_t () Real)
(declare-fun fuellevel_gen_0_0 () Real)
(declare-fun fuellevel_gen_0_t () Real)
(declare-fun generator_ran_0_0 () Real)
(declare-fun generator_ran_0_t () Real)
(declare-fun lock_0_0 () Real)
(declare-fun lock_0_t () Real)
(declare-fun refueling_gen_0_0 () Real)
(declare-fun refueling_gen_0_t () Real)
(declare-fun time_0 () Real)
(declare-fun mode_1_0 () Real)
(declare-fun mode_2_0 () Real)
(declare-fun gamma_refuel_gen_tank1_automaton0_1 () Real)
(declare-fun gamma_refuel_gen_tank1_automaton0_2 () Real)
(declare-fun gamma_refuel_gen_tank1_automaton0_3 () Real)
(declare-fun gamma_refuel_gen_tank1_automaton0_4 () Real)
(declare-fun gamma_refuel_gen_tank1_automaton0_5 () Real)
(declare-fun gamma_generate_gen_automaton0_1 () Real)
(declare-fun gamma_generate_gen_automaton0_2 () Real)
(declare-fun gamma_generate_gen_automaton0_3 () Real)
(declare-fun gamma_generate_gen_automaton0_4 () Real)
(declare-fun gamma_generate_gen_automaton0_5 () Real)
(declare-fun gamma_refuel_gen_tank1_automaton0_1_0_0 () Real)
(declare-fun gamma_refuel_gen_tank1_automaton0_2_0_0 () Real)
(declare-fun gamma_refuel_gen_tank1_automaton0_3_0_0 () Real)
(declare-fun gamma_refuel_gen_tank1_automaton0_4_0_0 () Real)
(declare-fun gamma_refuel_gen_tank1_automaton0_5_0_0 () Real)
(declare-fun gamma_generate_gen_automaton0_1_0_0 () Real)
(declare-fun gamma_generate_gen_automaton0_2_0_0 () Real)
(declare-fun gamma_generate_gen_automaton0_3_0_0 () Real)
(declare-fun gamma_generate_gen_automaton0_4_0_0 () Real)
(declare-fun gamma_generate_gen_automaton0_5_0_0 () Real)
(define-ode flow_0 ((= d/dt[T_generate_gen_automaton] (+ (* 1 gamma_generate_gen_automaton0_1) (* 0 gamma_generate_gen_automaton0_2) (* 1 gamma_generate_gen_automaton0_3) (* 1 gamma_generate_gen_automaton0_4) (* 1 gamma_generate_gen_automaton0_5))) (= d/dt[T_refuel_gen_tank1_automaton] (+ (* 1 gamma_refuel_gen_tank1_automaton0_1) (* 0 gamma_refuel_gen_tank1_automaton0_2) (* 1 gamma_refuel_gen_tank1_automaton0_3) (* 1 gamma_refuel_gen_tank1_automaton0_4) (* 1 gamma_refuel_gen_tank1_automaton0_5))) (= d/dt[fuellevel_gen] (+ (* 2 gamma_refuel_gen_tank1_automaton0_4) (* -1 gamma_generate_gen_automaton0_4))) (= d/dt[gamma_refuel_gen_tank1_automaton0_1] 0) (= d/dt[gamma_refuel_gen_tank1_automaton0_2] 0) (= d/dt[gamma_refuel_gen_tank1_automaton0_3] 0) (= d/dt[gamma_refuel_gen_tank1_automaton0_4] 0) (= d/dt[gamma_refuel_gen_tank1_automaton0_5] 0) (= d/dt[gamma_generate_gen_automaton0_1] 0) (= d/dt[gamma_generate_gen_automaton0_2] 0) (= d/dt[gamma_generate_gen_automaton0_3] 0) (= d/dt[gamma_generate_gen_automaton0_4] 0) (= d/dt[gamma_generate_gen_automaton0_5] 0) (= d/dt[available_tank1] 0) (= d/dt[generator_ran] 0) (= d/dt[lock] 0) (= d/dt[refueling_gen] 0)))
(assert (<= 0 T_generate_gen_automaton_0_0))
(assert (<= T_generate_gen_automaton_0_0 1000))
(assert (<= 0 T_generate_gen_automaton_0_t))
(assert (<= T_generate_gen_automaton_0_t 1000))
(assert (<= 0 T_refuel_gen_tank1_automaton_0_0))
(assert (<= T_refuel_gen_tank1_automaton_0_0 10.001))
(assert (<= 0 T_refuel_gen_tank1_automaton_0_t))
(assert (<= T_refuel_gen_tank1_automaton_0_t 10.001))
(assert (<= 0 available_tank1_0_0))
(assert (<= available_tank1_0_0 1))
(assert (<= 0 available_tank1_0_t))
(assert (<= available_tank1_0_t 1))
(assert (<= -1000 fuellevel_gen_0_0))
(assert (<= fuellevel_gen_0_0 1000))
(assert (<= -1000 fuellevel_gen_0_t))
(assert (<= fuellevel_gen_0_t 1000))
(assert (<= 0 generator_ran_0_0))
(assert (<= generator_ran_0_0 1))
(assert (<= 0 generator_ran_0_t))
(assert (<= generator_ran_0_t 1))
(assert (<= 0 lock_0_0))
(assert (<= lock_0_0 1))
(assert (<= 0 lock_0_t))
(assert (<= lock_0_t 1))
(assert (<= 0 refueling_gen_0_0))
(assert (<= refueling_gen_0_0 1))
(assert (<= 0 refueling_gen_0_t))
(assert (<= refueling_gen_0_t 1))
(assert (<= 0 time_0))
(assert (<= time_0 1000))
(assert (<= 1 mode_1_0))
(assert (<= mode_1_0 5))
(assert (<= 1 mode_2_0))
(assert (<= mode_2_0 5))
(assert (<= 0 gamma_refuel_gen_tank1_automaton0_1_0_0))
(assert (<= gamma_refuel_gen_tank1_automaton0_1_0_0 1))
(assert (<= 0 gamma_refuel_gen_tank1_automaton0_2_0_0))
(assert (<= gamma_refuel_gen_tank1_automaton0_2_0_0 1))
(assert (<= 0 gamma_refuel_gen_tank1_automaton0_3_0_0))
(assert (<= gamma_refuel_gen_tank1_automaton0_3_0_0 1))
(assert (<= 0 gamma_refuel_gen_tank1_automaton0_4_0_0))
(assert (<= gamma_refuel_gen_tank1_automaton0_4_0_0 1))
(assert (<= 0 gamma_refuel_gen_tank1_automaton0_5_0_0))
(assert (<= gamma_refuel_gen_tank1_automaton0_5_0_0 1))
(assert (<= 0 gamma_generate_gen_automaton0_1_0_0))
(assert (<= gamma_generate_gen_automaton0_1_0_0 1))
(assert (<= 0 gamma_generate_gen_automaton0_2_0_0))
(assert (<= gamma_generate_gen_automaton0_2_0_0 1))
(assert (<= 0 gamma_generate_gen_automaton0_3_0_0))
(assert (<= gamma_generate_gen_automaton0_3_0_0 1))
(assert (<= 0 gamma_generate_gen_automaton0_4_0_0))
(assert (<= gamma_generate_gen_automaton0_4_0_0 1))
(assert (<= 0 gamma_generate_gen_automaton0_5_0_0))
(assert (<= gamma_generate_gen_automaton0_5_0_0 1))
(assert (and (= mode_1_0 2) (= T_refuel_gen_tank1_automaton_0_0 0) (= fuellevel_gen_0_0 980) (= lock_0_0 0) (= refueling_gen_0_0 0) (= available_tank1_0_0 1) (= mode_2_0 2) (= T_generate_gen_automaton_0_0 0) (= fuellevel_gen_0_0 980) (= lock_0_0 0) (= generator_ran_0_0 0)))
(assert true)
(assert (and (=> (= gamma_refuel_gen_tank1_automaton0_1_0_0 0) (not (= mode_1_0 1))) (=> (not (= mode_1_0 1)) (= gamma_refuel_gen_tank1_automaton0_1_0_0 0)) (=> (= gamma_refuel_gen_tank1_automaton0_1_0_0 1) (= mode_1_0 1)) (=> (= mode_1_0 1) (= gamma_refuel_gen_tank1_automaton0_1_0_0 1)) (=> (= gamma_refuel_gen_tank1_automaton0_2_0_0 0) (not (= mode_1_0 2))) (=> (not (= mode_1_0 2)) (= gamma_refuel_gen_tank1_automaton0_2_0_0 0)) (=> (= gamma_refuel_gen_tank1_automaton0_2_0_0 1) (= mode_1_0 2)) (=> (= mode_1_0 2) (= gamma_refuel_gen_tank1_automaton0_2_0_0 1)) (=> (= gamma_refuel_gen_tank1_automaton0_3_0_0 0) (not (= mode_1_0 3))) (=> (not (= mode_1_0 3)) (= gamma_refuel_gen_tank1_automaton0_3_0_0 0)) (=> (= gamma_refuel_gen_tank1_automaton0_3_0_0 1) (= mode_1_0 3)) (=> (= mode_1_0 3) (= gamma_refuel_gen_tank1_automaton0_3_0_0 1)) (=> (= gamma_refuel_gen_tank1_automaton0_4_0_0 0) (not (= mode_1_0 4))) (=> (not (= mode_1_0 4)) (= gamma_refuel_gen_tank1_automaton0_4_0_0 0)) (=> (= gamma_refuel_gen_tank1_automaton0_4_0_0 1) (= mode_1_0 4)) (=> (= mode_1_0 4) (= gamma_refuel_gen_tank1_automaton0_4_0_0 1)) (=> (= gamma_refuel_gen_tank1_automaton0_5_0_0 0) (not (= mode_1_0 5))) (=> (not (= mode_1_0 5)) (= gamma_refuel_gen_tank1_automaton0_5_0_0 0)) (=> (= gamma_refuel_gen_tank1_automaton0_5_0_0 1) (= mode_1_0 5)) (=> (= mode_1_0 5) (= gamma_refuel_gen_tank1_automaton0_5_0_0 1)) (=> (= gamma_generate_gen_automaton0_1_0_0 0) (not (= mode_2_0 1))) (=> (not (= mode_2_0 1)) (= gamma_generate_gen_automaton0_1_0_0 0)) (=> (= gamma_generate_gen_automaton0_1_0_0 1) (= mode_2_0 1)) (=> (= mode_2_0 1) (= gamma_generate_gen_automaton0_1_0_0 1)) (=> (= gamma_generate_gen_automaton0_2_0_0 0) (not (= mode_2_0 2))) (=> (not (= mode_2_0 2)) (= gamma_generate_gen_automaton0_2_0_0 0)) (=> (= gamma_generate_gen_automaton0_2_0_0 1) (= mode_2_0 2)) (=> (= mode_2_0 2) (= gamma_generate_gen_automaton0_2_0_0 1)) (=> (= gamma_generate_gen_automaton0_3_0_0 0) (not (= mode_2_0 3))) (=> (not (= mode_2_0 3)) (= gamma_generate_gen_automaton0_3_0_0 0)) (=> (= gamma_generate_gen_automaton0_3_0_0 1) (= mode_2_0 3)) (=> (= mode_2_0 3) (= gamma_generate_gen_automaton0_3_0_0 1)) (=> (= gamma_generate_gen_automaton0_4_0_0 0) (not (= mode_2_0 4))) (=> (not (= mode_2_0 4)) (= gamma_generate_gen_automaton0_4_0_0 0)) (=> (= gamma_generate_gen_automaton0_4_0_0 1) (= mode_2_0 4)) (=> (= mode_2_0 4) (= gamma_generate_gen_automaton0_4_0_0 1)) (=> (= gamma_generate_gen_automaton0_5_0_0 0) (not (= mode_2_0 5))) (=> (not (= mode_2_0 5)) (= gamma_generate_gen_automaton0_5_0_0 0)) (=> (= gamma_generate_gen_automaton0_5_0_0 1) (= mode_2_0 5)) (=> (= mode_2_0 5) (= gamma_generate_gen_automaton0_5_0_0 1)) (= [T_generate_gen_automaton_0_t T_refuel_gen_tank1_automaton_0_t fuellevel_gen_0_t gamma_refuel_gen_tank1_automaton0_1_0_0 gamma_refuel_gen_tank1_automaton0_2_0_0 gamma_refuel_gen_tank1_automaton0_3_0_0 gamma_refuel_gen_tank1_automaton0_4_0_0 gamma_refuel_gen_tank1_automaton0_5_0_0 gamma_generate_gen_automaton0_1_0_0 gamma_generate_gen_automaton0_2_0_0 gamma_generate_gen_automaton0_3_0_0 gamma_generate_gen_automaton0_4_0_0 gamma_generate_gen_automaton0_5_0_0 available_tank1_0_t generator_ran_0_t lock_0_t refueling_gen_0_t] (integral 0. time_0 [T_generate_gen_automaton_0_0 T_refuel_gen_tank1_automaton_0_0 fuellevel_gen_0_0 gamma_refuel_gen_tank1_automaton0_1_0_0 gamma_refuel_gen_tank1_automaton0_2_0_0 gamma_refuel_gen_tank1_automaton0_3_0_0 gamma_refuel_gen_tank1_automaton0_4_0_0 gamma_refuel_gen_tank1_automaton0_5_0_0 gamma_generate_gen_automaton0_1_0_0 gamma_generate_gen_automaton0_2_0_0 gamma_generate_gen_automaton0_3_0_0 gamma_generate_gen_automaton0_4_0_0 gamma_generate_gen_automaton0_5_0_0 available_tank1_0_0 generator_ran_0_0 lock_0_0 refueling_gen_0_0] flow_0)) (=> (= mode_2_0 5) (forall_t 0 [0 time_0] true)) (=> (= mode_2_0 4) (forall_t 0 [0 time_0] (and (>= fuellevel_gen_0_t 0) (<= T_generate_gen_automaton_0_t (- 1000 0.001))))) (=> (= mode_2_0 3) (forall_t 0 [0 time_0] true)) (=> (= mode_2_0 2) (forall_t 0 [0 time_0] true)) (=> (= mode_2_0 1) (forall_t 0 [0 time_0] (<= T_generate_gen_automaton_0_t 0.001))) (=> (= mode_1_0 5) (forall_t 0 [0 time_0] true)) (=> (= mode_1_0 4) (forall_t 0 [0 time_0] (and (< fuellevel_gen_0_t 980) (<= T_refuel_gen_tank1_automaton_0_t (- 10 0.001))))) (=> (= mode_1_0 3) (forall_t 0 [0 time_0] true)) (=> (= mode_1_0 2) (forall_t 0 [0 time_0] true)) (=> (= mode_1_0 1) (forall_t 0 [0 time_0] (<= T_refuel_gen_tank1_automaton_0_t 0.001)))))
(assert (and (= generator_ran_0_t 1) (or (not (= mode_1_0 5)) (not (= mode_1_0 1))) (or (not (= mode_1_0 4)) (not (= mode_1_0 1))) (or (not (= mode_1_0 3)) (not (= mode_1_0 1))) (or (not (= mode_1_0 2)) (not (= mode_1_0 1))) (or (not (= mode_1_0 5)) (not (= mode_1_0 2))) (or (not (= mode_1_0 4)) (not (= mode_1_0 2))) (or (not (= mode_1_0 3)) (not (= mode_1_0 2))) (or (not (= mode_1_0 1)) (not (= mode_1_0 2))) (or (not (= mode_1_0 5)) (not (= mode_1_0 3))) (or (not (= mode_1_0 4)) (not (= mode_1_0 3))) (or (not (= mode_1_0 2)) (not (= mode_1_0 3))) (or (not (= mode_1_0 1)) (not (= mode_1_0 3))) (or (not (= mode_1_0 5)) (not (= mode_1_0 4))) (or (not (= mode_1_0 3)) (not (= mode_1_0 4))) (or (not (= mode_1_0 2)) (not (= mode_1_0 4))) (or (not (= mode_1_0 1)) (not (= mode_1_0 4))) (or (not (= mode_1_0 4)) (not (= mode_1_0 5))) (or (not (= mode_1_0 3)) (not (= mode_1_0 5))) (or (not (= mode_1_0 2)) (not (= mode_1_0 5))) (or (not (= mode_1_0 1)) (not (= mode_1_0 5))) (or (not (= mode_2_0 5)) (not (= mode_2_0 1))) (or (not (= mode_2_0 4)) (not (= mode_2_0 1))) (or (not (= mode_2_0 3)) (not (= mode_2_0 1))) (or (not (= mode_2_0 2)) (not (= mode_2_0 1))) (or (not (= mode_2_0 5)) (not (= mode_2_0 2))) (or (not (= mode_2_0 4)) (not (= mode_2_0 2))) (or (not (= mode_2_0 3)) (not (= mode_2_0 2))) (or (not (= mode_2_0 1)) (not (= mode_2_0 2))) (or (not (= mode_2_0 5)) (not (= mode_2_0 3))) (or (not (= mode_2_0 4)) (not (= mode_2_0 3))) (or (not (= mode_2_0 2)) (not (= mode_2_0 3))) (or (not (= mode_2_0 1)) (not (= mode_2_0 3))) (or (not (= mode_2_0 5)) (not (= mode_2_0 4))) (or (not (= mode_2_0 3)) (not (= mode_2_0 4))) (or (not (= mode_2_0 2)) (not (= mode_2_0 4))) (or (not (= mode_2_0 1)) (not (= mode_2_0 4))) (or (not (= mode_2_0 4)) (not (= mode_2_0 5))) (or (not (= mode_2_0 3)) (not (= mode_2_0 5))) (or (not (= mode_2_0 2)) (not (= mode_2_0 5))) (or (not (= mode_2_0 1)) (not (= mode_2_0 5)))))
(check-sat)
(exit)
