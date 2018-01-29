from itertools import combinations


candidate_keys = []
match = 'abcdefgh'
relations = [ ('acg', 'b'),
              ('b', 'g'),
              ('c', 'd'),
              ('g', 'a'),
              ('de', 'gc'),
              ('h', 'ef'),
              ('def', 'h')
            ]

cur = ''
def check_rel(cur):
    for key in relations:
        if set(key[0]).issubset(cur) and not set(key[1]).issubset(cur):
            cur = ''.join(sorted(''.join(set(cur + key[1]))))
            return check_rel(cur)
    return cur

comb = [''.join(c) for i in xrange(len(match)) for c in combinations(match, i)]

for item in comb:
    cur = item
    cur = check_rel(cur)
    cur = ''.join(sorted(''.join(set(cur))))

    if cur != match:
        continue

    candidate_keys.append(item)

for item in reversed(candidate_keys):
    for test in combinations(item, len(item)-1):
        if ''.join(test) in candidate_keys:
            candidate_keys.remove(item)
            break

print candidate_keys
