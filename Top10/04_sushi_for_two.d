// Godbolt: https://godbolt.org/z/7h7TT8K5W

import std.algorithm;
import std.range;
import std.stdio;
import std.array; 

ulong sushi_for_two(int[] sushi) {
    return sushi
        .chunkBy!((a, b) => a == b)
        .map!(x => x.array.length)
        .slide(2)
        .map!(x => x.fold!min)
        .fold!max * 2;
}
