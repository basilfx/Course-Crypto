# Same message to different receivers, all with same small public exponent

nB = 137703491
nC = 144660611
nD = 149897933
cB = 124100785
cC = 85594143
cD = 148609330

mCubed = crt([cB, cC, cD], [nB, nC, nD])
m = pow(mCubed, 1/3)

print m
print m ** 3 % nB == cB
print m ** 3 % nC == cC
print m ** 3 % nD == cD