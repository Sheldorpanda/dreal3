(set-logic QF_NRA_ODE)
(declare-fun tau () Real)
(declare-fun x1 () Real)
(declare-fun x2 () Real)
(define-ode flow_1 ((= d/dt[tau] 1)))
(define-ode flow_2 ((= d/dt[x1] (* 0.015 (- 100 (+ (* (- 1 0.01) x1) (* 0.01 x2)))))))
(define-ode flow_3 ((= d/dt[x1] (* -0.015 (+ (* (- 1 0.01) x1) (* 0.01 x2))))))
(define-ode flow_4 ((= d/dt[x2] (* 0.045 (- 200 (+ (* (- 1 0.01) x2) (* 0.01 x1)))))))
(define-ode flow_5 ((= d/dt[x2] (* -0.045 (+ (* (- 1 0.01) x2) (* 0.01 x1))))))
(declare-fun time_0 () Real)  
(declare-fun tau_0_0 () Real) 
(declare-fun tau_0_t () Real)
(declare-fun mode_1_0 () Int) 
(declare-fun x1_0_0 () Real)  
(declare-fun x1_0_t () Real)
(declare-fun mode_2_0 () Int)
(declare-fun x2_0_0 () Real)  
(declare-fun x2_0_t () Real)
(declare-fun time_1 () Real)  
(declare-fun tau_1_0 () Real) 
(declare-fun tau_1_t () Real)
(declare-fun mode_1_1 () Int) 
(declare-fun x1_1_0 () Real)  
(declare-fun x1_1_t () Real)
(declare-fun mode_2_1 () Int)
(declare-fun x2_1_0 () Real)  
(declare-fun x2_1_t () Real)
(declare-fun time_2 () Real)  
(declare-fun tau_2_0 () Real) 
(declare-fun tau_2_t () Real)
(declare-fun mode_1_2 () Int) 
(declare-fun x1_2_0 () Real)  
(declare-fun x1_2_t () Real)
(declare-fun mode_2_2 () Int)
(declare-fun x2_2_0 () Real)  
(declare-fun x2_2_t () Real)
(assert (<= 0 time_0))  (assert (<= time_0 1))
(assert (<= 0 tau_0_0)) (assert (<= tau_0_0 1))
(assert (<= 0 tau_0_t)) (assert (<= tau_0_t 1))
(assert (and (not (and (= mode_1_0 1) (= mode_1_0 2)))
             (not (and (= mode_2_0 1) (= mode_2_0 2)))))
(assert (<= -20 x1_0_0)) (assert (<= x1_0_0 100))
(assert (<= -20 x1_0_t)) (assert (<= x1_0_t 100))
(assert (<= -20 x2_0_0)) (assert (<= x2_0_0 100))
(assert (<= -20 x2_0_t)) (assert (<= x2_0_t 100))
(assert (<= 0 time_1))  (assert (<= time_1 1))
(assert (<= 0 tau_1_0)) (assert (<= tau_1_0 1))
(assert (<= 0 tau_1_t)) (assert (<= tau_1_t 1))
(assert (and (not (and (= mode_1_1 1) (= mode_1_1 2)))
             (not (and (= mode_2_1 1) (= mode_2_1 2)))))
(assert (<= -20 x1_1_0)) (assert (<= x1_1_0 100))
(assert (<= -20 x1_1_t)) (assert (<= x1_1_t 100))
(assert (<= -20 x2_1_0)) (assert (<= x2_1_0 100))
(assert (<= -20 x2_1_t)) (assert (<= x2_1_t 100))
(assert (<= 0 time_2))  (assert (<= time_2 1))
(assert (<= 0 tau_2_0)) (assert (<= tau_2_0 1))
(assert (<= 0 tau_2_t)) (assert (<= tau_2_t 1))
(assert (and (not (and (= mode_1_2 1) (= mode_1_2 2)))
             (not (and (= mode_2_2 1) (= mode_2_2 2)))))
(assert (<= -20 x1_2_0)) (assert (<= x1_2_0 100))
(assert (<= -20 x1_2_t)) (assert (<= x1_2_t 100))
(assert (<= -20 x2_2_0)) (assert (<= x2_2_0 100))
(assert (<= -20 x2_2_t)) (assert (<= x2_2_t 100))
(assert (= tau_0_0 0))
(assert (= mode_1_0 2))
(assert (and (>= x1_0_0 (- 20 1)) (<= x1_0_0 (+ 20 1))))
(assert (= mode_2_0 2))
(assert (and (>= x2_0_0 (- 20 1)) (<= x2_0_0 (+ 20 1))))
(assert (and (>= tau_0_0 0) (<= tau_0_0 1)
             (>= tau_0_t 0) (<= tau_0_t 1)
             (forall_t 1 [0 time_0] (>= tau_0_t 0))
             (forall_t 2 [0 time_0] (<= tau_0_t 1))))
