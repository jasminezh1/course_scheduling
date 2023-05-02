import numpy as np

def overlap():
    n = 200  # matrix dimension
    max_conflict = 100

    mat = np.random.randint(max_conflict, size = (n,n))

    mat = np.triu(mat) + np.triu(mat, 1).T

    np.fill_diagonal(mat, 0)

    print(mat)
    np.savetxt("overlap.csv", mat, delimiter=",", fmt='%d')


def same_course():

    #mat = np.random.choice([1, 0], size=(200, 200), p= [1,0])
    mat = np.random.choice([1, 0], size=(200, 200), p= [0.996,0.004])

    np.fill_diagonal(mat, 0)

    for i in range(200):
        for j in range(i+1, 200):
            if mat[i][j] == 0:
                mat[j][i] = 0
    np.savetxt("same.csv", mat, delimiter=",", fmt='%d')

same_course()