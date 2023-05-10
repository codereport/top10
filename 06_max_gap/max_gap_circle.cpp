// Godbolt Link: https://godbolt.org/z/4xz1c3j4v

using namespace std::views;

auto max_gap(std::vector<int> nums) {
    std::ranges::sort(nums);
    return nums                                          //
           |> adjacent_transform<2>($, ufo::abs_diff{})  //
           |> std::ranges::max($);
}
