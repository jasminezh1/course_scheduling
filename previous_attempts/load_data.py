import pandas as pd
import numpy as np

filename = "courses_rooms.csv"
df = pd.read_csv(filename)
my_dict = df.to_dict()

for i in my_dict:
    print(i)
    vals = list(my_dict[i].values())
    cleanedList = [int(x) for x in vals if x == x]
    my_dict[i] = cleanedList
print(my_dict)


CSVData = open("overlap.csv")
Array2d_result = np.loadtxt(CSVData, delimiter=",")

print(Array2d_result)
# import csv
 
# filename ="testing.csv"
 
# # opening the file using "with"
# # statement
# with open(filename, 'r') as data:
#   for line in csv.DictReader(data):
#       print(line)
      