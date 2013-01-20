#
# Part 1 (page 207)
#

nB = 77
f = 2
g = 8
a = 22
b = 56

m1 = (a*f + b*g) % nB
m2 = (a*f - b*g) % nB
m3 = (-1*a*f + b*g) % nB
m4 = (-1*a*f - b*g) % nB

print m1, m1.jacobi(nB)
print m2, m2.jacobi(nB)
print m3, m3.jacobi(nB)
print m4, m4.jacobi(nB)

#
# Part 2: page 208
#

m = 30
print gcd(m1 - m, nB) 
print gcd(m2 - m, nB) 
print gcd(m3 - m, nB) 
print gcd(m4 - m, nB) 