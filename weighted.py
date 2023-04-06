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

overlap = np.array([[0,1,0,2,3],[1,0,3,4,10],[0,3,0,1,2],[2,4,1,0,3],[3,10,2,3,0]])
overlap = pl.makeDict([classes, classes], overlap, 0)


sched = pl.LpProblem("Course Scheduling")

C = len(classes)
T = len(classTimeSlots)
R = len(rooms)


classAssignments = [(c,t) for c in classes for t in classTimeSlots] 
# this will need to be adjusted for variable time slots open
cVars = pl.LpVariable.dicts("Class Assignment", (classes, classTimeSlots), 0, None, pl.LpInteger)

roomAssignments = [(c,r) for c in classes for r in rooms]
rVars = pl.LpVariable.dicts("Room Assignment", (classes, rooms), 0, None, pl.LpInteger)

indicateOverlap = [(c1,c2) for c1 in classes for c2 in classes]
oVars = pl.LpVariable.dicts("Overlap", (classes, classes), 0, None, pl.LpInteger)

# hmmm want to weight by comparing the classes that are at the same time
# **** below is very wrong because overlap is not used correctly
# sched += (
#     pl.lpSum([cVars[c][t] * overlap[c][t] for (c,t) in classAssignments])
# )


# need to have an indicator variable for o_{c1,c2}
# 1 if x_{c1,t}
conflicts = 0
count1 = 0
for class1 in classes:
    count2 = 0
    for class2 in classes:
        if class1 == class2: continue # -- a course can't conflict with itself.
        overlap_size = overlap[count1][count2] * oVars[class1][class2]
        conflicts += (overlap_size/2.0)
        count2+=1
    count1+=1

sched += conflicts, "minimize the number of conflicts."

# sched += (
#     pl.lpSum([overlap[c1][c2] for (c1,c2) in overlap])
# )


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
                if(c1==c2): continue
                sched += (
                    cVars[c1][t] + cVars[c2][t] + rVars[c1][r] + rVars[c2][r] <=3
                )


for c1 in classes:
    for c2 in classes:
        for t in classTimeSlots:
            if(c1==c2): continue
            sched += (
                cVars[c1][t] + cVars[c2][t]  <= oVars[c1][c2] + 1
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


# assignments look very suspicious. check validity.