def contains(l, i):
    try:
        l.index(i)
        return True
    except:
        return False

# Parameters
size = 10
a = 29
c = 30
q = 97

powers = [ power_mod(29, i, q) for i in range(size) ]
sorted_powers = sorted(powers)

# Convert to equivalent problem
x = power_mod(a, -1, q)
y = power_mod(x, size, q) # Follows from a^(sizej + i) == c -> a^i == c*a^(-10j)

print powers, sorted_powers, x

j = 0
while contains(sorted_powers, mod(c*49^j, q)) == False:
    j = j + 1

n = mod(c*49^j, q)
i = powers.index(n)
m = mod(size * j + i, q) # m = size*j + i

print i, j, m, power_mod(a, c, q)