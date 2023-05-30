// Godbolt: https://godbolt.org/z/P6PxMnhMz

namespace view = ranges::views;
using namespace combinators;

// Solution 1
auto sushi_for_two(std::vector<int> sushi) {
    return sushi                                               //
           |> std::views::chunk_by($, _eq_)                    //
           |> std::views::transform($, std::ranges::distance)  //
           |> std::views::adjacent_transform<2>($, _min_)      //
           |> std::ranges::max($) * 2;                         
}

// Solution 2
auto sushi_for_two2(std::vector<int> sushi) {
    return sushi                                                            //
           |> view::zip_with(_neq_, $, $ | view::drop(1))                   //
           |> view::zip($, view::iota(1))                                   //
           |> view::filter($, _fst)                                         //
           |> view::values($)                                               //
           |> view::concat(view::single(0), $, view::single(sushi.size()))  //
           |> view::zip_with(_sub_, $ | view::drop(1), $)                   //
           |> view::zip_with(_min_, $, $ | view::drop(1))                   //
           |> std::ranges::max($) * 2;                                      //
}

// Solution 3
auto adjacent_transform_2(auto&& rng, auto op) { return rng |> view::zip_with(op, $, $ | view::drop(1)); }
auto differ(auto&& rng) { return adjacent_transform_2(rng, _neq_); }
auto deltas(auto&& rng) { return adjacent_transform_2(rng, _c(_sub_)); }

auto indices(auto&& rng) {
    return rng                            //
           |> view::zip($, view::iota(1)) //
           |> view::filter($, _fst)       //
           |> view::values($)             //
           |> view::concat(view::single(0), $);  
}

auto sushi_for_two3(std::vector<int> sushi) {
    return sushi                                           //
           |> differ($)                                    //
           |> indices($)                                   //
           |> view::concat($, view::single(sushi.size()))  //
           |> deltas($)                                    //
           |> adjacent_transform_2($, _min_)               //
           |> std::ranges::max($) * 2;       
}
