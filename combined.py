import pulp as pl
import numpy as np


# class --> time slot class can be scheduled at
classTimeDict = {'A': [1,2,3], 'B': [1], 'C': [1,2,3], 'D': [1,2,3], 'E': [2,3], 
                 'F': [1,2,3], 'G': [3], 'H': [1,2], 'I': [1,2,3], 'J': [2,3]}

# class --> room it can be scheduled in
classRoomDict = {'A': [1,2,3,4,5,6,7,8,9,10], 'B': [2,3], 'C': [1,4,6,8,9], 'D': [2,3,5], 'E': [2,3,4],
                 'F': [1,2,3,9,10], 'G': [2,3,5,6,8,10], 'H': [1,4,5], 'I': [2,3,5,6], 'J': [2,3,4]}

# room --> time slot room can be scheduled at
roomTimeDict = {1:[1,2,3], 2:[1], 3:[1,2], 4: [3], 5: [3,4],
                6:[2,3], 7:[1], 8:[1,2], 9: [3,4], 10: [1,3,4]}

# |C| x |C| number of students that conflict in a pair of courses
overlap = np.array([[0,1,0,2,3,1,2,3,4,5],
                    [1,0,3,4,10,2,2,2,2,2],
                    [0,3,0,1,2,0,0,0,0,1],
                    [2,4,1,0,100,1,5,1,5,1],
                    [3,10,2,100,0,3,4,5,6,7],
                    [1,2,0,1,3,0,10,10,10,10],
                    [2,2,0,5,4,10,0,1,2,3],
                    [3,2,0,1,5,10,1,0,5,10],
                    [4,2,0,5,6,10,2,5,0,100],
                    [5,2,1,1,7,10,3,10,100,0]])

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

oVars = pl.LpVariable.dicts("Overlap", (classTimeDict, classTimeDict), 0, None, pl.LpInteger)


# objective function to minimize number of students in courses scheduled at conflicting times
conflicts = 0
count1 = 0
for class1 in classTimeDict:
    count2 = 0
    for class2 in classTimeDict:
        if class1 == class2: continue # -- a course can't conflict with itself.
        overlap_size = overlap[count1][count2] * oVars[class1][class2]
        conflicts += (overlap_size/2.0)
        count2+=1
    count1+=1

sched += conflicts, "minimize the number of conflicts."



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
                continue

            for r in classRoomDict[c1]:
                if(r not in classRoomDict[c2]): 
                    continue

                sched += (
                    cVars[c1][t] + cVars[c2][t] + rVars[c1][r] + rVars[c2][r] <=3
                )

# class only scheduled in a room if room available during that time
for c in classTimeDict:
    for t in classTimeDict[c]:
        for r in classRoomDict[c]:

            sched += (
                cVars[c][t] + rVars[c][r] - 1 <= Z[r-1][t-1]
            )

# write to an lp file
sched.writeLP("SchedulingProblem.lp")

sched.solve()
print("Status:", pl.LpStatus[sched.status])

# print optimal values
for v in sched.variables():
    if(v.varValue == 1):
        print(v.name, "=", v.varValue)

# format the results so it looks good
# use some string parser
