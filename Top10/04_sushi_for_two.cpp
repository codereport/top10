// Godbolt: https://godbolt.org/z/4E73bjseY

auto sushi_for_two(std::vector<int> sushi) {
    return 2 * std::ranges::max(sushi
        | chunk_by(std::equal_to{})
        | transform(std::ranges::distance)
        | adjacent_transform<2>(ufo::min{}));
}
