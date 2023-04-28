import pulp as pl
import numpy as np

classes = ['A', 'B', 'C', 'D', 'E']
rooms = [1, 2, 3, 4]
days = ['Mon', 'Tues', 'Wed', 'Thur', 'Fri']
classTimeSlots = [1,2,3]
roomTimeSlots = [1,2,3]
# assume for now all the rooms have the correct resources for all the classes

# class --> time slot class can be scheduled at
classTimeDict = {'A': [1,2,3], 'B': [1], 'C': [1,2,3], 'D': [1,2], 'E': [2,3]}

# class --> room it can be scheduled in
classRoomDict = {'A': [1,2,3,4], 'B': [2,3], 'C': [1,4], 'D': [1,2], 'E': [2,3,4]}

# room --> time slot room can be scheduled at
roomTimeDict = {1:[1,2,3], 2:[1], 3:[1,2], 4: [3]}

numRooms = len(roomTimeDict)
numTimes = max(max(roomTimeDict.values()))
Z = np.zeros((numRooms,numTimes))

sched = pl.LpProblem("Course Scheduling")

for i in roomTimeDict:
    for j in roomTimeDict[i]:
        Z[i-1][j-1] = 1

# class, time
cVars = {}
# class, room
rVars = {}

for i in classTimeDict:
    up = pl.LpVariable.dicts("Time Assignment", (i, classTimeDict[i]), 0, None, pl.LpInteger)
    cVars.update(up)

for i in classRoomDict:
    up = pl.LpVariable.dicts("Room Assignment", (i, classRoomDict[i]), 0, None, pl.LpInteger)
    rVars.update(up)

# need to represent x_{c,t} and y_{c,r}

for c in classTimeDict:
    # all classes assigned a time
    sched += (
        pl.lpSum([cVars[c][t] for t in classTimeDict[c]]) == 1,
        f"Sum_of_Assignments_for_class_{c}",
    )
    # all classes assigned a room
    sched += (
        pl.lpSum([rVars[c][r] for r in classRoomDict[c]]) == 1,
        f"Sum_of_Assignments_for_room_{c}",
    )


# no two classes in the same room in the same time
for c1 in classTimeDict:
    for c2 in classTimeDict:
        if(c1==c2): continue
        for t in classTimeDict[c1]:
            if(t not in classTimeDict[c2]): 
                # print("BAD!", c1, ", ", c2, ", ", t)
                continue
            # print("GOOD!", c1, ", ", c2, ", ", t)

            for r in classRoomDict[c1]: # this is ROOM NUMBER ! but also this should work?

                if(r not in classRoomDict[c2]): 
                    # print("BAD!", c1, ", ", c2, ", ", t, ", ", r)
                    continue
                # print("GOOD!", c1, ", ", c2, ", ", t, ", ", r)
                # print(cVars[c1][t])
                # print(cVars[c2][t])
                # print(rVars[c1][r])
                # print(rVars[c2][r])

                # alright need to check for availabity of room?
                sched += (
                    cVars[c1][t] + cVars[c2][t] + rVars[c1][r] + rVars[c2][r] <=3
                )

# class only scheduled in a room if room available during that time
for c in classTimeDict:
    for t in classTimeDict[c]:
        for r in classRoomDict[c]:

            # pretty sure this is correct
            sched += (
                cVars[c][t] + rVars[c][r] - 1 <= Z[r-1][t-1]
            )
            # print(cVars[c][t], ", ", rVars[c][r], " -1 <= ", Z[r-1][t-1])

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
