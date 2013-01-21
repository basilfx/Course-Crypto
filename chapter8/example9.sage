#
# Part 1 (page 130)
#

q = 4679
print factor(q - 1)
print GF(4679).multiplicative_order()
print power_mod(11, 2, q)

#
# Part 2 (page 132)
#

# 121^m == 3435 (mod q) --> finding m == (aj - ai)/(bi - bj) (mod p)
a = 121
p = 2339
c = 3435

# TODO