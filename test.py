from pulp import *

input_dict = {'AB': [1, 2], 'CD': [1]}

var_dict = {}

for key, values in input_dict.items():
    var_dict[key] = {}
    for value in values:
        var_name = 'Time_Assignment_' + key + '_' + str(value)
        var_dict[key][value] = pulp.LpVariable(var_name, lowBound=0, upBound=1, cat=LpBinary)

print(var_dict)