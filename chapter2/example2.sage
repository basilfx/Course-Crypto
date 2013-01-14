ciphertext = "xyuysuyifvyxi"

for i in range(len(ciphertext) - 6):
    left_one = ciphertext[i]
    right_one = ciphertext[i + 3]

    left_two = ciphertext[i + 1]
    right_two = ciphertext[i + 4]

    if left_one == right_one and left_two == right_two:
        print i + 1, ciphertext[i:i+6]