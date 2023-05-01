import numpy as np
import csv

def rand_rooms():
    cols = 200
    max_num_rows = 60

    mat = []
    for i in range(cols):
        num_rows = np.random.randint(low=1, high=max_num_rows+1)
        row = np.random.choice(range(1, 101), size=num_rows, replace=False)
        mat.append(row)

    matrix = np.array(mat)

    # Save the matrix as a CSV file
    with open('random_rooms.csv', mode='w', newline='') as file:
        writer = csv.writer(file)
        for row in matrix:
            writer.writerow(row)

def rand_times():
    cols = 100
    max_num_rows = 5

    mat = []
    for i in range(cols):
        num_rows = np.random.randint(low=1, high=max_num_rows+1)
        row = np.random.choice(range(1, 6), size=num_rows, replace=False)
        mat.append(row)

    matrix = np.array(mat)

    with open('random_times.csv', mode='w', newline='') as file:
        writer = csv.writer(file)
        for row in matrix:
            writer.writerow(row)

rand_rooms()