p = 31
a = 11
b = 17
c = 25

x1 = 2; y1 = 7
x2 = 23; y2 = 9

F(x, y) = y^2 - (x^3 + a*x^2 + b * x + c)

print mod(F(x1, y1), p), mod(F(x2, y2), p)

slope = mod((y2 - y1) * power_mod(x2 - x1, -1, p), p)
print slope

x3 = mod(slope^2 - a - x1 - x2, p)
y3 = mod(slope * (x1 - x3) - y1, p) # or slope * (x3 - x1) + y1

print x3, y3, mod(F(x3, y3), p)