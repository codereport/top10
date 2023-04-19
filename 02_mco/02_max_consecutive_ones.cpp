// Problem Link: https://leetcode.com/problems/max-consecutive-ones/
// Godbolt: https://godbolt.org/z/KGbza8Ka4

auto mco(std::vector<int> lst) {
    return std::ranges::max(lst
        | chunk_by(std::equal_to{})
        | filter([](auto r) { return *r.begin() == 1; })
        | transform(std::ranges::distance));
}

auto mco(std::vector<int> lst) {
    return std::ranges::max(lst
        | chunk_by(std::equal_to{})
        | transform([](auto r) { 
            return ranges::fold_left(r, 0, std::plus{}); 
        }));
}

// Two Op Fold
auto two_op_fold(auto rng, auto init, auto op1, auto op2) {
    auto res = init;
    for (auto e : rng) {
        auto first = op1(res.first, e);
        auto second = op2(first, res.second);
        res = std::pair{first, second};
    }
    return res.second;
}

auto mco(std::vector<int> vec) {
    return two_op_fold(
        vec, 
        std::pair{0, 0}, 
        [](auto a, auto b) { return b * (a + b); }, 
        [](auto a, auto b) { return std::max(a, b); }); 
}
