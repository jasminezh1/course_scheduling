# to shorten the CSV files. used for evaluation section.

import csv

with open('courses_times4.csv', 'r') as f:
    line = f.readlines()

data = []
for row in line:
    keep = row.split(',')[:6]
    data.append(keep)

with open('AGH.csv', 'w', newline='') as f:
    writer = csv.writer(f)
    writer.writerows(data)