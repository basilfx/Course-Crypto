import math

# Table 1.2
pr_single = [0.0723, 0.0282, 0.006, 0.1566, 0.0483, 0.0216, 0.0167, 0.0787, 0.0402, 0.0064, 0.0006, 0.0236, 0.0396, 0.0716, 0.0814, 0.0007, 0.0161, 0.0715, 0.0751, 0.0272, 0.0773, 0.0078, 0.0117, 0.0168, 0.003, 0.001]

# Table 1.1
pr_single = [0.0804, 0.0154, 0.0306, 0.0399, 0.1251, 0.0230, 0.0196, 0.0549, 0.0726, 0.0016, 0.0067, 0.0414, 0.0253, 0.0709, 0.0760, 0.0200, 0.0011, 0.0612, 0.0654, 0.0925, 0.0271, 0.0099, 0.0192, 0.0019, 0.0173, 0.0009]

def calculate(input, raw=False):
    # Variables
    scores = []

    # Calculate entropy
    for p in input:
        scores.append(float(p) * math.log(float(p), 2))

    # Done
    return -1.0 * sum(scores) if not raw else scores

print calculate(pr_single)