import pulp as pl
import numpy as np

classes = ['A', 'B', 'C', 'D', 'E']
rooms = [1, 2, 3]
days = ['Mon', 'Tues', 'Wed', 'Thur', 'Fri']
classTimeSlots = [1,2,3]
#classTimeSlots = [[1,2,3],[1,2],[2,3],[1,2,3],[1,3]] # slots that classes can be scheduled at
roomTimeSlots = [1,2,3]
#roomTimeSlots = [[1,2,3],[1],[1,2],[1,2,3]] # time slots that rooms can be scheduled at
# assume for now all the rooms have the correct resources for all the classes

#combine rooms and room time slots to simplify things for now?
roomTimes = ['a1', 'a2', 'a3', 'b1', 'b2', 'b3', 'c1', 'c2', 'c3']

sched = pl.LpProblem("Course Scheduling")

C = len(classes)
T = len(classTimeSlots)
R = len(rooms)


classAssignments = [(c,t) for c in classes for t in classTimeSlots] 
# this will need to be adjusted for variable time slots open
cVars = pl.LpVariable.dicts("Class Assignment", (classes, classTimeSlots), 0, None, pl.LpInteger)

roomAssignments = [(c,r) for c in classes for r in rooms]
rVars = pl.LpVariable.dicts("Room Assignment", (classes, rooms), 0, None, pl.LpInteger)

# need to represent x_{c,t} and y_{c,r}

for c in classes:
    sched += (
        pl.lpSum([cVars[c][t] for t in classTimeSlots]) == 1,
        f"Sum_of_Assignments_for_class_{c}",
    )
    sched += (
        pl.lpSum([rVars[c][r] for r in rooms]) == 1,
        f"Sum_of_Assignments_for_room_{c}",
    )

for c1 in classes:
    for c2 in classes:
        for t in classTimeSlots:
            for r in rooms:
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
