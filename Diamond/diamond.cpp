// https://godbolt.org/z/QiHhSo

#include <algorithm>
#include <iostream>
#include <string>
#include <vector>
#include <ranges>

auto print(auto const& t) { for (auto e : t) std::cout << e; }

auto row(int i, int j) {
    auto s = std::string(i * 2 , ' ') + '\n';
    s[i + j] = s[i - j] = 'A' + j;
    return s;
}

auto diamond(char c) {
    int i = c - 'a' + 1;
    std::vector<std::string> v(i * 2 - 1);
    for (auto j : std::ranges::views::iota(0, i)) v[j] = row(i, j);
    std::copy(v.rbegin() + i, v.rend(), v.begin() + i);
    return v;
}

auto main() -> int {
   print(diamond('c')); 
   print(diamond('f'));
   return 0;
}
