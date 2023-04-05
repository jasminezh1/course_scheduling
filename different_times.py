import pulp as pl
import numpy as np

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
    print(classTimeDict[i])

classAssignments = [(c,t) for c in classTimeDict for t in classTimeDict[c]] 
# this will need to be adjusted for variable time slots open
cVars = pl.LpVariable.dicts("Class Assignment", (classTimeDict, classTimeDict.values()), 0, None, pl.LpInteger)

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

# rooms only scheduled when available
# want to check that for the time and the room the class is scheduled for, then that time is in the val of the roomTimeDict
# for c in classTimeDict:
#     for t in classTimeDict[c]:
#         for r in roomTimeDict:
#             # t \in roomTimeDict[r]
#             roomTimes = roomTimeDict[r]
#             sched += (
#                 # if (cVars[c][t] + rVars[c][r] == 2), then enforce t in roomTimes
#                 # how to translate this to LP? searched it up, not sure how decision variable works
#             )

#classes only scheduled during available class time
# i think this is satisfied by nature of the array? not positive

# no two classes in the same room in the same time
for c1 in classTimeDict:
    for c2 in classTimeDict:
        for t in classTimeDict[c1]:
            for r in roomTimeDict:
                sched += (
                    cVars[c1][t] + cVars[c2][t] + rVars[c1][r] + rVars[c2][r] <=3
                )

# The problem data is written to an .lp file
sched.writeLP("SchedulingProblem.lp")

# The problem is solved using PuLP's choice of Solver
sched.solve()

# The status of the solution is printed to the screen
print("Status:", pl.LpStatus[sched.status])

# Each of the variables is printed with it's resolved optimum value
for v in sched.variables():
    print(v.name, "=", v.varValue)
