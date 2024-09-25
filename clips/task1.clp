(assert (result (* (- (** 4 2) 5) (+ 3 4))))

(assert (result (+ (** 4 2) (/ 28 (+ 5 2)))))

(assert (result (sqrt (+ (** 5 4) (sqrt (+ (** 7 2) 1)) (log 20.5)))))

(assert (result (abs (- (* 3 (exp 3)) (* 2 (log 34))))))

(assert (result (max (** 2 3) (** 3 2) (** 2 5))))

(assert (result (- (** 3 3) (exp (+ 5 (sin 2))))))

(assert (result (+ (sin 1) (/ 1 (- (cos 1) 2)))))

(assert (result (- (* 2 (exp 4)) 4 (abs (sin (** 6 2))))))

(assert (result (+ (* 1.1 (exp 3)) (abs (cos (sqrt ?p))) (- (/ 4 9)))))

