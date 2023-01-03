// Problem Link: https://leetcode.com/problems/max-consecutive-ones/
// Godbolt: https://godbolt.org/z/r4Yf55fWf

auto mco(std::vector<int> lst) {
    return std::ranges::max(lst
        | chunk_by(std::equal_to{})
        | filter([](auto r) { return *r.begin() == 1; })
        | transform(std::ranges::distance));
}
