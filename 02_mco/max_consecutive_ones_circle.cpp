// Godbolt: https://godbolt.org/z/Mc11bWGd3

using namespace std::views;

auto mco(std::vector<int> lst) {
    return lst
        |> chunk_by($, std::equal_to{})
        |> filter($, [](auto r) { return *r.begin() == 1; })
        |> transform($, std::ranges::distance)
        |> std::ranges::max($);
}

auto mco2(std::vector<int> lst) {
    auto sum = [](auto r) { return ranges::fold_left(r, 0, std::plus{}); };
    return lst
        |> chunk_by($, std::equal_to{})
        |> transform($, sum)
        |> std::ranges::max($);
}
