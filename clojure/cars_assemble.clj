(ns cars-assemble)

(defn production-rate
  "Returns the assembly line's production rate per hour,
   taking into account its success rate"
  [speed]
  (let [base-rate 221  
        success-rate (cond  
                      (= speed 0) 0
                      (<= speed 4) 1.0
                      (<= speed 8) 0.9
                      (= speed 9) 0.8
                      (= speed 10) 0.77)]
    (* base-rate speed success-rate)))

(defn working-items
  "Calculates how many working cars are produced per minute"
  [speed]
  (int (/ (production-rate speed) 60)))
