// Godbolt: https://godbolt.org/z/4Gab6reqT

auto max_gap(std::vector<int> nums) {
    std::ranges::sort(nums, std::greater{});
    return std::ranges::max(nums
        | adjacent_transform<2>(std::minus{}));
}
