\* Course_Scheduling *\
Minimize
OBJ: __dummy
Subject To
Sum_of_Assignments_for_class_A: Time_Assignment_A_1 + Time_Assignment_A_2
 + Time_Assignment_A_3 = 1
Sum_of_Assignments_for_class_B: Time_Assignment_B_1 = 1
Sum_of_Assignments_for_class_C: Time_Assignment_C_1 + Time_Assignment_C_2
 + Time_Assignment_C_3 = 1
Sum_of_Assignments_for_class_D: Time_Assignment_D_1 + Time_Assignment_D_2 = 1
Sum_of_Assignments_for_class_E: Time_Assignment_E_2 + Time_Assignment_E_3 = 1
Sum_of_Assignments_for_room_A: Room_Assignment_A_1 + Room_Assignment_A_2
 + Room_Assignment_A_3 + Room_Assignment_A_4 = 1
Sum_of_Assignments_for_room_B: Room_Assignment_B_2 + Room_Assignment_B_3 = 1
Sum_of_Assignments_for_room_C: Room_Assignment_C_1 + Room_Assignment_C_4 = 1
Sum_of_Assignments_for_room_D: Room_Assignment_D_1 + Room_Assignment_D_2 = 1
Sum_of_Assignments_for_room_E: Room_Assignment_E_2 + Room_Assignment_E_3
 + Room_Assignment_E_4 = 1
_C1: Room_Assignment_A_2 + Room_Assignment_B_2 + Time_Assignment_A_1
 + Time_Assignment_B_1 <= 3
_C10: Room_Assignment_A_2 + Room_Assignment_D_2 + Time_Assignment_A_1
 + Time_Assignment_D_1 <= 3
_C11: Room_Assignment_A_1 + Room_Assignment_D_1 + Time_Assignment_A_2
 + Time_Assignment_D_2 <= 3
_C12: Room_Assignment_A_2 + Room_Assignment_D_2 + Time_Assignment_A_2
 + Time_Assignment_D_2 <= 3
_C13: Room_Assignment_A_2 + Room_Assignment_E_2 + Time_Assignment_A_2
 + Time_Assignment_E_2 <= 3
_C14: Room_Assignment_A_3 + Room_Assignment_E_3 + Time_Assignment_A_2
 + Time_Assignment_E_2 <= 3
_C15: Room_Assignment_A_4 + Room_Assignment_E_4 + Time_Assignment_A_2
 + Time_Assignment_E_2 <= 3
_C16: Room_Assignment_A_2 + Room_Assignment_E_2 + Time_Assignment_A_3
 + Time_Assignment_E_3 <= 3
_C17: Room_Assignment_A_3 + Room_Assignment_E_3 + Time_Assignment_A_3
 + Time_Assignment_E_3 <= 3
_C18: Room_Assignment_A_4 + Room_Assignment_E_4 + Time_Assignment_A_3
 + Time_Assignment_E_3 <= 3
_C19: Room_Assignment_A_2 + Room_Assignment_B_2 + Time_Assignment_A_1
 + Time_Assignment_B_1 <= 3
_C2: Room_Assignment_A_3 + Room_Assignment_B_3 + Time_Assignment_A_1
 + Time_Assignment_B_1 <= 3
_C20: Room_Assignment_A_3 + Room_Assignment_B_3 + Time_Assignment_A_1
 + Time_Assignment_B_1 <= 3
_C21: Room_Assignment_B_2 + Room_Assignment_D_2 + Time_Assignment_B_1
 + Time_Assignment_D_1 <= 3
_C22: Room_Assignment_A_1 + Room_Assignment_C_1 + Time_Assignment_A_1
 + Time_Assignment_C_1 <= 3
_C23: Room_Assignment_A_4 + Room_Assignment_C_4 + Time_Assignment_A_1
 + Time_Assignment_C_1 <= 3
_C24: Room_Assignment_A_1 + Room_Assignment_C_1 + Time_Assignment_A_2
 + Time_Assignment_C_2 <= 3
_C25: Room_Assignment_A_4 + Room_Assignment_C_4 + Time_Assignment_A_2
 + Time_Assignment_C_2 <= 3
_C26: Room_Assignment_A_1 + Room_Assignment_C_1 + Time_Assignment_A_3
 + Time_Assignment_C_3 <= 3
