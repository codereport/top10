// Conor's Original Solution
// Godbolt: https://godbolt.org/z/5vP6nPhMa

auto max_gap_count(std::vector<int> nums) {
    std::ranges::sort(nums, std::greater{});
    auto const diffs = nums
        | std::views::adjacent_transform<2>(std::minus{});
    return std::ranges::count(diffs, std::ranges::max(diffs));
}

// Bryce-inspired Solution
// Godbolt: https://godbolt.org/z/qocce8zPj

struct max_count {
    int value;
    int count;
    explicit max_count(int value, int count) : 
        value{value}, 
        count{count} {}
    max_count inc() const {
        return max_count{value, count + 1};
    }
    max_count operator+ (max_count other) {
        return this->value > other.value ? *this  :
               this->value < other.value ? other : other.inc();
    }
};

template <int N>
auto max_gap_count(std::array<int, N> nums) {
    std::ranges::sort(nums, std::greater{});
    auto const diffs = nums 
        | std::views::adjacent_transform<2>(std::minus{})
        | std::views::transform([](auto e) { return max_count{e, 1}; });
    return std::reduce(
        diffs.begin(), diffs.end(), 
        max_count{0, 0}, 
        std::plus{}).count;
}

