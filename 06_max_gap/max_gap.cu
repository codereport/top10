
#include <thrust/adjacent_difference.h>
#include <thrust/extrema.h> // max_element
#include <thrust/iterator/zip_iterator.h>
#include <thrust/device_vector.h>

auto max_gap_device(thrust::device_vector<int> nums) -> int 
{
    auto diffs = thrust::device_vector<int>(nums.size());
    thrust::adjacent_difference(nums.begin(), nums.end(), diffs.begin());
    return *thrust::max_element(diffs.begin() + 1, diffs.end());
}

auto max_gap2_device(thrust::device_vector<int> nums) -> int 
{
    return thrust::transform_reduce(
        thrust::make_zip_iterator(thrust::make_tuple(nums.begin() + 1, nums.begin())), 
        thrust::make_zip_iterator(thrust::make_tuple(nums.end(),       nums.end() - 1)),
        [] __host__ __device__ (thrust::tuple<int, int> t) { return thrust::get<0>(t) - thrust::get<1>(t); }, 0, 
        [] __host__ __device__ (int a, int b) { return std::max(a, b); });
}   
