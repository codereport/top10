// Godbolt: https://godbolt.org/z/qG3jPzWGb

using namespace std::views;
using namespace combinators;

auto sushi_for_two(std::vector<int> sushi) {
    return sushi                                   //
           |> chunk_by($, std::equal_to{})         //
           |> transform($, std::ranges::distance)  //
           |> adjacent_transform<2>($, _min_)      //
           |> std::ranges::max($) * 2;             //
}
