import pulp as pl
import numpy as np
#import pytups as pt

classes = ['A', 'B', 'C', 'D', 'E']
rooms = [1, 2, 3]
days = ['Mon', 'Tues', 'Wed', 'Thur', 'Fri']
classTimeSlots = [1,2,3]
roomTimeSlots = [1,2,3]
# assume for now all the rooms have the correct resources for all the classes

classTimeDict = {'A': [1,2,3], 'B': [1], 'C': [1,2,3], 'D': [1,2], 'E': [2,3]}
roomTimeDict = {1:[1,2,3], 2:[1], 3:[1,2]}

sched = pl.LpProblem("Course Scheduling")

C = len(classes)
T = len(classTimeSlots)
R = len(rooms)

for i in classTimeDict:
    for j in classTimeDict[i]:
        print(i, " ", j)

classAssignments = [(c,t) for c in classTimeDict for t in classTimeDict[c]] 

# this will need to be adjusted for variable time slots open
# need to split this up. get the values for every classtime, then let that be the second argument
# can i build up cVars


classes = ['A', 'B', 'C', 'D', 'E']
classTimeSlots = [1,2,3]
classTimeDict = {'A': [1,2,3], 'B': [1], 'C': [1,2,3], 'D': [1,2], 'E': [2,3]}

k = []
v = []

for i in classTimeDict:
    for j in classTimeDict[i]:
        k.append(i)
        v.append(j)

print(k)
print(v)

#grr = pt.TupList((t, p) for t in bgh for p in agh)
#print(grr)

#cVars = pl.LpVariable.dicts("Class Assignment", ((classTimeDict, classTimeDict[c]) for c in classTimeDict.keys()), 0, None, pl.LpInteger) 
#cVars = pl.LpVariable.dicts("Class Assignment", (classTimeDict, classTimeSlots), 0, None, pl.LpInteger)
#cVars = pl.LpVariable.dicts("Class Assignment", ((bgh, agh[c]) for c in range(len(bgh))), 0, None, pl.LpInteger)
#cVars = pl.LpVariable.dicts("Class Assignment", (k, v), 0, None, pl.LpInteger)

cVars = pl.LpVariable.dicts("Class Assignment", ((k[i],v[i]) for i in range(len(k))), 0, None, pl.LpInteger)

# DESIRED CVARS: {'A': {1: Class_Assignment_A_1, 2: Class_Assignment_A_2, 3: Class_Assignment_A_3}, 'B': {1: Class_Assignment_B_1,}, 'C': {1: Class_Assignment_C_1, 2: Class_Assignment_C_2, 3: Class_Assignment_C_3}, 'D': {1: Class_Assignment_D_1, 2: Class_Assignment_D_2}, 'E': {2: Class_Assignment_E_2, 3: Class_Assignment_E_3}}
# CURRENT CVARS: {('A', 1): Class_Assignment_('A',_1), ('A', 2): Class_Assignment_('A',_2), ('A', 3): Class_Assignment_('A',_3), ('B', 1): Class_Assignment_('B',_1), ('C', 1): Class_Assignment_('C',_1), ('C', 2): Class_Assignment_('C',_2), ('C', 3): Class_Assignment_('C',_3), ('D', 1): Class_Assignment_('D',_1), ('D', 2): Class_Assignment_('D',_2), ('E', 2): Class_Assignment_('E',_2), ('E', 3): Class_Assignment_('E',_3)}

print(cVars)

roomAssignments = [(c,r) for c in classTimeDict for r in roomTimeDict]
rVars = pl.LpVariable.dicts("Room Assignment", (classTimeDict, roomTimeDict), 0, None, pl.LpInteger)

# need to represent x_{c,t} and y_{c,r}

for c in classTimeDict:
    # all classes assigned a time
    sched += (
        pl.lpSum([cVars[c][t] for t in classTimeSlots]) == 1,
        f"Sum_of_Assignments_for_class_{c}",
    )
    # all classes assigned a room
    sched += (
        pl.lpSum([rVars[c][r] for r in roomTimeDict]) == 1,
        f"Sum_of_Assignments_for_room_{c}",
    )


# no two classes in the same room in the same time
for c1 in classTimeDict:
    for c2 in classTimeDict:
        for t in classTimeDict[c1]:
            for r in roomTimeDict:
                if(c1==c2): continue
                sched += (
                    cVars[c1][t] + cVars[c2][t] + rVars[c1][r] + rVars[c2][r] <=3
                )

# The problem data is written to an .lp file
sched.writeLP("SchedulingProblem.lp")

# The problem is solved using PuLP's choice of Solver
sched.solve()

# The status of the solution is printed to the screen
print("Status:", pl.LpStatus[sched.status])

# Each of the variables is printed with its resolved optimum value
for v in sched.variables():
    if(v.varValue == 1):
        print(v.name, "=", v.varValue)

# format the results so it looks good
# use some string parser
