import pulp as pl
import numpy as np
import pandas as pd
import time

def read_in(filename):

    df = pd.read_csv(filename)
    my_dict = df.to_dict()

    for i in my_dict:
        vals = list(my_dict[i].values())
        cleanedList = [int(x) for x in vals if x == x]
        my_dict[i] = cleanedList
    return my_dict

def get_course(filename):

    df = pd.read_csv(filename)
    my_dict = df.to_dict()
    for i in my_dict:
        vals = list(my_dict[i].values())
        my_dict[i] = vals[0]
    return my_dict

# class --> time slot class can be scheduled at
classTimeDict = read_in("data_files/courses_times4.csv")

# class --> room it can be scheduled in
classRoomDict = read_in("data_files/courses_rooms4.csv")

# room --> time slot room can be scheduled at
roomTimeDict = read_in("data_files/rooms_times4.csv")

# |C| x |C| number of students that conflict in a pair of courses
overlap = np.loadtxt(open("data_files/overlap2.csv"), delimiter=",")

numRooms = len(roomTimeDict)
numTimes = max(max(roomTimeDict.values()))
Z = np.zeros((numRooms,numTimes))

sched = pl.LpProblem("Course Scheduling")

for i in roomTimeDict:
    for j in roomTimeDict[i]:
        ind = int(i)
        Z[ind-1][j-1] = 1

# class, time
cVars = {}
# class, room
rVars = {}

for key, values in classTimeDict.items():
    cVars[key] = {}
    for value in values:
        var = 'Time_Assignment_' + key + '_' + str(value)
        cVars[key][value] = pl.LpVariable(var, lowBound=0, upBound=1, cat=pl.LpInteger)


for key, values in classRoomDict.items():
    rVars[key] = {}
    for value in values:
        var = 'Room_Assignment_' + key + '_' + str(value)
        rVars[key][value] = pl.LpVariable(var, lowBound=0, upBound=1, cat=pl.LpInteger)

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

        sched += (
            oVars[c1][c2] <=1
        )

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

solver_list = pl.listSolvers(onlyAvailable=True)
#solver = pl.getSolver('GLPK_CMD')

start_time = time.time()
sched.solve()
print("Status:", pl.LpStatus[sched.status])

seconds = time.time()
print("THE TIME IT TOOK IS: ", seconds - start_time)

finalTimes = {}
finalRooms = {}
course_names = get_course("data_files/map_name.csv")
room_names = get_course("data_files/map_room.csv")
time_names = get_course("data_files/map_time.csv")

# print optimal values
for v in sched.variables():
    if(v.varValue == 1):
        #print(len(v.name))
        var = v.name
        substring = var.split('_')
        course = substring[2]
        val = substring[3]
        if(v.name[0:4] == "Room"):
            room = room_names[val]
            finalRooms[course] = room
        else:
            time = time_names[val]
            finalTimes[course] = time


file1 = open('output.txt', 'w')

for i in finalTimes:
    print(i, "is scheduled in", finalRooms[i], "from", finalTimes[i], ".")
    s = i + ": " + finalRooms[i] + ", " + finalTimes[i] + "\n"
    file1.write(s)
file1.close()

