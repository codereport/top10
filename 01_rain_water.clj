; Problem Link: https://leetcode.com/problems/trapping-rain-water/
; JDoodle: jdoodle.com/ia/BV9

(defn rain-water [height]
    (apply + 
           (map -
                (map min
                     (reductions max height)
                     (reverse (reductions max (reverse height))))
                 height)))
    

; Tests
(println (rain-water [0,1,0,2,1,0,1,3,2,1,2,1])) ; 6
(println (rain-water [4,2,0,3,2,5]))             ; 9
