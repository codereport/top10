; JDoodle: jdoodle.com/ia/D4m

(defn max-gap-count [nums]
  (let [diffs (->> nums
                   (sort)
                   (reverse)
                   (partition 2 1)
                   (map #(apply - %)))]
    (->> diffs
         (filter #(= % (apply max diffs)))
         (count))))

; or 

(defn s [f g x]
  (f x (g x)))

(defn count-elem [coll val]
  (->> coll
       (filter #(= val %))
       (count)))

(defn max-gap-count [nums]
  (->> nums
       (sort)
       (reverse)
       (partition 2 1)
       (map #(apply - %))
       (s count-elem (partial apply max))))