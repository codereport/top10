; Problem Link: https://leetcode.com/problems/maximum-subarray/
; JDoodle: jdoodle.com/ia/BSC

(defn kadanes [nums]
    (->> nums
         (reductions #(max %2 (+ %1 %2)))
         (apply max)))

(println (kadanes [-2,1,-3,4,-1,2,1,-5,4])) ; 6
(println (kadanes [1]))                     ; 1
(println (kadanes [5,4,-1,7,8]))            ; 23
