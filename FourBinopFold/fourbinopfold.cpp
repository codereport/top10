
// https://www.godbolt.org/z/8cxMMT

#include <vector>
#include <string>
#include <numeric>
#include <algorithm>
#include <functional>

#include <fmt/core.h>

using namespace std::string_literals;

auto const binops = std::vector<std::function<int(int,int)>>
    { [](int a, int b) { return a + b; },
      [](int a, int b) { return a - b; },
      [](int a, int b) { return a * b; },
      [](int a, int b) { return a / b; } } ;

auto const binop_chars = std::vector{ '+', '-', '*', '/' };

auto print_results(std::vector<int> const& vals) {
    auto indices = std::vector{0, 1, 2, 3};
    auto results = std::vector<std::pair<int,std::string>>{};
    do {
        auto acc = binops[indices[0]](vals[0], vals[1]);
        for (int i = 1; i < indices.size(); i++)
            acc = binops[indices[i]](acc, vals[i+1]);
        auto const equation = std::inner_product(
            std::cbegin(vals) + 1,
            std::cend(vals),
            std::cbegin(indices), 
            std::to_string(vals[0]),
            [](auto acc, auto s) { return acc + s; },
            [](auto val, auto i) { return " "s + binop_chars[i] + " "s + std::to_string(val); });
        results.push_back({acc, equation + " = " + std::to_string(acc)});
    } while (std::ranges::next_permutation(indices).found);
    auto [a, b] = std::ranges::minmax_element(results);
    fmt::print("{}\n{}\n", a->second, b->second);
}

int main () {
    print_results({1, 2, 3, 4, 5});
    return 0;
}
