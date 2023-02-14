; JDoodle: jdoodle.com/ia/DOh

(defn three-odds [nums]
    (->> nums
         (partition 3 1)
         (some #(every? odd? %))))
