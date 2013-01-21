f16.<x> = GF(2^4, modulus=GF(2)['x']("1 + x + x^4"))
a = f16("x")
EC(x, y) = y^2 + x * y - x^3 - a^9 * x^2 - a

x1, y1 = a^2, a^12
print EC(x1, y1) # == {0, 0, 0, 0}

slope = x1 + (y1 / x1)
print slope # == {1, 1, 0, 0}

x3 = x1^2 + a/x1^2 # == {0, 0, 1, 1}
y3 = x1^2 + (x1 + y1 / x1) * x3 # == {0, 0, 1, 0}

print [x3], [y3]

print [a^6], [a^2], [EC(x3, y3)]