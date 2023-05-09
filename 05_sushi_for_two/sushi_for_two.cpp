// Ranges Solution
// Godbolt: https://godbolt.org/z/4E73bjseY

auto sushi_for_two(std::vector<int> sushi) {
    return 2 * std::ranges::max(sushi
        | chunk_by(std::equal_to{})
        | transform(std::ranges::distance)
        | adjacent_transform<2>(ufo::min{}));
}

// Old-school Solution
// Godbolt: https://godbolt.org/z/9GzaWfo3h

template <int N>
constexpr auto sushi_for_two(std::array<int, N> sushi) {
    int current_sushi = 0;
    int sushi_in_a_row = 0;
    int prev_sushi_in_a_row = 0;
    int max_of_mins = 0;
    for (auto const s : sushi) {
        if (current_sushi != s) {
            current_sushi = s;
            if (prev_sushi_in_a_row == 0) {
                prev_sushi_in_a_row = sushi_in_a_row;
                sushi_in_a_row = 1;
            } else {
                auto const min = std::min(sushi_in_a_row, prev_sushi_in_a_row);
                max_of_mins = std::max(max_of_mins, min);
                prev_sushi_in_a_row = sushi_in_a_row;
                sushi_in_a_row = 1;
            }
        } else {
            sushi_in_a_row += 1;
        }
    }
    auto const min = std::min(sushi_in_a_row, prev_sushi_in_a_row);
    max_of_mins = std::max(max_of_mins, min);
    return max_of_mins * 2;
}
