\* Course_Scheduling *\
Minimize
minimize_the_number_of_conflicts.: 0.5 Overlap_A_C + 0.5 Overlap_B_A
 + 1.5 Overlap_C_B
Subject To
Sum_of_Assignments_for_class_A: Time_Assignment_A_1 + Time_Assignment_A_2
 + Time_Assignment_A_3 = 1
Sum_of_Assignments_for_class_B: Time_Assignment_B_1 = 1
Sum_of_Assignments_for_class_C: Time_Assignment_C_1 + Time_Assignment_C_2
 + Time_Assignment_C_3 = 1
Sum_of_Assignments_for_room_A: Room_Assignment_A_1 + Room_Assignment_A_2
 + Room_Assignment_A_3 = 1
Sum_of_Assignments_for_room_B: Room_Assignment_B_2 + Room_Assignment_B_3 = 1
Sum_of_Assignments_for_room_C: Room_Assignment_C_1 = 1
_C1: Room_Assignment_A_2 + Room_Assignment_B_2 + Time_Assignment_A_1
 + Time_Assignment_B_1 <= 3
_C10: Room_Assignment_A_1 + Room_Assignment_C_1 + Time_Assignment_A_3
 + Time_Assignment_C_3 <= 3
_C11: Room_Assignment_A_1 + Time_Assignment_A_1 <= 2
_C12: Room_Assignment_A_2 + Time_Assignment_A_1 <= 1
_C13: Room_Assignment_A_3 + Time_Assignment_A_1 <= 2
_C14: Room_Assignment_A_1 + Time_Assignment_A_2 <= 2
_C15: Room_Assignment_A_2 + Time_Assignment_A_2 <= 1
_C16: Room_Assignment_A_3 + Time_Assignment_A_2 <= 2
_C17: Room_Assignment_A_1 + Time_Assignment_A_3 <= 2
_C18: Room_Assignment_A_2 + Time_Assignment_A_3 <= 2
_C19: Room_Assignment_A_3 + Time_Assignment_A_3 <= 2
_C2: Room_Assignment_A_3 + Room_Assignment_B_3 + Time_Assignment_A_1
 + Time_Assignment_B_1 <= 3
_C20: Room_Assignment_B_2 + Time_Assignment_B_1 <= 1
_C21: Room_Assignment_B_3 + Time_Assignment_B_1 <= 2
_C22: Room_Assignment_C_1 + Time_Assignment_C_1 <= 2
_C23: Room_Assignment_C_1 + Time_Assignment_C_2 <= 2
_C24: Room_Assignment_C_1 + Time_Assignment_C_3 <= 2
_C3: Room_Assignment_A_1 + Room_Assignment_C_1 + Time_Assignment_A_1
 + Time_Assignment_C_1 <= 3
_C4: Room_Assignment_A_1 + Room_Assignment_C_1 + Time_Assignment_A_2
 + Time_Assignment_C_2 <= 3
_C5: Room_Assignment_A_1 + Room_Assignment_C_1 + Time_Assignment_A_3
 + Time_Assignment_C_3 <= 3
_C6: Room_Assignment_A_2 + Room_Assignment_B_2 + Time_Assignment_A_1
 + Time_Assignment_B_1 <= 3
_C7: Room_Assignment_A_3 + Room_Assignment_B_3 + Time_Assignment_A_1
 + Time_Assignment_B_1 <= 3
_C8: Room_Assignment_A_1 + Room_Assignment_C_1 + Time_Assignment_A_1
 + Time_Assignment_C_1 <= 3
_C9: Room_Assignment_A_1 + Room_Assignment_C_1 + Time_Assignment_A_2
 + Time_Assignment_C_2 <= 3
Bounds
 0 <= Overlap_A_C
 0 <= Overlap_B_A
 0 <= Overlap_C_B
 0 <= Room_Assignment_A_1
 0 <= Room_Assignment_A_2
 0 <= Room_Assignment_A_3
 0 <= Room_Assignment_B_2
 0 <= Room_Assignment_B_3
 0 <= Room_Assignment_C_1
 0 <= Time_Assignment_A_1
 0 <= Time_Assignment_A_2
 0 <= Time_Assignment_A_3
 0 <= Time_Assignment_B_1
 0 <= Time_Assignment_C_1
 0 <= Time_Assignment_C_2
 0 <= Time_Assignment_C_3
Generals
Overlap_A_C
Overlap_B_A
Overlap_C_B
Room_Assignment_A_1
Room_Assignment_A_2
Room_Assignment_A_3
Room_Assignment_B_2
Room_Assignment_B_3
Room_Assignment_C_1
Time_Assignment_A_1
Time_Assignment_A_2
Time_Assignment_A_3
Time_Assignment_B_1
Time_Assignment_C_1
Time_Assignment_C_2
Time_Assignment_C_3
End
