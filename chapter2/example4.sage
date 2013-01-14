# Key = 'monkey'
ciphertext = "ubsyvkmhvyrrtsbbcrdsndwrtshxmbufrmxgabnvmircewerucamlyzbrvfwivvmlyzwapspyogsslechbgcubsvyczqrcwrmhvcxgooyvcydspomtqfpyqkgbcmerucadlcaflrsuqjrbhceqesfcehuoqmdstorcdoymeqqwaglgovggsmdabbigztbbqyfwbxwmgfpowgztyeilosrkgfahuovqfogswruqnvpwfvrnmpqqgsslatgrmqubsvyczqrswcjdeowqqroihqdspdibffnxwgztbbqyfwbxus"

# Key = 'comet'
ciphertext = "vvqvxkgmrhvvqvycaaylrwmrhrzmc"

L = len(ciphertext)
R = []

for i in range(L - 20, L):
    # Get left and right parts
    left = ciphertext[:i]
    right = ciphertext[-i:]

    # Set count
    count = 0

    # Compare matching letters
    for a, b in zip(left, right):
        if a == b: 
            count = count + 1

    # Append result
    R.append(float(count) / float(i))

# Done, print index and score
for i in range(len(R)):
    print i + 1, round(R[i], 3)