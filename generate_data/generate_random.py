import numpy as np

n = 200  # matrix dimension
max_conflict = 100

mat = np.random.randint(max_conflict, size = (n,n))

mat = np.triu(mat) + np.triu(mat, 1).T

# Set the diagonal elements to 0
np.fill_diagonal(mat, 0)

print(mat)

np.savetxt("overlap.csv", mat, delimiter=",", fmt='%d')