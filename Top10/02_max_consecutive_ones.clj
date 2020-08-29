;; Problem Statement: https://leetcode.com/problems/max-consecutive-ones/

(defn mco [lst]
  (->> lst
       (partition-by odd?)
       (filter #(odd? (first %)))
       (map count)
       (apply max)))
