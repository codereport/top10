
import timeit 
import itertools as it

def iota(n):
    return [i for i in range(n)]

def mod_iota(n):
    a = [i      for i in range(n)]
    b = [i % 10 for i in a       ]
    return b

def map_mod_iota(n):
    a = [i      for i in range(n)]
    b = [i % 10 for i in a       ]
    c = [i + 1  for i in b       ]
    return c

def map_map_mod_iota(n):
    a = [i      for i in range(n)]
    b = [i % 10 for i in a       ]
    c = [i + 1  for i in b       ]
    d = [i * 2  for i in c       ]
    return d

def sum_map_map_mod_iota(n):
    a = [i      for i in range(n)]
    b = [i % 10 for i in a       ]
    c = [i + 1  for i in b       ]
    d = [i * 2  for i in c       ]
    return sum(d)

def fused_list_comprehension(n):
    return sum([((i % 10) + 1) * 2 for i in range(n)])

def fused_generator_expression(n):
    return sum(((i % 10) + 1) * 2 for i in range(n))

def itertools_cycle(n):
    return sum(map(lambda x: (x + 1) * 2, it.islice(it.cycle(range(10)), n)))

def for_loop_mod(n):
    res = 0
    for i in range(n):
        res += ((i % 10) + 1) * 2
    return res

def for_loop(n):
    res = 0
    for i in it.islice(it.cycle(range(10)), n):
        res += (i + 1) * 2
    return res

n = int(1e6)

print(timeit.timeit(lambda: iota    (n), number=10))
print(timeit.timeit(lambda: mod_iota(n), number=10))
print(timeit.timeit(lambda: map_mod_iota(n), number=10))
print(timeit.timeit(lambda: map_map_mod_iota(n), number=10))
print(timeit.timeit(lambda: sum_map_map_mod_iota(n), number=10))
print()
print(timeit.timeit(lambda: fused_list_comprehension(n), number=10))
print(timeit.timeit(lambda: fused_generator_expression(n), number=10))
print(timeit.timeit(lambda: itertools_cycle(n), number=10))
print(timeit.timeit(lambda: for_loop_mod(n), number=10))
print(timeit.timeit(lambda: for_loop(n), number=10))

# 0.6031802030047402
# 0.6760719560552388
# 0.8682759479852393
# 1.0389146120287478
# 1.086414854042232

# 0.507148178992793
# 0.5803838139399886
# 0.508542162948288
# 0.6203545070020482
# 0.5596319760661572
