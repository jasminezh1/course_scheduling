\* Course_Scheduling *\
Minimize
OBJ: __dummy
Subject To
Sum_of_Assignments_for_class_A: Class_Assignment_A_1 + Class_Assignment_A_2
 + Class_Assignment_A_3 = 1
Sum_of_Assignments_for_class_B: Class_Assignment_B_1 = 1
Sum_of_Assignments_for_class_C: Class_Assignment_C_1 + Class_Assignment_C_2
 + Class_Assignment_C_3 = 1
Sum_of_Assignments_for_class_D: Class_Assignment_D_1 + Class_Assignment_D_2
 = 1
Sum_of_Assignments_for_class_E: Class_Assignment_E_2 + Class_Assignment_E_3
 = 1
Sum_of_Assignments_for_room_A: Room_Assignment_A_1 + Room_Assignment_A_2
 + Room_Assignment_A_3 + Room_Assignment_A_4 = 1
Sum_of_Assignments_for_room_B: Room_Assignment_B_1 + Room_Assignment_B_2
 + Room_Assignment_B_3 + Room_Assignment_B_4 = 1
Sum_of_Assignments_for_room_C: Room_Assignment_C_1 + Room_Assignment_C_2
 + Room_Assignment_C_3 + Room_Assignment_C_4 = 1
Sum_of_Assignments_for_room_D: Room_Assignment_D_1 + Room_Assignment_D_2
 + Room_Assignment_D_3 + Room_Assignment_D_4 = 1
Sum_of_Assignments_for_room_E: Room_Assignment_E_1 + Room_Assignment_E_2
 + Room_Assignment_E_3 + Room_Assignment_E_4 = 1
_C1: Class_Assignment_A_1 + Room_Assignment_A_1 <= 2
_C10: Class_Assignment_B_1 + Room_Assignment_B_3 <= 2
_C11: Class_Assignment_C_1 + Room_Assignment_C_1 <= 2
_C12: Class_Assignment_C_1 + Room_Assignment_C_2 <= 2
_C13: Class_Assignment_C_1 + Room_Assignment_C_3 <= 2
_C14: Class_Assignment_C_2 + Room_Assignment_C_1 <= 2
_C15: Class_Assignment_C_2 + Room_Assignment_C_3 <= 2
_C16: Class_Assignment_C_3 + Room_Assignment_C_1 <= 2
_C17: Class_Assignment_C_3 + Room_Assignment_C_4 <= 2
_C18: Class_Assignment_D_1 + Room_Assignment_D_1 <= 2
_C19: Class_Assignment_D_1 + Room_Assignment_D_2 <= 2
_C2: Class_Assignment_A_1 + Room_Assignment_A_2 <= 2
_C20: Class_Assignment_D_1 + Room_Assignment_D_3 <= 2
_C21: Class_Assignment_D_2 + Room_Assignment_D_1 <= 2
_C22: Class_Assignment_D_2 + Room_Assignment_D_3 <= 2
_C23: Class_Assignment_E_2 + Room_Assignment_E_1 <= 2
_C24: Class_Assignment_E_2 + Room_Assignment_E_3 <= 2
_C25: Class_Assignment_E_3 + Room_Assignment_E_1 <= 2
_C26: Class_Assignment_E_3 + Room_Assignment_E_4 <= 2
_C3: Class_Assignment_A_1 + Room_Assignment_A_3 <= 2
_C4: Class_Assignment_A_2 + Room_Assignment_A_1 <= 2
_C5: Class_Assignment_A_2 + Room_Assignment_A_3 <= 2
_C6: Class_Assignment_A_3 + Room_Assignment_A_1 <= 2
_C7: Class_Assignment_A_3 + Room_Assignment_A_4 <= 2
_C8: Class_Assignment_B_1 + Room_Assignment_B_1 <= 2
_C9: Class_Assignment_B_1 + Room_Assignment_B_2 <= 2
Bounds
 0 <= Class_Assignment_A_1
 0 <= Class_Assignment_A_2
 0 <= Class_Assignment_A_3
 0 <= Class_Assignment_B_1
 0 <= Class_Assignment_C_1
 0 <= Class_Assignment_C_2
 0 <= Class_Assignment_C_3
 0 <= Class_Assignment_D_1
 0 <= Class_Assignment_D_2
 0 <= Class_Assignment_E_2
 0 <= Class_Assignment_E_3
 0 <= Room_Assignment_A_1
 0 <= Room_Assignment_A_2
 0 <= Room_Assignment_A_3
 0 <= Room_Assignment_A_4
 0 <= Room_Assignment_B_1
 0 <= Room_Assignment_B_2
 0 <= Room_Assignment_B_3
 0 <= Room_Assignment_B_4
 0 <= Room_Assignment_C_1
 0 <= Room_Assignment_C_2
 0 <= Room_Assignment_C_3
 0 <= Room_Assignment_C_4
 0 <= Room_Assignment_D_1
 0 <= Room_Assignment_D_2
 0 <= Room_Assignment_D_3
 0 <= Room_Assignment_D_4
 0 <= Room_Assignment_E_1
 0 <= Room_Assignment_E_2
 0 <= Room_Assignment_E_3
 0 <= Room_Assignment_E_4
 __dummy = 0
Generals
Class_Assignment_A_1
Class_Assignment_A_2
Class_Assignment_A_3
Class_Assignment_B_1
Class_Assignment_C_1
Class_Assignment_C_2
Class_Assignment_C_3
Class_Assignment_D_1
Class_Assignment_D_2
Class_Assignment_E_2
Class_Assignment_E_3
Room_Assignment_A_1
Room_Assignment_A_2
Room_Assignment_A_3
Room_Assignment_A_4
Room_Assignment_B_1
Room_Assignment_B_2
Room_Assignment_B_3
Room_Assignment_B_4
Room_Assignment_C_1
Room_Assignment_C_2
Room_Assignment_C_3
Room_Assignment_C_4
Room_Assignment_D_1
Room_Assignment_D_2
Room_Assignment_D_3
Room_Assignment_D_4
Room_Assignment_E_1
Room_Assignment_E_2
Room_Assignment_E_3
Room_Assignment_E_4
End
