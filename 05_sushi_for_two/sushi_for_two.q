/ Problem Link

/ Solution 1
chunk: { (where differ x) cut x }
sf2: { 2 * max 1 _ (&) prior count each chunk x }

/ Solution 2
sf2: { 2 * max (&) prior deltas (where differ x) , count x }

/ Tests
sf2 2 2 2 1 1 2 2     / 4
sf2 1 2 1 2 1 2       / 2
sf2 2 2 1 1 1 2 2 2 2 / 6
