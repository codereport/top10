// Godbolt Link: https://godbolt.org/z/3K598jMMa

using namespace std::views;

auto max_gap(std::vector<int> nums) {
    std::ranges::sort(nums);
    return nums                                    //
           |> adjacent_transform<2>($, _c(_sub_))  //
           |> std::ranges::max($);
}
