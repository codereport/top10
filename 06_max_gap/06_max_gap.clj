; JDoode: jdoodle.com/ia/D4d

(defn max-gap [nums]
  (->> nums
       (sort)
       (reverse)
       (partition 2 1)
       (map #(apply - %))
       (apply max)))
