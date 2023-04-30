import numpy as np

n = 100  # matrix dimension

# Generate a random matrix with values between 0 and 1
A = np.random.rand(n, n)

# Make the matrix symmetric by copying the upper triangle to the lower triangle
A = np.triu(A) + np.triu(A, 1).T

# Set the diagonal elements to 0
np.fill_diagonal(A, 0)

print(A)