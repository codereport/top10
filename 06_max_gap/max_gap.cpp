// Godbolt: https://godbolt.org/z/P43EhYcsj

// Solution 1
auto max_gap(std::vector<int> nums) {
    std::ranges::sort(nums);
    return std::ranges::max(  //
      nums                    //
      | reverse               //
      | adjacent_transform<2>(std::minus{}));
}

// Solution 2
auto max_gap2(std::vector<int> nums) {
    std::ranges::sort(nums);
    return std::ranges::max(  //
      nums                    //
      | adjacent_transform<2>([](auto a, auto b) { return b - a; }));
}

// Solution 3 (with blackbird)
auto max_gap3(std::vector<int> nums) {
    std::ranges::sort(nums);
    return std::ranges::max(  //
      nums                    //
      | adjacent_transform<2>(_c(_sub_)));
}
