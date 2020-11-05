"Problem Statement: https://leetcode.com/problems/max-consecutive-ones/"

SequenceableCollection >> maxConsecutiveOnes [
   ^ self groupByRuns: [ :e | e == 1 ]; 
          collect:     [ :e | e sumNumbers ];
          max.
]
