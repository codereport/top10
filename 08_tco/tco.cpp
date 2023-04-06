// Solution using flux / blackbird
// https://godbolt.org/z/GvGoncfc6

auto three_consecutive_odds(std::vector<int> vec) {
    return flux::ref(vec)
        .map(flux::pred::odd)
        .scan(_phi1_(_r_, _mul_, _plus_), 0)
        .any(_gte(2));
}