_C27: Room_Assignment_A_4 + Room_Assignment_C_4 + Time_Assignment_A_3
 + Time_Assignment_C_3 <= 3
_C28: Room_Assignment_C_1 + Room_Assignment_D_1 + Time_Assignment_C_1
 + Time_Assignment_D_1 <= 3
_C29: Room_Assignment_C_1 + Room_Assignment_D_1 + Time_Assignment_C_2
 + Time_Assignment_D_2 <= 3
_C3: Room_Assignment_A_1 + Room_Assignment_C_1 + Time_Assignment_A_1
 + Time_Assignment_C_1 <= 3
_C30: Room_Assignment_C_4 + Room_Assignment_E_4 + Time_Assignment_C_2
 + Time_Assignment_E_2 <= 3
_C31: Room_Assignment_C_4 + Room_Assignment_E_4 + Time_Assignment_C_3
 + Time_Assignment_E_3 <= 3
_C32: Room_Assignment_A_1 + Room_Assignment_D_1 + Time_Assignment_A_1
 + Time_Assignment_D_1 <= 3
_C33: Room_Assignment_A_2 + Room_Assignment_D_2 + Time_Assignment_A_1
 + Time_Assignment_D_1 <= 3
_C34: Room_Assignment_A_1 + Room_Assignment_D_1 + Time_Assignment_A_2
 + Time_Assignment_D_2 <= 3
_C35: Room_Assignment_A_2 + Room_Assignment_D_2 + Time_Assignment_A_2
 + Time_Assignment_D_2 <= 3
_C36: Room_Assignment_B_2 + Room_Assignment_D_2 + Time_Assignment_B_1
 + Time_Assignment_D_1 <= 3
_C37: Room_Assignment_C_1 + Room_Assignment_D_1 + Time_Assignment_C_1
 + Time_Assignment_D_1 <= 3
_C38: Room_Assignment_C_1 + Room_Assignment_D_1 + Time_Assignment_C_2
 + Time_Assignment_D_2 <= 3
_C39: Room_Assignment_D_2 + Room_Assignment_E_2 + Time_Assignment_D_2
 + Time_Assignment_E_2 <= 3
_C4: Room_Assignment_A_4 + Room_Assignment_C_4 + Time_Assignment_A_1
 + Time_Assignment_C_1 <= 3
_C40: Room_Assignment_A_2 + Room_Assignment_E_2 + Time_Assignment_A_2
 + Time_Assignment_E_2 <= 3
_C41: Room_Assignment_A_3 + Room_Assignment_E_3 + Time_Assignment_A_2
 + Time_Assignment_E_2 <= 3
_C42: Room_Assignment_A_4 + Room_Assignment_E_4 + Time_Assignment_A_2
 + Time_Assignment_E_2 <= 3
_C43: Room_Assignment_A_2 + Room_Assignment_E_2 + Time_Assignment_A_3
 + Time_Assignment_E_3 <= 3
_C44: Room_Assignment_A_3 + Room_Assignment_E_3 + Time_Assignment_A_3
 + Time_Assignment_E_3 <= 3
_C45: Room_Assignment_A_4 + Room_Assignment_E_4 + Time_Assignment_A_3
 + Time_Assignment_E_3 <= 3
_C46: Room_Assignment_C_4 + Room_Assignment_E_4 + Time_Assignment_C_2
 + Time_Assignment_E_2 <= 3
_C47: Room_Assignment_C_4 + Room_Assignment_E_4 + Time_Assignment_C_3
 + Time_Assignment_E_3 <= 3
_C48: Room_Assignment_D_2 + Room_Assignment_E_2 + Time_Assignment_D_2
 + Time_Assignment_E_2 <= 3
_C49: Room_Assignment_A_1 + Time_Assignment_A_1 <= 2
_C5: Room_Assignment_A_1 + Room_Assignment_C_1 + Time_Assignment_A_2
 + Time_Assignment_C_2 <= 3
_C50: Room_Assignment_A_2 + Time_Assignment_A_1 <= 2
_C51: Room_Assignment_A_3 + Time_Assignment_A_1 <= 2
_C52: Room_Assignment_A_4 + Time_Assignment_A_1 <= 1
_C53: Room_Assignment_A_1 + Time_Assignment_A_2 <= 2
_C54: Room_Assignment_A_2 + Time_Assignment_A_2 <= 1
_C55: Room_Assignment_A_3 + Time_Assignment_A_2 <= 2
_C56: Room_Assignment_A_4 + Time_Assignment_A_2 <= 1
_C57: Room_Assignment_A_1 + Time_Assignment_A_3 <= 2
_C58: Room_Assignment_A_2 + Time_Assignment_A_3 <= 1
_C59: Room_Assignment_A_3 + Time_Assignment_A_3 <= 1
_C6: Room_Assignment_A_4 + Room_Assignment_C_4 + Time_Assignment_A_2
 + Time_Assignment_C_2 <= 3
