-- Problem Link: https://leetcode.com/problems/maximum-subarray/

phi1 a b c x y = a (b x y) (c x y)
ki = flip const

kadanes = maximum . scanl1 (phi1 max ki (+))

-- Tests 
kadanes [-2,1,-3,4,-1,2,1,-5,4] -- 6
kadanes [1]                     -- 1
kadanes [5,4,-1,7,8]            -- 23
