// Godbolt: https://godbolt.org/z/Mca5jKq85

using namespace std::views;

auto sushi_for_two(std::vector<int> sushi) {
    return sushi                                    //
           |> chunk_by($, std::equal_to{})          //
           |> transform($, std::ranges::distance)   //
           |> adjacent_transform<2>($, ufo::min{})  //
           |> std::ranges::max($) * 2;              //
}
