// Godbolt: https://godbolt.org/z/5vP6nPhMa

auto max_gap_count(std::vector<int> nums) {
    std::ranges::sort(nums, std::greater{});
    auto const diffs = nums
        | std::views::adjacent_transform<2>(std::minus{});
    return std::ranges::count(diffs, std::ranges::max(diffs));
}