_C60: Room_Assignment_A_4 + Time_Assignment_A_3 <= 2
_C61: Room_Assignment_B_2 + Time_Assignment_B_1 <= 2
_C62: Room_Assignment_B_3 + Time_Assignment_B_1 <= 2
_C63: Room_Assignment_C_1 + Time_Assignment_C_1 <= 2
_C64: Room_Assignment_C_4 + Time_Assignment_C_1 <= 1
_C65: Room_Assignment_C_1 + Time_Assignment_C_2 <= 2
_C66: Room_Assignment_C_4 + Time_Assignment_C_2 <= 1
_C67: Room_Assignment_C_1 + Time_Assignment_C_3 <= 2
_C68: Room_Assignment_C_4 + Time_Assignment_C_3 <= 2
_C69: Room_Assignment_D_1 + Time_Assignment_D_1 <= 2
_C7: Room_Assignment_A_1 + Room_Assignment_C_1 + Time_Assignment_A_3
 + Time_Assignment_C_3 <= 3
_C70: Room_Assignment_D_2 + Time_Assignment_D_1 <= 2
_C71: Room_Assignment_D_1 + Time_Assignment_D_2 <= 2
_C72: Room_Assignment_D_2 + Time_Assignment_D_2 <= 1
_C73: Room_Assignment_E_2 + Time_Assignment_E_2 <= 1
_C74: Room_Assignment_E_3 + Time_Assignment_E_2 <= 2
_C75: Room_Assignment_E_4 + Time_Assignment_E_2 <= 1
_C76: Room_Assignment_E_2 + Time_Assignment_E_3 <= 1
_C77: Room_Assignment_E_3 + Time_Assignment_E_3 <= 1
_C78: Room_Assignment_E_4 + Time_Assignment_E_3 <= 2
_C8: Room_Assignment_A_4 + Room_Assignment_C_4 + Time_Assignment_A_3
 + Time_Assignment_C_3 <= 3
_C9: Room_Assignment_A_1 + Room_Assignment_D_1 + Time_Assignment_A_1
 + Time_Assignment_D_1 <= 3
Bounds
 0 <= Room_Assignment_A_1
 0 <= Room_Assignment_A_2
 0 <= Room_Assignment_A_3
 0 <= Room_Assignment_A_4
 0 <= Room_Assignment_B_2
 0 <= Room_Assignment_B_3
 0 <= Room_Assignment_C_1
 0 <= Room_Assignment_C_4
 0 <= Room_Assignment_D_1
 0 <= Room_Assignment_D_2
 0 <= Room_Assignment_E_2
 0 <= Room_Assignment_E_3
 0 <= Room_Assignment_E_4
 0 <= Time_Assignment_A_1
 0 <= Time_Assignment_A_2
 0 <= Time_Assignment_A_3
 0 <= Time_Assignment_B_1
 0 <= Time_Assignment_C_1
 0 <= Time_Assignment_C_2
 0 <= Time_Assignment_C_3
 0 <= Time_Assignment_D_1
 0 <= Time_Assignment_D_2
 0 <= Time_Assignment_E_2
 0 <= Time_Assignment_E_3
 __dummy = 0
Generals
Room_Assignment_A_1
Room_Assignment_A_2
Room_Assignment_A_3
Room_Assignment_A_4
Room_Assignment_B_2
Room_Assignment_B_3
Room_Assignment_C_1
Room_Assignment_C_4
Room_Assignment_D_1
Room_Assignment_D_2
Room_Assignment_E_2
Room_Assignment_E_3
Room_Assignment_E_4
Time_Assignment_A_1
Time_Assignment_A_2
Time_Assignment_A_3
Time_Assignment_B_1
Time_Assignment_C_1
Time_Assignment_C_2
Time_Assignment_C_3
Time_Assignment_D_1
Time_Assignment_D_2
Time_Assignment_E_2
Time_Assignment_E_3
End
