n = 5007958289
delta_pq = 200

# Below can be derrived from 4n = (p+q)^2 - (p-q)^2
q = (sqrt(4 * n + delta_pq**2) + delta_pq) / 2
p = q - delta_pq

# Done
print p, q, p*q, n, p*q == n