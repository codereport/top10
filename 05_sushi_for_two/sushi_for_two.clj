;; JDoodle: jdoodle.com/ia/BEa

(defn sushi-for-two [sushi]
    (->> sushi
         (partition-by identity)
         (map count)
         (partition 2 1)
         (map #(apply min %))
         (apply max)
         (* 2)))
