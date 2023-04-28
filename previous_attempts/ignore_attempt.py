from pulp import *
prob = LpProblem("Scheduling")

classes = ['A', 'B', 'C', 'D', 'E']
rooms = ['a', 'b', 'c', 'd', 'e']
days = ['Mon', 'Tues', 'Wed', 'Thur', 'Fri']
timeslots = [1,2,3]
class_overlap = [[0,1,0,2,3],[1,0,3,4,5],[0,3,0,1,2],[2,4,1,0,3],[3,5,2,3,0]]
print(class_overlap[4][4])

sched = LpProblem("Course Scheduling", LpMinimize)

names = [c1+"_"+c2 for c1 in classes for c2 in classes]
conflict = LpVariable.dicts("Conflict", names, 0, 1, LpInteger)
def get_conflict(c1, c2): return conflict[c1+"_"+c2]

# overlap[course1, course2] == number of students taking both courses.
overlap, total_conflicts = {}, 0
count1 = 0
for class1 in classes:
    count2 = 0
    for class2 in classes:
        if class1 == class2: continue # -- a course can't conflict with itself.
        overlap_size = class_overlap[count1][count2]
        overlap[class1, class2] = overlap_size
        if overlap_size > 0:
            total_conflicts += (overlap_size/2.0) * get_conflict(class1, class2)
        count2+=1
    count1+=1

def get_overlap(c1, c2): return overlap[c1, c2]
sched += total_conflicts, "minimize the number of conflicts"


# scheduled[slot, course] == 1 : course scheduled in slot.
names = [str(s)+"_"+c for s in timeslots for c in classes]
scheduled = LpVariable.dicts("Scheduled", names, 0, 1, LpInteger)
def get_scheduled(s, c): return scheduled[str(s)+"_"+c]
# schedule every class
for course in classes:
    places_scheduled = 0
    for time in timeslots:
        places_scheduled += get_scheduled(time, course)
    sched += places_scheduled == 1, "%s sched." % (course)

print(sched)

#solver = solvers.COIN_CMD()
status = sched.solve()
print(status)