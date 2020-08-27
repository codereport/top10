// Solution 1 (bad) from: https://github.com/codereport/Talks/blob/master/2019-05-CppNow/AlgorithmIntuition/Slide-137.cpp

auto solve() { 
   vector v = { 2, 1, 2, 4, 2, 3, 5, 2, 4, 7 }; 
   auto m   = v.front(); // max so far 
   auto ans = 0; 
   for (auto e : v) { 
      m    = max(m, e); 
      ans += m - e; 
   } 
   return ans; 
} 

// Solution 2 (better) from: https://github.com/codereport/Talks/blob/master/2019-05-CppNow/AlgorithmIntuition/Slide-138.cpp
 
auto solve() { 
   vector v = { 2, 1, 2, 4, 2, 3, 5, 2, 4, 7 }; 
   vector u(v.size(), 0); 
   partial_sum(cbegin(v), cend(v), begin(u), 
      [](auto a, auto b) { return max(a, b); }); 
   return transform_reduce(cbegin(v), cend(v), cbegin(u), 0, 
      std::plus{}, 
      [](auto a, auto b) { return abs(a - b); }); 
} 

// Solution 3 (best) from: https://github.com/codereport/Talks/blob/master/2019-05-CppNow/AlgorithmIntuition/Slide-139.cpp

auto solve() { 
   vector v = { 2, 1, 2, 4, 2, 3, 5, 2, 4, 7 }; 
   vector u(v.size(), 0); 
   partial_sum(cbegin(v), cend(v), begin(u), ufo::max{}); 
   return transform_reduce(cbegin(u), cend(u), cbegin(v), 0, 
      std::plus{}, 
      std::minus{}); 
} 

// Solution 4 (best and full) from: https://github.com/codereport/Talks/blob/master/2019-05-CppNow/AlgorithmIntuition/Slide-146.cpp

template<class T> 
using rev = reverse_iterator<T>; 
  
int trap(vector<int>& v) { 
    vector u(v.size(), 0); 
    auto it = max_element(begin(v), end(v)); 
    inclusive_scan(begin(v),  next(it), begin(u),  ufo::max{}); 
    inclusive_scan(rbegin(v), rev(it),  rbegin(u), ufo::max{}); 
    return transform_reduce(cbegin(u), cend(u), cbegin(v), 0, 
        std::plus<>(), 
        std::minus<>()); 
} 