(assert (and (= [x1_0_t x2_0_t tau_0_t] 
             (pintegral 0. time_0 
                        [x1_0_0 x2_0_0 tau_0_0] 
                        [holder_1 holder_2 holder_3]))
             (connect holder_3 flow_1)))
(assert (or (and (= mode_1_0 2) (connect holder_1 flow_2))
            (and (= mode_1_0 1) (connect holder_1 flow_3))))
(assert (not (and (connect holder_1 flow_2) (connect holder_1 flow_3))))
(assert (or (and (= mode_2_0 2)  (connect holder_2 flow_4))
            (and (= mode_2_0 1) (connect holder_2 flow_5))))
(assert (not (and (connect holder_2 flow_4) (connect holder_2 flow_5))))
(assert (and (= tau_0_t 1) (= tau_1_0 0)))
(assert (and (= x1_1_0 x1_0_t)))
(assert (or (and (<= x1_0_t 20) (= mode_1_1 2))
            (and (> x1_0_t 20) (= mode_1_1 1))))
(assert (and (= x2_1_0 x2_0_t)))
(assert (or (and (<= x2_0_t 20) (= mode_2_1 2))
            (and (> x2_0_t 20) (= mode_2_1 1))))
(assert (and (>= tau_1_0 0) (<= tau_1_0 1)
             (>= tau_1_t 0) (<= tau_1_t 1)
             (forall_t 1 [0 time_1] (>= tau_1_t 0))
             (forall_t 2 [0 time_1] (<= tau_1_t 1))))
(assert (and (= [x1_1_t x2_1_t tau_1_t] 
             (pintegral 0. time_1 
                        [x1_1_0 x2_1_0 tau_1_0] 
                        [holder_4 holder_5 holder_6]))
             (connect holder_6 flow_1)))
(assert (or (and (= mode_1_1 2) (connect holder_4 flow_2))
            (and (= mode_1_1 1) (connect holder_4 flow_3))))
(assert (not (and (connect holder_4 flow_2) (connect holder_4 flow_3))))
(assert (or (and (= mode_2_1 2)  (connect holder_5 flow_4))
            (and (= mode_2_1 1) (connect holder_5 flow_5))))
(assert (not (and (connect holder_5 flow_4) (connect holder_5 flow_5))))
(assert (and (= tau_1_t 1) (= tau_2_0 0)))
(assert (and (= x1_2_0 x1_1_t)))
(assert (or (and (<= x1_1_t 20) (= mode_1_2 2))
            (and (> x1_1_t 20) (= mode_1_2 1))))
(assert (and (= x2_2_0 x2_1_t)))
(assert (or (and (<= x2_1_t 20) (= mode_2_2 2))
            (and (> x2_1_t 20) (= mode_2_2 1))))
(assert (and (>= tau_2_0 0) (<= tau_2_0 1)
             (>= tau_2_t 0) (<= tau_2_t 1)
             (forall_t 1 [0 time_2] (>= tau_2_t 0))
             (forall_t 2 [0 time_2] (<= tau_2_t 1))))
(assert (and (= [x1_2_t x2_2_t tau_2_t] 
             (pintegral 0. time_2 
                        [x1_2_0 x2_2_0 tau_2_0] 
                        [holder_7 holder_8 holder_9]))
             (connect holder_9 flow_1)))
(assert (or (and (= mode_1_2 2) (connect holder_7 flow_2))
            (and (= mode_1_2 1) (connect holder_7 flow_3))))
(assert (not (and (connect holder_7 flow_2) (connect holder_7 flow_3))))
(assert (or (and (= mode_2_2 2)  (connect holder_8 flow_4))
            (and (= mode_2_2 1) (connect holder_8 flow_5))))
(assert (not (and (connect holder_8 flow_4) (connect holder_8 flow_5))))
(assert (or (< x1_2_t (- 20 1)) (> x1_2_t (+ 20 1))))
(assert (or (< x2_2_t (- 20 1)) (> x2_2_t (+ 20 1))))
(check-sat)
(exit)
