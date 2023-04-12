\* Course_Scheduling *\
Minimize
minimize_the_number_of_conflicts.: 0.5 Overlap_A_C + Overlap_A_E
 + 1.5 Overlap_A_F + 0.5 Overlap_A_G + Overlap_A_H + 1.5 Overlap_A_I
 + 2 Overlap_A_J + 0.5 Overlap_B_A + 1.5 Overlap_B_D + 2 Overlap_B_E
 + 5 Overlap_B_F + Overlap_B_G + Overlap_B_H + Overlap_B_I + Overlap_B_J
 + 1.5 Overlap_C_B + 0.5 Overlap_C_E + Overlap_C_F + Overlap_D_A
 + 2 Overlap_D_B + 0.5 Overlap_D_C + 50 Overlap_D_F + 0.5 Overlap_D_G
 + 2.5 Overlap_D_H + 0.5 Overlap_D_I + 2.5 Overlap_D_J + 1.5 Overlap_E_A
 + 5 Overlap_E_B + Overlap_E_C + 50 Overlap_E_D + 1.5 Overlap_E_G
 + 2 Overlap_E_H + 2.5 Overlap_E_I + 3 Overlap_E_J + 0.5 Overlap_F_A
 + Overlap_F_B + 0.5 Overlap_F_D + 1.5 Overlap_F_E + 5 Overlap_F_H
 + 5 Overlap_F_I + 5 Overlap_F_J + Overlap_G_A + Overlap_G_B + 2.5 Overlap_G_D
 + 2 Overlap_G_E + 5 Overlap_G_F + 0.5 Overlap_G_I + Overlap_G_J
 + 1.5 Overlap_H_A + Overlap_H_B + 0.5 Overlap_H_D + 2.5 Overlap_H_E
 + 5 Overlap_H_F + 0.5 Overlap_H_G + 2.5 Overlap_H_J + 2 Overlap_I_A
 + Overlap_I_B + 2.5 Overlap_I_D + 3 Overlap_I_E + 5 Overlap_I_F + Overlap_I_G
 + 2.5 Overlap_I_H + 2.5 Overlap_J_A + Overlap_J_B + 0.5 Overlap_J_C
 + 0.5 Overlap_J_D + 3.5 Overlap_J_E + 5 Overlap_J_F + 1.5 Overlap_J_G
 + 5 Overlap_J_H + 50 Overlap_J_I
Subject To
Sum_of_Assignments_for_class_A: Time_Assignment_A_1 + Time_Assignment_A_2
 + Time_Assignment_A_3 = 1
Sum_of_Assignments_for_class_B: Time_Assignment_B_1 = 1
Sum_of_Assignments_for_class_C: Time_Assignment_C_1 + Time_Assignment_C_2
 + Time_Assignment_C_3 = 1
Sum_of_Assignments_for_class_D: Time_Assignment_D_1 + Time_Assignment_D_2
 + Time_Assignment_D_3 = 1
Sum_of_Assignments_for_class_E: Time_Assignment_E_2 + Time_Assignment_E_3 = 1
Sum_of_Assignments_for_class_F: Time_Assignment_F_1 + Time_Assignment_F_2
 + Time_Assignment_F_3 = 1
Sum_of_Assignments_for_class_G: Time_Assignment_G_3 = 1
Sum_of_Assignments_for_class_H: Time_Assignment_H_1 + Time_Assignment_H_2 = 1
Sum_of_Assignments_for_class_I: Time_Assignment_I_1 + Time_Assignment_I_2
 + Time_Assignment_I_3 = 1
Sum_of_Assignments_for_class_J: Time_Assignment_J_2 + Time_Assignment_J_3 = 1
Sum_of_Assignments_for_room_A: Room_Assignment_A_1 + Room_Assignment_A_10
 + Room_Assignment_A_2 + Room_Assignment_A_3 + Room_Assignment_A_4
 + Room_Assignment_A_5 + Room_Assignment_A_6 + Room_Assignment_A_7
 + Room_Assignment_A_8 + Room_Assignment_A_9 = 1
Sum_of_Assignments_for_room_B: Room_Assignment_B_2 + Room_Assignment_B_3 = 1
Sum_of_Assignments_for_room_C: Room_Assignment_C_1 + Room_Assignment_C_4
 + Room_Assignment_C_6 + Room_Assignment_C_8 + Room_Assignment_C_9 = 1
Sum_of_Assignments_for_room_D: Room_Assignment_D_2 + Room_Assignment_D_3
 + Room_Assignment_D_5 = 1
Sum_of_Assignments_for_room_E: Room_Assignment_E_2 + Room_Assignment_E_3
 + Room_Assignment_E_4 = 1
Sum_of_Assignments_for_room_F: Room_Assignment_F_1 + Room_Assignment_F_10
 + Room_Assignment_F_2 + Room_Assignment_F_3 + Room_Assignment_F_9 = 1
Sum_of_Assignments_for_room_G: Room_Assignment_G_10 + Room_Assignment_G_2
 + Room_Assignment_G_3 + Room_Assignment_G_5 + Room_Assignment_G_6
 + Room_Assignment_G_8 = 1
Sum_of_Assignments_for_room_H: Room_Assignment_H_1 + Room_Assignment_H_4
 + Room_Assignment_H_5 = 1
Sum_of_Assignments_for_room_I: Room_Assignment_I_2 + Room_Assignment_I_3
 + Room_Assignment_I_5 + Room_Assignment_I_6 = 1
Sum_of_Assignments_for_room_J: Room_Assignment_J_2 + Room_Assignment_J_3
 + Room_Assignment_J_4 = 1
_C1: Room_Assignment_A_2 + Room_Assignment_B_2 + Time_Assignment_A_1
 + Time_Assignment_B_1 <= 3
_C10: Room_Assignment_A_6 + Room_Assignment_C_6 + Time_Assignment_A_2
 + Time_Assignment_C_2 <= 3
_C100: Room_Assignment_A_9 + Room_Assignment_C_9 + Time_Assignment_A_3
 + Time_Assignment_C_3 <= 3
_C101: Room_Assignment_C_4 + Room_Assignment_E_4 + Time_Assignment_C_2
 + Time_Assignment_E_2 <= 3
_C102: Room_Assignment_C_4 + Room_Assignment_E_4 + Time_Assignment_C_3
 + Time_Assignment_E_3 <= 3
_C103: Room_Assignment_C_1 + Room_Assignment_F_1 + Time_Assignment_C_1
 + Time_Assignment_F_1 <= 3
_C104: Room_Assignment_C_9 + Room_Assignment_F_9 + Time_Assignment_C_1
 + Time_Assignment_F_1 <= 3
_C105: Room_Assignment_C_1 + Room_Assignment_F_1 + Time_Assignment_C_2
 + Time_Assignment_F_2 <= 3
_C106: Room_Assignment_C_9 + Room_Assignment_F_9 + Time_Assignment_C_2
 + Time_Assignment_F_2 <= 3
_C107: Room_Assignment_C_1 + Room_Assignment_F_1 + Time_Assignment_C_3
 + Time_Assignment_F_3 <= 3
_C108: Room_Assignment_C_9 + Room_Assignment_F_9 + Time_Assignment_C_3
 + Time_Assignment_F_3 <= 3
_C109: Room_Assignment_C_6 + Room_Assignment_G_6 + Time_Assignment_C_3
 + Time_Assignment_G_3 <= 3
_C11: Room_Assignment_A_8 + Room_Assignment_C_8 + Time_Assignment_A_2
 + Time_Assignment_C_2 <= 3
_C110: Room_Assignment_C_8 + Room_Assignment_G_8 + Time_Assignment_C_3
 + Time_Assignment_G_3 <= 3
_C111: Room_Assignment_C_1 + Room_Assignment_H_1 + Time_Assignment_C_1
 + Time_Assignment_H_1 <= 3
_C112: Room_Assignment_C_4 + Room_Assignment_H_4 + Time_Assignment_C_1
 + Time_Assignment_H_1 <= 3
_C113: Room_Assignment_C_1 + Room_Assignment_H_1 + Time_Assignment_C_2
 + Time_Assignment_H_2 <= 3
_C114: Room_Assignment_C_4 + Room_Assignment_H_4 + Time_Assignment_C_2
 + Time_Assignment_H_2 <= 3
_C115: Room_Assignment_C_6 + Room_Assignment_I_6 + Time_Assignment_C_1
 + Time_Assignment_I_1 <= 3
_C116: Room_Assignment_C_6 + Room_Assignment_I_6 + Time_Assignment_C_2
 + Time_Assignment_I_2 <= 3
_C117: Room_Assignment_C_6 + Room_Assignment_I_6 + Time_Assignment_C_3
 + Time_Assignment_I_3 <= 3
_C118: Room_Assignment_C_4 + Room_Assignment_J_4 + Time_Assignment_C_2
 + Time_Assignment_J_2 <= 3
_C119: Room_Assignment_C_4 + Room_Assignment_J_4 + Time_Assignment_C_3
 + Time_Assignment_J_3 <= 3
_C12: Room_Assignment_A_9 + Room_Assignment_C_9 + Time_Assignment_A_2
 + Time_Assignment_C_2 <= 3
_C120: Room_Assignment_A_2 + Room_Assignment_D_2 + Time_Assignment_A_1
 + Time_Assignment_D_1 <= 3
_C121: Room_Assignment_A_3 + Room_Assignment_D_3 + Time_Assignment_A_1
 + Time_Assignment_D_1 <= 3
_C122: Room_Assignment_A_5 + Room_Assignment_D_5 + Time_Assignment_A_1
 + Time_Assignment_D_1 <= 3
_C123: Room_Assignment_A_2 + Room_Assignment_D_2 + Time_Assignment_A_2
 + Time_Assignment_D_2 <= 3
_C124: Room_Assignment_A_3 + Room_Assignment_D_3 + Time_Assignment_A_2
 + Time_Assignment_D_2 <= 3
_C125: Room_Assignment_A_5 + Room_Assignment_D_5 + Time_Assignment_A_2
 + Time_Assignment_D_2 <= 3
_C126: Room_Assignment_A_2 + Room_Assignment_D_2 + Time_Assignment_A_3
 + Time_Assignment_D_3 <= 3
_C127: Room_Assignment_A_3 + Room_Assignment_D_3 + Time_Assignment_A_3
 + Time_Assignment_D_3 <= 3
_C128: Room_Assignment_A_5 + Room_Assignment_D_5 + Time_Assignment_A_3
 + Time_Assignment_D_3 <= 3
_C129: Room_Assignment_B_2 + Room_Assignment_D_2 + Time_Assignment_B_1
 + Time_Assignment_D_1 <= 3
_C13: Room_Assignment_A_1 + Room_Assignment_C_1 + Time_Assignment_A_3
 + Time_Assignment_C_3 <= 3
_C130: Room_Assignment_B_3 + Room_Assignment_D_3 + Time_Assignment_B_1
 + Time_Assignment_D_1 <= 3
_C131: Room_Assignment_D_2 + Room_Assignment_E_2 + Time_Assignment_D_2
 + Time_Assignment_E_2 <= 3
_C132: Room_Assignment_D_3 + Room_Assignment_E_3 + Time_Assignment_D_2
 + Time_Assignment_E_2 <= 3
_C133: Room_Assignment_D_2 + Room_Assignment_E_2 + Time_Assignment_D_3
 + Time_Assignment_E_3 <= 3
_C134: Room_Assignment_D_3 + Room_Assignment_E_3 + Time_Assignment_D_3
 + Time_Assignment_E_3 <= 3
_C135: Room_Assignment_D_2 + Room_Assignment_F_2 + Time_Assignment_D_1
 + Time_Assignment_F_1 <= 3
_C136: Room_Assignment_D_3 + Room_Assignment_F_3 + Time_Assignment_D_1
 + Time_Assignment_F_1 <= 3
_C137: Room_Assignment_D_2 + Room_Assignment_F_2 + Time_Assignment_D_2
 + Time_Assignment_F_2 <= 3
_C138: Room_Assignment_D_3 + Room_Assignment_F_3 + Time_Assignment_D_2
 + Time_Assignment_F_2 <= 3
_C139: Room_Assignment_D_2 + Room_Assignment_F_2 + Time_Assignment_D_3
 + Time_Assignment_F_3 <= 3
_C14: Room_Assignment_A_4 + Room_Assignment_C_4 + Time_Assignment_A_3
 + Time_Assignment_C_3 <= 3
_C140: Room_Assignment_D_3 + Room_Assignment_F_3 + Time_Assignment_D_3
 + Time_Assignment_F_3 <= 3
_C141: Room_Assignment_D_2 + Room_Assignment_G_2 + Time_Assignment_D_3
 + Time_Assignment_G_3 <= 3
_C142: Room_Assignment_D_3 + Room_Assignment_G_3 + Time_Assignment_D_3
 + Time_Assignment_G_3 <= 3
_C143: Room_Assignment_D_5 + Room_Assignment_G_5 + Time_Assignment_D_3
 + Time_Assignment_G_3 <= 3
_C144: Room_Assignment_D_5 + Room_Assignment_H_5 + Time_Assignment_D_1
 + Time_Assignment_H_1 <= 3
_C145: Room_Assignment_D_5 + Room_Assignment_H_5 + Time_Assignment_D_2
 + Time_Assignment_H_2 <= 3
_C146: Room_Assignment_D_2 + Room_Assignment_I_2 + Time_Assignment_D_1
 + Time_Assignment_I_1 <= 3
_C147: Room_Assignment_D_3 + Room_Assignment_I_3 + Time_Assignment_D_1
 + Time_Assignment_I_1 <= 3
_C148: Room_Assignment_D_5 + Room_Assignment_I_5 + Time_Assignment_D_1
 + Time_Assignment_I_1 <= 3
_C149: Room_Assignment_D_2 + Room_Assignment_I_2 + Time_Assignment_D_2
 + Time_Assignment_I_2 <= 3
_C15: Room_Assignment_A_6 + Room_Assignment_C_6 + Time_Assignment_A_3
 + Time_Assignment_C_3 <= 3
_C150: Room_Assignment_D_3 + Room_Assignment_I_3 + Time_Assignment_D_2
 + Time_Assignment_I_2 <= 3
_C151: Room_Assignment_D_5 + Room_Assignment_I_5 + Time_Assignment_D_2
 + Time_Assignment_I_2 <= 3
_C152: Room_Assignment_D_2 + Room_Assignment_I_2 + Time_Assignment_D_3
 + Time_Assignment_I_3 <= 3
_C153: Room_Assignment_D_3 + Room_Assignment_I_3 + Time_Assignment_D_3
 + Time_Assignment_I_3 <= 3
_C154: Room_Assignment_D_5 + Room_Assignment_I_5 + Time_Assignment_D_3
 + Time_Assignment_I_3 <= 3
_C155: Room_Assignment_D_2 + Room_Assignment_J_2 + Time_Assignment_D_2
 + Time_Assignment_J_2 <= 3
_C156: Room_Assignment_D_3 + Room_Assignment_J_3 + Time_Assignment_D_2
 + Time_Assignment_J_2 <= 3
_C157: Room_Assignment_D_2 + Room_Assignment_J_2 + Time_Assignment_D_3
 + Time_Assignment_J_3 <= 3
_C158: Room_Assignment_D_3 + Room_Assignment_J_3 + Time_Assignment_D_3
 + Time_Assignment_J_3 <= 3
_C159: Room_Assignment_A_2 + Room_Assignment_E_2 + Time_Assignment_A_2
 + Time_Assignment_E_2 <= 3
_C16: Room_Assignment_A_8 + Room_Assignment_C_8 + Time_Assignment_A_3
 + Time_Assignment_C_3 <= 3
_C160: Room_Assignment_A_3 + Room_Assignment_E_3 + Time_Assignment_A_2
 + Time_Assignment_E_2 <= 3
_C161: Room_Assignment_A_4 + Room_Assignment_E_4 + Time_Assignment_A_2
 + Time_Assignment_E_2 <= 3
_C162: Room_Assignment_A_2 + Room_Assignment_E_2 + Time_Assignment_A_3
 + Time_Assignment_E_3 <= 3
_C163: Room_Assignment_A_3 + Room_Assignment_E_3 + Time_Assignment_A_3
 + Time_Assignment_E_3 <= 3
_C164: Room_Assignment_A_4 + Room_Assignment_E_4 + Time_Assignment_A_3
 + Time_Assignment_E_3 <= 3
_C165: Room_Assignment_C_4 + Room_Assignment_E_4 + Time_Assignment_C_2
 + Time_Assignment_E_2 <= 3
_C166: Room_Assignment_C_4 + Room_Assignment_E_4 + Time_Assignment_C_3
 + Time_Assignment_E_3 <= 3
_C167: Room_Assignment_D_2 + Room_Assignment_E_2 + Time_Assignment_D_2
 + Time_Assignment_E_2 <= 3
_C168: Room_Assignment_D_3 + Room_Assignment_E_3 + Time_Assignment_D_2
 + Time_Assignment_E_2 <= 3
_C169: Room_Assignment_D_2 + Room_Assignment_E_2 + Time_Assignment_D_3
 + Time_Assignment_E_3 <= 3
_C17: Room_Assignment_A_9 + Room_Assignment_C_9 + Time_Assignment_A_3
 + Time_Assignment_C_3 <= 3
_C170: Room_Assignment_D_3 + Room_Assignment_E_3 + Time_Assignment_D_3
 + Time_Assignment_E_3 <= 3
_C171: Room_Assignment_E_2 + Room_Assignment_F_2 + Time_Assignment_E_2
 + Time_Assignment_F_2 <= 3
_C172: Room_Assignment_E_3 + Room_Assignment_F_3 + Time_Assignment_E_2
 + Time_Assignment_F_2 <= 3
_C173: Room_Assignment_E_2 + Room_Assignment_F_2 + Time_Assignment_E_3
 + Time_Assignment_F_3 <= 3
_C174: Room_Assignment_E_3 + Room_Assignment_F_3 + Time_Assignment_E_3
 + Time_Assignment_F_3 <= 3
_C175: Room_Assignment_E_2 + Room_Assignment_G_2 + Time_Assignment_E_3
 + Time_Assignment_G_3 <= 3
_C176: Room_Assignment_E_3 + Room_Assignment_G_3 + Time_Assignment_E_3
 + Time_Assignment_G_3 <= 3
_C177: Room_Assignment_E_4 + Room_Assignment_H_4 + Time_Assignment_E_2
 + Time_Assignment_H_2 <= 3
_C178: Room_Assignment_E_2 + Room_Assignment_I_2 + Time_Assignment_E_2
 + Time_Assignment_I_2 <= 3
_C179: Room_Assignment_E_3 + Room_Assignment_I_3 + Time_Assignment_E_2
 + Time_Assignment_I_2 <= 3
_C18: Room_Assignment_A_2 + Room_Assignment_D_2 + Time_Assignment_A_1
 + Time_Assignment_D_1 <= 3
_C180: Room_Assignment_E_2 + Room_Assignment_I_2 + Time_Assignment_E_3
 + Time_Assignment_I_3 <= 3
_C181: Room_Assignment_E_3 + Room_Assignment_I_3 + Time_Assignment_E_3
 + Time_Assignment_I_3 <= 3
_C182: Room_Assignment_E_2 + Room_Assignment_J_2 + Time_Assignment_E_2
 + Time_Assignment_J_2 <= 3
_C183: Room_Assignment_E_3 + Room_Assignment_J_3 + Time_Assignment_E_2
 + Time_Assignment_J_2 <= 3
_C184: Room_Assignment_E_4 + Room_Assignment_J_4 + Time_Assignment_E_2
 + Time_Assignment_J_2 <= 3
_C185: Room_Assignment_E_2 + Room_Assignment_J_2 + Time_Assignment_E_3
 + Time_Assignment_J_3 <= 3
_C186: Room_Assignment_E_3 + Room_Assignment_J_3 + Time_Assignment_E_3
 + Time_Assignment_J_3 <= 3
_C187: Room_Assignment_E_4 + Room_Assignment_J_4 + Time_Assignment_E_3
 + Time_Assignment_J_3 <= 3
_C188: Room_Assignment_A_1 + Room_Assignment_F_1 + Time_Assignment_A_1
 + Time_Assignment_F_1 <= 3
_C189: Room_Assignment_A_2 + Room_Assignment_F_2 + Time_Assignment_A_1
 + Time_Assignment_F_1 <= 3
_C19: Room_Assignment_A_3 + Room_Assignment_D_3 + Time_Assignment_A_1
 + Time_Assignment_D_1 <= 3
_C190: Room_Assignment_A_3 + Room_Assignment_F_3 + Time_Assignment_A_1
 + Time_Assignment_F_1 <= 3
_C191: Room_Assignment_A_9 + Room_Assignment_F_9 + Time_Assignment_A_1
 + Time_Assignment_F_1 <= 3
_C192: Room_Assignment_A_10 + Room_Assignment_F_10 + Time_Assignment_A_1
 + Time_Assignment_F_1 <= 3
_C193: Room_Assignment_A_1 + Room_Assignment_F_1 + Time_Assignment_A_2
 + Time_Assignment_F_2 <= 3
_C194: Room_Assignment_A_2 + Room_Assignment_F_2 + Time_Assignment_A_2
 + Time_Assignment_F_2 <= 3
_C195: Room_Assignment_A_3 + Room_Assignment_F_3 + Time_Assignment_A_2
 + Time_Assignment_F_2 <= 3
_C196: Room_Assignment_A_9 + Room_Assignment_F_9 + Time_Assignment_A_2
 + Time_Assignment_F_2 <= 3
_C197: Room_Assignment_A_10 + Room_Assignment_F_10 + Time_Assignment_A_2
 + Time_Assignment_F_2 <= 3
_C198: Room_Assignment_A_1 + Room_Assignment_F_1 + Time_Assignment_A_3
 + Time_Assignment_F_3 <= 3
_C199: Room_Assignment_A_2 + Room_Assignment_F_2 + Time_Assignment_A_3
 + Time_Assignment_F_3 <= 3
_C2: Room_Assignment_A_3 + Room_Assignment_B_3 + Time_Assignment_A_1
 + Time_Assignment_B_1 <= 3
_C20: Room_Assignment_A_5 + Room_Assignment_D_5 + Time_Assignment_A_1
 + Time_Assignment_D_1 <= 3
_C200: Room_Assignment_A_3 + Room_Assignment_F_3 + Time_Assignment_A_3
 + Time_Assignment_F_3 <= 3
_C201: Room_Assignment_A_9 + Room_Assignment_F_9 + Time_Assignment_A_3
 + Time_Assignment_F_3 <= 3
_C202: Room_Assignment_A_10 + Room_Assignment_F_10 + Time_Assignment_A_3
 + Time_Assignment_F_3 <= 3
_C203: Room_Assignment_B_2 + Room_Assignment_F_2 + Time_Assignment_B_1
 + Time_Assignment_F_1 <= 3
_C204: Room_Assignment_B_3 + Room_Assignment_F_3 + Time_Assignment_B_1
 + Time_Assignment_F_1 <= 3
_C205: Room_Assignment_C_1 + Room_Assignment_F_1 + Time_Assignment_C_1
 + Time_Assignment_F_1 <= 3
_C206: Room_Assignment_C_9 + Room_Assignment_F_9 + Time_Assignment_C_1
 + Time_Assignment_F_1 <= 3
_C207: Room_Assignment_C_1 + Room_Assignment_F_1 + Time_Assignment_C_2
 + Time_Assignment_F_2 <= 3
_C208: Room_Assignment_C_9 + Room_Assignment_F_9 + Time_Assignment_C_2
 + Time_Assignment_F_2 <= 3
_C209: Room_Assignment_C_1 + Room_Assignment_F_1 + Time_Assignment_C_3
 + Time_Assignment_F_3 <= 3
_C21: Room_Assignment_A_2 + Room_Assignment_D_2 + Time_Assignment_A_2
 + Time_Assignment_D_2 <= 3
_C210: Room_Assignment_C_9 + Room_Assignment_F_9 + Time_Assignment_C_3
 + Time_Assignment_F_3 <= 3
_C211: Room_Assignment_D_2 + Room_Assignment_F_2 + Time_Assignment_D_1
 + Time_Assignment_F_1 <= 3
_C212: Room_Assignment_D_3 + Room_Assignment_F_3 + Time_Assignment_D_1
 + Time_Assignment_F_1 <= 3
_C213: Room_Assignment_D_2 + Room_Assignment_F_2 + Time_Assignment_D_2
 + Time_Assignment_F_2 <= 3
_C214: Room_Assignment_D_3 + Room_Assignment_F_3 + Time_Assignment_D_2
 + Time_Assignment_F_2 <= 3
_C215: Room_Assignment_D_2 + Room_Assignment_F_2 + Time_Assignment_D_3
 + Time_Assignment_F_3 <= 3
_C216: Room_Assignment_D_3 + Room_Assignment_F_3 + Time_Assignment_D_3
 + Time_Assignment_F_3 <= 3
_C217: Room_Assignment_E_2 + Room_Assignment_F_2 + Time_Assignment_E_2
 + Time_Assignment_F_2 <= 3
_C218: Room_Assignment_E_3 + Room_Assignment_F_3 + Time_Assignment_E_2
 + Time_Assignment_F_2 <= 3
_C219: Room_Assignment_E_2 + Room_Assignment_F_2 + Time_Assignment_E_3
 + Time_Assignment_F_3 <= 3
_C22: Room_Assignment_A_3 + Room_Assignment_D_3 + Time_Assignment_A_2
 + Time_Assignment_D_2 <= 3
_C220: Room_Assignment_E_3 + Room_Assignment_F_3 + Time_Assignment_E_3
 + Time_Assignment_F_3 <= 3
_C221: Room_Assignment_F_2 + Room_Assignment_G_2 + Time_Assignment_F_3
 + Time_Assignment_G_3 <= 3
_C222: Room_Assignment_F_3 + Room_Assignment_G_3 + Time_Assignment_F_3
 + Time_Assignment_G_3 <= 3
_C223: Room_Assignment_F_10 + Room_Assignment_G_10 + Time_Assignment_F_3
 + Time_Assignment_G_3 <= 3
_C224: Room_Assignment_F_1 + Room_Assignment_H_1 + Time_Assignment_F_1
 + Time_Assignment_H_1 <= 3
_C225: Room_Assignment_F_1 + Room_Assignment_H_1 + Time_Assignment_F_2
 + Time_Assignment_H_2 <= 3
_C226: Room_Assignment_F_2 + Room_Assignment_I_2 + Time_Assignment_F_1
 + Time_Assignment_I_1 <= 3
_C227: Room_Assignment_F_3 + Room_Assignment_I_3 + Time_Assignment_F_1
 + Time_Assignment_I_1 <= 3
_C228: Room_Assignment_F_2 + Room_Assignment_I_2 + Time_Assignment_F_2
 + Time_Assignment_I_2 <= 3
_C229: Room_Assignment_F_3 + Room_Assignment_I_3 + Time_Assignment_F_2
 + Time_Assignment_I_2 <= 3
_C23: Room_Assignment_A_5 + Room_Assignment_D_5 + Time_Assignment_A_2
 + Time_Assignment_D_2 <= 3
_C230: Room_Assignment_F_2 + Room_Assignment_I_2 + Time_Assignment_F_3
 + Time_Assignment_I_3 <= 3
_C231: Room_Assignment_F_3 + Room_Assignment_I_3 + Time_Assignment_F_3
 + Time_Assignment_I_3 <= 3
_C232: Room_Assignment_F_2 + Room_Assignment_J_2 + Time_Assignment_F_2
 + Time_Assignment_J_2 <= 3
_C233: Room_Assignment_F_3 + Room_Assignment_J_3 + Time_Assignment_F_2
 + Time_Assignment_J_2 <= 3
_C234: Room_Assignment_F_2 + Room_Assignment_J_2 + Time_Assignment_F_3
 + Time_Assignment_J_3 <= 3
_C235: Room_Assignment_F_3 + Room_Assignment_J_3 + Time_Assignment_F_3
 + Time_Assignment_J_3 <= 3
_C236: Room_Assignment_A_2 + Room_Assignment_G_2 + Time_Assignment_A_3
 + Time_Assignment_G_3 <= 3
_C237: Room_Assignment_A_3 + Room_Assignment_G_3 + Time_Assignment_A_3
 + Time_Assignment_G_3 <= 3
_C238: Room_Assignment_A_5 + Room_Assignment_G_5 + Time_Assignment_A_3
 + Time_Assignment_G_3 <= 3
_C239: Room_Assignment_A_6 + Room_Assignment_G_6 + Time_Assignment_A_3
 + Time_Assignment_G_3 <= 3
_C24: Room_Assignment_A_2 + Room_Assignment_D_2 + Time_Assignment_A_3
 + Time_Assignment_D_3 <= 3
_C240: Room_Assignment_A_8 + Room_Assignment_G_8 + Time_Assignment_A_3
 + Time_Assignment_G_3 <= 3
_C241: Room_Assignment_A_10 + Room_Assignment_G_10 + Time_Assignment_A_3
 + Time_Assignment_G_3 <= 3
_C242: Room_Assignment_C_6 + Room_Assignment_G_6 + Time_Assignment_C_3
 + Time_Assignment_G_3 <= 3
_C243: Room_Assignment_C_8 + Room_Assignment_G_8 + Time_Assignment_C_3
 + Time_Assignment_G_3 <= 3
_C244: Room_Assignment_D_2 + Room_Assignment_G_2 + Time_Assignment_D_3
 + Time_Assignment_G_3 <= 3
_C245: Room_Assignment_D_3 + Room_Assignment_G_3 + Time_Assignment_D_3
 + Time_Assignment_G_3 <= 3
_C246: Room_Assignment_D_5 + Room_Assignment_G_5 + Time_Assignment_D_3
 + Time_Assignment_G_3 <= 3
_C247: Room_Assignment_E_2 + Room_Assignment_G_2 + Time_Assignment_E_3
 + Time_Assignment_G_3 <= 3
_C248: Room_Assignment_E_3 + Room_Assignment_G_3 + Time_Assignment_E_3
 + Time_Assignment_G_3 <= 3
_C249: Room_Assignment_F_2 + Room_Assignment_G_2 + Time_Assignment_F_3
 + Time_Assignment_G_3 <= 3
_C25: Room_Assignment_A_3 + Room_Assignment_D_3 + Time_Assignment_A_3
 + Time_Assignment_D_3 <= 3
_C250: Room_Assignment_F_3 + Room_Assignment_G_3 + Time_Assignment_F_3
 + Time_Assignment_G_3 <= 3
_C251: Room_Assignment_F_10 + Room_Assignment_G_10 + Time_Assignment_F_3
 + Time_Assignment_G_3 <= 3
_C252: Room_Assignment_G_2 + Room_Assignment_I_2 + Time_Assignment_G_3
 + Time_Assignment_I_3 <= 3
_C253: Room_Assignment_G_3 + Room_Assignment_I_3 + Time_Assignment_G_3
 + Time_Assignment_I_3 <= 3
_C254: Room_Assignment_G_5 + Room_Assignment_I_5 + Time_Assignment_G_3
 + Time_Assignment_I_3 <= 3
_C255: Room_Assignment_G_6 + Room_Assignment_I_6 + Time_Assignment_G_3
 + Time_Assignment_I_3 <= 3
_C256: Room_Assignment_G_2 + Room_Assignment_J_2 + Time_Assignment_G_3
 + Time_Assignment_J_3 <= 3
_C257: Room_Assignment_G_3 + Room_Assignment_J_3 + Time_Assignment_G_3
 + Time_Assignment_J_3 <= 3
_C258: Room_Assignment_A_1 + Room_Assignment_H_1 + Time_Assignment_A_1
 + Time_Assignment_H_1 <= 3
_C259: Room_Assignment_A_4 + Room_Assignment_H_4 + Time_Assignment_A_1
 + Time_Assignment_H_1 <= 3
_C26: Room_Assignment_A_5 + Room_Assignment_D_5 + Time_Assignment_A_3
 + Time_Assignment_D_3 <= 3
_C260: Room_Assignment_A_5 + Room_Assignment_H_5 + Time_Assignment_A_1
 + Time_Assignment_H_1 <= 3
_C261: Room_Assignment_A_1 + Room_Assignment_H_1 + Time_Assignment_A_2
 + Time_Assignment_H_2 <= 3
_C262: Room_Assignment_A_4 + Room_Assignment_H_4 + Time_Assignment_A_2
 + Time_Assignment_H_2 <= 3
_C263: Room_Assignment_A_5 + Room_Assignment_H_5 + Time_Assignment_A_2
 + Time_Assignment_H_2 <= 3
_C264: Room_Assignment_C_1 + Room_Assignment_H_1 + Time_Assignment_C_1
 + Time_Assignment_H_1 <= 3
_C265: Room_Assignment_C_4 + Room_Assignment_H_4 + Time_Assignment_C_1
 + Time_Assignment_H_1 <= 3
_C266: Room_Assignment_C_1 + Room_Assignment_H_1 + Time_Assignment_C_2
 + Time_Assignment_H_2 <= 3
_C267: Room_Assignment_C_4 + Room_Assignment_H_4 + Time_Assignment_C_2
 + Time_Assignment_H_2 <= 3
_C268: Room_Assignment_D_5 + Room_Assignment_H_5 + Time_Assignment_D_1
 + Time_Assignment_H_1 <= 3
_C269: Room_Assignment_D_5 + Room_Assignment_H_5 + Time_Assignment_D_2
 + Time_Assignment_H_2 <= 3
_C27: Room_Assignment_A_2 + Room_Assignment_E_2 + Time_Assignment_A_2
 + Time_Assignment_E_2 <= 3
_C270: Room_Assignment_E_4 + Room_Assignment_H_4 + Time_Assignment_E_2
 + Time_Assignment_H_2 <= 3
_C271: Room_Assignment_F_1 + Room_Assignment_H_1 + Time_Assignment_F_1
 + Time_Assignment_H_1 <= 3
_C272: Room_Assignment_F_1 + Room_Assignment_H_1 + Time_Assignment_F_2
 + Time_Assignment_H_2 <= 3
_C273: Room_Assignment_H_5 + Room_Assignment_I_5 + Time_Assignment_H_1
 + Time_Assignment_I_1 <= 3
_C274: Room_Assignment_H_5 + Room_Assignment_I_5 + Time_Assignment_H_2
 + Time_Assignment_I_2 <= 3
_C275: Room_Assignment_H_4 + Room_Assignment_J_4 + Time_Assignment_H_2
 + Time_Assignment_J_2 <= 3
_C276: Room_Assignment_A_2 + Room_Assignment_I_2 + Time_Assignment_A_1
 + Time_Assignment_I_1 <= 3
_C277: Room_Assignment_A_3 + Room_Assignment_I_3 + Time_Assignment_A_1
 + Time_Assignment_I_1 <= 3
_C278: Room_Assignment_A_5 + Room_Assignment_I_5 + Time_Assignment_A_1
 + Time_Assignment_I_1 <= 3
_C279: Room_Assignment_A_6 + Room_Assignment_I_6 + Time_Assignment_A_1
 + Time_Assignment_I_1 <= 3
_C28: Room_Assignment_A_3 + Room_Assignment_E_3 + Time_Assignment_A_2
 + Time_Assignment_E_2 <= 3
_C280: Room_Assignment_A_2 + Room_Assignment_I_2 + Time_Assignment_A_2
 + Time_Assignment_I_2 <= 3
_C281: Room_Assignment_A_3 + Room_Assignment_I_3 + Time_Assignment_A_2
 + Time_Assignment_I_2 <= 3
_C282: Room_Assignment_A_5 + Room_Assignment_I_5 + Time_Assignment_A_2
 + Time_Assignment_I_2 <= 3
_C283: Room_Assignment_A_6 + Room_Assignment_I_6 + Time_Assignment_A_2
 + Time_Assignment_I_2 <= 3
_C284: Room_Assignment_A_2 + Room_Assignment_I_2 + Time_Assignment_A_3
 + Time_Assignment_I_3 <= 3
_C285: Room_Assignment_A_3 + Room_Assignment_I_3 + Time_Assignment_A_3
 + Time_Assignment_I_3 <= 3
_C286: Room_Assignment_A_5 + Room_Assignment_I_5 + Time_Assignment_A_3
 + Time_Assignment_I_3 <= 3
_C287: Room_Assignment_A_6 + Room_Assignment_I_6 + Time_Assignment_A_3
 + Time_Assignment_I_3 <= 3
_C288: Room_Assignment_B_2 + Room_Assignment_I_2 + Time_Assignment_B_1
 + Time_Assignment_I_1 <= 3
_C289: Room_Assignment_B_3 + Room_Assignment_I_3 + Time_Assignment_B_1
 + Time_Assignment_I_1 <= 3
_C29: Room_Assignment_A_4 + Room_Assignment_E_4 + Time_Assignment_A_2
 + Time_Assignment_E_2 <= 3
_C290: Room_Assignment_C_6 + Room_Assignment_I_6 + Time_Assignment_C_1
 + Time_Assignment_I_1 <= 3
_C291: Room_Assignment_C_6 + Room_Assignment_I_6 + Time_Assignment_C_2
 + Time_Assignment_I_2 <= 3
_C292: Room_Assignment_C_6 + Room_Assignment_I_6 + Time_Assignment_C_3
 + Time_Assignment_I_3 <= 3
_C293: Room_Assignment_D_2 + Room_Assignment_I_2 + Time_Assignment_D_1
 + Time_Assignment_I_1 <= 3
_C294: Room_Assignment_D_3 + Room_Assignment_I_3 + Time_Assignment_D_1
 + Time_Assignment_I_1 <= 3
_C295: Room_Assignment_D_5 + Room_Assignment_I_5 + Time_Assignment_D_1
 + Time_Assignment_I_1 <= 3
_C296: Room_Assignment_D_2 + Room_Assignment_I_2 + Time_Assignment_D_2
 + Time_Assignment_I_2 <= 3
_C297: Room_Assignment_D_3 + Room_Assignment_I_3 + Time_Assignment_D_2
 + Time_Assignment_I_2 <= 3
_C298: Room_Assignment_D_5 + Room_Assignment_I_5 + Time_Assignment_D_2
 + Time_Assignment_I_2 <= 3
_C299: Room_Assignment_D_2 + Room_Assignment_I_2 + Time_Assignment_D_3
 + Time_Assignment_I_3 <= 3
_C3: Room_Assignment_A_1 + Room_Assignment_C_1 + Time_Assignment_A_1
 + Time_Assignment_C_1 <= 3
_C30: Room_Assignment_A_2 + Room_Assignment_E_2 + Time_Assignment_A_3
 + Time_Assignment_E_3 <= 3
_C300: Room_Assignment_D_3 + Room_Assignment_I_3 + Time_Assignment_D_3
 + Time_Assignment_I_3 <= 3
_C301: Room_Assignment_D_5 + Room_Assignment_I_5 + Time_Assignment_D_3
 + Time_Assignment_I_3 <= 3
_C302: Room_Assignment_E_2 + Room_Assignment_I_2 + Time_Assignment_E_2
 + Time_Assignment_I_2 <= 3
_C303: Room_Assignment_E_3 + Room_Assignment_I_3 + Time_Assignment_E_2
 + Time_Assignment_I_2 <= 3
_C304: Room_Assignment_E_2 + Room_Assignment_I_2 + Time_Assignment_E_3
 + Time_Assignment_I_3 <= 3
_C305: Room_Assignment_E_3 + Room_Assignment_I_3 + Time_Assignment_E_3
 + Time_Assignment_I_3 <= 3
_C306: Room_Assignment_F_2 + Room_Assignment_I_2 + Time_Assignment_F_1
 + Time_Assignment_I_1 <= 3
_C307: Room_Assignment_F_3 + Room_Assignment_I_3 + Time_Assignment_F_1
 + Time_Assignment_I_1 <= 3
_C308: Room_Assignment_F_2 + Room_Assignment_I_2 + Time_Assignment_F_2
 + Time_Assignment_I_2 <= 3
_C309: Room_Assignment_F_3 + Room_Assignment_I_3 + Time_Assignment_F_2
 + Time_Assignment_I_2 <= 3
_C31: Room_Assignment_A_3 + Room_Assignment_E_3 + Time_Assignment_A_3
 + Time_Assignment_E_3 <= 3
_C310: Room_Assignment_F_2 + Room_Assignment_I_2 + Time_Assignment_F_3
 + Time_Assignment_I_3 <= 3
_C311: Room_Assignment_F_3 + Room_Assignment_I_3 + Time_Assignment_F_3
 + Time_Assignment_I_3 <= 3
_C312: Room_Assignment_G_2 + Room_Assignment_I_2 + Time_Assignment_G_3
 + Time_Assignment_I_3 <= 3
_C313: Room_Assignment_G_3 + Room_Assignment_I_3 + Time_Assignment_G_3
 + Time_Assignment_I_3 <= 3
_C314: Room_Assignment_G_5 + Room_Assignment_I_5 + Time_Assignment_G_3
 + Time_Assignment_I_3 <= 3
_C315: Room_Assignment_G_6 + Room_Assignment_I_6 + Time_Assignment_G_3
 + Time_Assignment_I_3 <= 3
_C316: Room_Assignment_H_5 + Room_Assignment_I_5 + Time_Assignment_H_1
 + Time_Assignment_I_1 <= 3
_C317: Room_Assignment_H_5 + Room_Assignment_I_5 + Time_Assignment_H_2
 + Time_Assignment_I_2 <= 3
_C318: Room_Assignment_I_2 + Room_Assignment_J_2 + Time_Assignment_I_2
 + Time_Assignment_J_2 <= 3
_C319: Room_Assignment_I_3 + Room_Assignment_J_3 + Time_Assignment_I_2
 + Time_Assignment_J_2 <= 3
_C32: Room_Assignment_A_4 + Room_Assignment_E_4 + Time_Assignment_A_3
 + Time_Assignment_E_3 <= 3
_C320: Room_Assignment_I_2 + Room_Assignment_J_2 + Time_Assignment_I_3
 + Time_Assignment_J_3 <= 3
_C321: Room_Assignment_I_3 + Room_Assignment_J_3 + Time_Assignment_I_3
 + Time_Assignment_J_3 <= 3
_C322: Room_Assignment_A_2 + Room_Assignment_J_2 + Time_Assignment_A_2
 + Time_Assignment_J_2 <= 3
_C323: Room_Assignment_A_3 + Room_Assignment_J_3 + Time_Assignment_A_2
 + Time_Assignment_J_2 <= 3
_C324: Room_Assignment_A_4 + Room_Assignment_J_4 + Time_Assignment_A_2
 + Time_Assignment_J_2 <= 3
_C325: Room_Assignment_A_2 + Room_Assignment_J_2 + Time_Assignment_A_3
 + Time_Assignment_J_3 <= 3
_C326: Room_Assignment_A_3 + Room_Assignment_J_3 + Time_Assignment_A_3
 + Time_Assignment_J_3 <= 3
_C327: Room_Assignment_A_4 + Room_Assignment_J_4 + Time_Assignment_A_3
 + Time_Assignment_J_3 <= 3
_C328: Room_Assignment_C_4 + Room_Assignment_J_4 + Time_Assignment_C_2
 + Time_Assignment_J_2 <= 3
_C329: Room_Assignment_C_4 + Room_Assignment_J_4 + Time_Assignment_C_3
 + Time_Assignment_J_3 <= 3
_C33: Room_Assignment_A_1 + Room_Assignment_F_1 + Time_Assignment_A_1
 + Time_Assignment_F_1 <= 3
_C330: Room_Assignment_D_2 + Room_Assignment_J_2 + Time_Assignment_D_2
 + Time_Assignment_J_2 <= 3
_C331: Room_Assignment_D_3 + Room_Assignment_J_3 + Time_Assignment_D_2
 + Time_Assignment_J_2 <= 3
_C332: Room_Assignment_D_2 + Room_Assignment_J_2 + Time_Assignment_D_3
 + Time_Assignment_J_3 <= 3
_C333: Room_Assignment_D_3 + Room_Assignment_J_3 + Time_Assignment_D_3
 + Time_Assignment_J_3 <= 3
_C334: Room_Assignment_E_2 + Room_Assignment_J_2 + Time_Assignment_E_2
 + Time_Assignment_J_2 <= 3
_C335: Room_Assignment_E_3 + Room_Assignment_J_3 + Time_Assignment_E_2
 + Time_Assignment_J_2 <= 3
_C336: Room_Assignment_E_4 + Room_Assignment_J_4 + Time_Assignment_E_2
 + Time_Assignment_J_2 <= 3
_C337: Room_Assignment_E_2 + Room_Assignment_J_2 + Time_Assignment_E_3
 + Time_Assignment_J_3 <= 3
_C338: Room_Assignment_E_3 + Room_Assignment_J_3 + Time_Assignment_E_3
 + Time_Assignment_J_3 <= 3
_C339: Room_Assignment_E_4 + Room_Assignment_J_4 + Time_Assignment_E_3
 + Time_Assignment_J_3 <= 3
_C34: Room_Assignment_A_2 + Room_Assignment_F_2 + Time_Assignment_A_1
 + Time_Assignment_F_1 <= 3
_C340: Room_Assignment_F_2 + Room_Assignment_J_2 + Time_Assignment_F_2
 + Time_Assignment_J_2 <= 3
_C341: Room_Assignment_F_3 + Room_Assignment_J_3 + Time_Assignment_F_2
 + Time_Assignment_J_2 <= 3
_C342: Room_Assignment_F_2 + Room_Assignment_J_2 + Time_Assignment_F_3
 + Time_Assignment_J_3 <= 3
_C343: Room_Assignment_F_3 + Room_Assignment_J_3 + Time_Assignment_F_3
 + Time_Assignment_J_3 <= 3
_C344: Room_Assignment_G_2 + Room_Assignment_J_2 + Time_Assignment_G_3
 + Time_Assignment_J_3 <= 3
_C345: Room_Assignment_G_3 + Room_Assignment_J_3 + Time_Assignment_G_3
 + Time_Assignment_J_3 <= 3
_C346: Room_Assignment_H_4 + Room_Assignment_J_4 + Time_Assignment_H_2
 + Time_Assignment_J_2 <= 3
_C347: Room_Assignment_I_2 + Room_Assignment_J_2 + Time_Assignment_I_2
 + Time_Assignment_J_2 <= 3
_C348: Room_Assignment_I_3 + Room_Assignment_J_3 + Time_Assignment_I_2
 + Time_Assignment_J_2 <= 3
_C349: Room_Assignment_I_2 + Room_Assignment_J_2 + Time_Assignment_I_3
 + Time_Assignment_J_3 <= 3
_C35: Room_Assignment_A_3 + Room_Assignment_F_3 + Time_Assignment_A_1
 + Time_Assignment_F_1 <= 3
_C350: Room_Assignment_I_3 + Room_Assignment_J_3 + Time_Assignment_I_3
 + Time_Assignment_J_3 <= 3
_C351: Room_Assignment_A_1 + Time_Assignment_A_1 <= 2
_C352: Room_Assignment_A_2 + Time_Assignment_A_1 <= 2
_C353: Room_Assignment_A_3 + Time_Assignment_A_1 <= 2
_C354: Room_Assignment_A_4 + Time_Assignment_A_1 <= 1
_C355: Room_Assignment_A_5 + Time_Assignment_A_1 <= 1
_C356: Room_Assignment_A_6 + Time_Assignment_A_1 <= 1
_C357: Room_Assignment_A_7 + Time_Assignment_A_1 <= 2
_C358: Room_Assignment_A_8 + Time_Assignment_A_1 <= 2
_C359: Room_Assignment_A_9 + Time_Assignment_A_1 <= 1
_C36: Room_Assignment_A_9 + Room_Assignment_F_9 + Time_Assignment_A_1
 + Time_Assignment_F_1 <= 3
_C360: Room_Assignment_A_10 + Time_Assignment_A_1 <= 2
_C361: Room_Assignment_A_1 + Time_Assignment_A_2 <= 2
_C362: Room_Assignment_A_2 + Time_Assignment_A_2 <= 1
_C363: Room_Assignment_A_3 + Time_Assignment_A_2 <= 2
_C364: Room_Assignment_A_4 + Time_Assignment_A_2 <= 1
_C365: Room_Assignment_A_5 + Time_Assignment_A_2 <= 1
_C366: Room_Assignment_A_6 + Time_Assignment_A_2 <= 2
_C367: Room_Assignment_A_7 + Time_Assignment_A_2 <= 1
_C368: Room_Assignment_A_8 + Time_Assignment_A_2 <= 2
_C369: Room_Assignment_A_9 + Time_Assignment_A_2 <= 1
_C37: Room_Assignment_A_10 + Room_Assignment_F_10 + Time_Assignment_A_1
 + Time_Assignment_F_1 <= 3
_C370: Room_Assignment_A_10 + Time_Assignment_A_2 <= 1
_C371: Room_Assignment_A_1 + Time_Assignment_A_3 <= 2
_C372: Room_Assignment_A_2 + Time_Assignment_A_3 <= 1
_C373: Room_Assignment_A_3 + Time_Assignment_A_3 <= 1
_C374: Room_Assignment_A_4 + Time_Assignment_A_3 <= 2
_C375: Room_Assignment_A_5 + Time_Assignment_A_3 <= 2
_C376: Room_Assignment_A_6 + Time_Assignment_A_3 <= 2
_C377: Room_Assignment_A_7 + Time_Assignment_A_3 <= 1
_C378: Room_Assignment_A_8 + Time_Assignment_A_3 <= 1
_C379: Room_Assignment_A_9 + Time_Assignment_A_3 <= 2
_C38: Room_Assignment_A_1 + Room_Assignment_F_1 + Time_Assignment_A_2
 + Time_Assignment_F_2 <= 3
_C380: Room_Assignment_A_10 + Time_Assignment_A_3 <= 2
_C381: Room_Assignment_B_2 + Time_Assignment_B_1 <= 2
_C382: Room_Assignment_B_3 + Time_Assignment_B_1 <= 2
_C383: Room_Assignment_C_1 + Time_Assignment_C_1 <= 2
_C384: Room_Assignment_C_4 + Time_Assignment_C_1 <= 1
_C385: Room_Assignment_C_6 + Time_Assignment_C_1 <= 1
_C386: Room_Assignment_C_8 + Time_Assignment_C_1 <= 2
_C387: Room_Assignment_C_9 + Time_Assignment_C_1 <= 1
_C388: Room_Assignment_C_1 + Time_Assignment_C_2 <= 2
_C389: Room_Assignment_C_4 + Time_Assignment_C_2 <= 1
_C39: Room_Assignment_A_2 + Room_Assignment_F_2 + Time_Assignment_A_2
 + Time_Assignment_F_2 <= 3
_C390: Room_Assignment_C_6 + Time_Assignment_C_2 <= 2
_C391: Room_Assignment_C_8 + Time_Assignment_C_2 <= 2
_C392: Room_Assignment_C_9 + Time_Assignment_C_2 <= 1
_C393: Room_Assignment_C_1 + Time_Assignment_C_3 <= 2
_C394: Room_Assignment_C_4 + Time_Assignment_C_3 <= 2
_C395: Room_Assignment_C_6 + Time_Assignment_C_3 <= 2
_C396: Room_Assignment_C_8 + Time_Assignment_C_3 <= 1
_C397: Room_Assignment_C_9 + Time_Assignment_C_3 <= 2
_C398: Room_Assignment_D_2 + Time_Assignment_D_1 <= 2
_C399: Room_Assignment_D_3 + Time_Assignment_D_1 <= 2
_C4: Room_Assignment_A_4 + Room_Assignment_C_4 + Time_Assignment_A_1
 + Time_Assignment_C_1 <= 3
_C40: Room_Assignment_A_3 + Room_Assignment_F_3 + Time_Assignment_A_2
 + Time_Assignment_F_2 <= 3
_C400: Room_Assignment_D_5 + Time_Assignment_D_1 <= 1
_C401: Room_Assignment_D_2 + Time_Assignment_D_2 <= 1
_C402: Room_Assignment_D_3 + Time_Assignment_D_2 <= 2
_C403: Room_Assignment_D_5 + Time_Assignment_D_2 <= 1
_C404: Room_Assignment_D_2 + Time_Assignment_D_3 <= 1
_C405: Room_Assignment_D_3 + Time_Assignment_D_3 <= 1
_C406: Room_Assignment_D_5 + Time_Assignment_D_3 <= 2
_C407: Room_Assignment_E_2 + Time_Assignment_E_2 <= 1
_C408: Room_Assignment_E_3 + Time_Assignment_E_2 <= 2
_C409: Room_Assignment_E_4 + Time_Assignment_E_2 <= 1
_C41: Room_Assignment_A_9 + Room_Assignment_F_9 + Time_Assignment_A_2
 + Time_Assignment_F_2 <= 3
_C410: Room_Assignment_E_2 + Time_Assignment_E_3 <= 1
_C411: Room_Assignment_E_3 + Time_Assignment_E_3 <= 1
_C412: Room_Assignment_E_4 + Time_Assignment_E_3 <= 2
_C413: Room_Assignment_F_1 + Time_Assignment_F_1 <= 2
_C414: Room_Assignment_F_2 + Time_Assignment_F_1 <= 2
_C415: Room_Assignment_F_3 + Time_Assignment_F_1 <= 2
_C416: Room_Assignment_F_9 + Time_Assignment_F_1 <= 1
_C417: Room_Assignment_F_10 + Time_Assignment_F_1 <= 2
_C418: Room_Assignment_F_1 + Time_Assignment_F_2 <= 2
_C419: Room_Assignment_F_2 + Time_Assignment_F_2 <= 1
_C42: Room_Assignment_A_10 + Room_Assignment_F_10 + Time_Assignment_A_2
 + Time_Assignment_F_2 <= 3
_C420: Room_Assignment_F_3 + Time_Assignment_F_2 <= 2
_C421: Room_Assignment_F_9 + Time_Assignment_F_2 <= 1
_C422: Room_Assignment_F_10 + Time_Assignment_F_2 <= 1
_C423: Room_Assignment_F_1 + Time_Assignment_F_3 <= 2
_C424: Room_Assignment_F_2 + Time_Assignment_F_3 <= 1
_C425: Room_Assignment_F_3 + Time_Assignment_F_3 <= 1
_C426: Room_Assignment_F_9 + Time_Assignment_F_3 <= 2
_C427: Room_Assignment_F_10 + Time_Assignment_F_3 <= 2
_C428: Room_Assignment_G_2 + Time_Assignment_G_3 <= 1
_C429: Room_Assignment_G_3 + Time_Assignment_G_3 <= 1
_C43: Room_Assignment_A_1 + Room_Assignment_F_1 + Time_Assignment_A_3
 + Time_Assignment_F_3 <= 3
_C430: Room_Assignment_G_5 + Time_Assignment_G_3 <= 2
_C431: Room_Assignment_G_6 + Time_Assignment_G_3 <= 2
_C432: Room_Assignment_G_8 + Time_Assignment_G_3 <= 1
_C433: Room_Assignment_G_10 + Time_Assignment_G_3 <= 2
_C434: Room_Assignment_H_1 + Time_Assignment_H_1 <= 2
_C435: Room_Assignment_H_4 + Time_Assignment_H_1 <= 1
_C436: Room_Assignment_H_5 + Time_Assignment_H_1 <= 1
_C437: Room_Assignment_H_1 + Time_Assignment_H_2 <= 2
_C438: Room_Assignment_H_4 + Time_Assignment_H_2 <= 1
_C439: Room_Assignment_H_5 + Time_Assignment_H_2 <= 1
_C44: Room_Assignment_A_2 + Room_Assignment_F_2 + Time_Assignment_A_3
 + Time_Assignment_F_3 <= 3
_C440: Room_Assignment_I_2 + Time_Assignment_I_1 <= 2
_C441: Room_Assignment_I_3 + Time_Assignment_I_1 <= 2
_C442: Room_Assignment_I_5 + Time_Assignment_I_1 <= 1
_C443: Room_Assignment_I_6 + Time_Assignment_I_1 <= 1
_C444: Room_Assignment_I_2 + Time_Assignment_I_2 <= 1
_C445: Room_Assignment_I_3 + Time_Assignment_I_2 <= 2
_C446: Room_Assignment_I_5 + Time_Assignment_I_2 <= 1
_C447: Room_Assignment_I_6 + Time_Assignment_I_2 <= 2
_C448: Room_Assignment_I_2 + Time_Assignment_I_3 <= 1
_C449: Room_Assignment_I_3 + Time_Assignment_I_3 <= 1
_C45: Room_Assignment_A_3 + Room_Assignment_F_3 + Time_Assignment_A_3
 + Time_Assignment_F_3 <= 3
_C450: Room_Assignment_I_5 + Time_Assignment_I_3 <= 2
_C451: Room_Assignment_I_6 + Time_Assignment_I_3 <= 2
_C452: Room_Assignment_J_2 + Time_Assignment_J_2 <= 1
_C453: Room_Assignment_J_3 + Time_Assignment_J_2 <= 2
_C454: Room_Assignment_J_4 + Time_Assignment_J_2 <= 1
_C455: Room_Assignment_J_2 + Time_Assignment_J_3 <= 1
_C456: Room_Assignment_J_3 + Time_Assignment_J_3 <= 1
_C457: Room_Assignment_J_4 + Time_Assignment_J_3 <= 2
_C46: Room_Assignment_A_9 + Room_Assignment_F_9 + Time_Assignment_A_3
 + Time_Assignment_F_3 <= 3
_C47: Room_Assignment_A_10 + Room_Assignment_F_10 + Time_Assignment_A_3
 + Time_Assignment_F_3 <= 3
_C48: Room_Assignment_A_2 + Room_Assignment_G_2 + Time_Assignment_A_3
 + Time_Assignment_G_3 <= 3
_C49: Room_Assignment_A_3 + Room_Assignment_G_3 + Time_Assignment_A_3
 + Time_Assignment_G_3 <= 3
_C5: Room_Assignment_A_6 + Room_Assignment_C_6 + Time_Assignment_A_1
 + Time_Assignment_C_1 <= 3
_C50: Room_Assignment_A_5 + Room_Assignment_G_5 + Time_Assignment_A_3
 + Time_Assignment_G_3 <= 3
_C51: Room_Assignment_A_6 + Room_Assignment_G_6 + Time_Assignment_A_3
 + Time_Assignment_G_3 <= 3
_C52: Room_Assignment_A_8 + Room_Assignment_G_8 + Time_Assignment_A_3
 + Time_Assignment_G_3 <= 3
_C53: Room_Assignment_A_10 + Room_Assignment_G_10 + Time_Assignment_A_3
 + Time_Assignment_G_3 <= 3
_C54: Room_Assignment_A_1 + Room_Assignment_H_1 + Time_Assignment_A_1
 + Time_Assignment_H_1 <= 3
_C55: Room_Assignment_A_4 + Room_Assignment_H_4 + Time_Assignment_A_1
 + Time_Assignment_H_1 <= 3
_C56: Room_Assignment_A_5 + Room_Assignment_H_5 + Time_Assignment_A_1
 + Time_Assignment_H_1 <= 3
_C57: Room_Assignment_A_1 + Room_Assignment_H_1 + Time_Assignment_A_2
 + Time_Assignment_H_2 <= 3
_C58: Room_Assignment_A_4 + Room_Assignment_H_4 + Time_Assignment_A_2
 + Time_Assignment_H_2 <= 3
_C59: Room_Assignment_A_5 + Room_Assignment_H_5 + Time_Assignment_A_2
 + Time_Assignment_H_2 <= 3
_C6: Room_Assignment_A_8 + Room_Assignment_C_8 + Time_Assignment_A_1
 + Time_Assignment_C_1 <= 3
_C60: Room_Assignment_A_2 + Room_Assignment_I_2 + Time_Assignment_A_1
 + Time_Assignment_I_1 <= 3
_C61: Room_Assignment_A_3 + Room_Assignment_I_3 + Time_Assignment_A_1
 + Time_Assignment_I_1 <= 3
_C62: Room_Assignment_A_5 + Room_Assignment_I_5 + Time_Assignment_A_1
 + Time_Assignment_I_1 <= 3
_C63: Room_Assignment_A_6 + Room_Assignment_I_6 + Time_Assignment_A_1
 + Time_Assignment_I_1 <= 3
_C64: Room_Assignment_A_2 + Room_Assignment_I_2 + Time_Assignment_A_2
 + Time_Assignment_I_2 <= 3
_C65: Room_Assignment_A_3 + Room_Assignment_I_3 + Time_Assignment_A_2
 + Time_Assignment_I_2 <= 3
_C66: Room_Assignment_A_5 + Room_Assignment_I_5 + Time_Assignment_A_2
 + Time_Assignment_I_2 <= 3
_C67: Room_Assignment_A_6 + Room_Assignment_I_6 + Time_Assignment_A_2
 + Time_Assignment_I_2 <= 3
_C68: Room_Assignment_A_2 + Room_Assignment_I_2 + Time_Assignment_A_3
 + Time_Assignment_I_3 <= 3
_C69: Room_Assignment_A_3 + Room_Assignment_I_3 + Time_Assignment_A_3
 + Time_Assignment_I_3 <= 3
_C7: Room_Assignment_A_9 + Room_Assignment_C_9 + Time_Assignment_A_1
 + Time_Assignment_C_1 <= 3
_C70: Room_Assignment_A_5 + Room_Assignment_I_5 + Time_Assignment_A_3
 + Time_Assignment_I_3 <= 3
_C71: Room_Assignment_A_6 + Room_Assignment_I_6 + Time_Assignment_A_3
 + Time_Assignment_I_3 <= 3
_C72: Room_Assignment_A_2 + Room_Assignment_J_2 + Time_Assignment_A_2
 + Time_Assignment_J_2 <= 3
_C73: Room_Assignment_A_3 + Room_Assignment_J_3 + Time_Assignment_A_2
 + Time_Assignment_J_2 <= 3
_C74: Room_Assignment_A_4 + Room_Assignment_J_4 + Time_Assignment_A_2
 + Time_Assignment_J_2 <= 3
_C75: Room_Assignment_A_2 + Room_Assignment_J_2 + Time_Assignment_A_3
 + Time_Assignment_J_3 <= 3
_C76: Room_Assignment_A_3 + Room_Assignment_J_3 + Time_Assignment_A_3
 + Time_Assignment_J_3 <= 3
_C77: Room_Assignment_A_4 + Room_Assignment_J_4 + Time_Assignment_A_3
 + Time_Assignment_J_3 <= 3
_C78: Room_Assignment_A_2 + Room_Assignment_B_2 + Time_Assignment_A_1
 + Time_Assignment_B_1 <= 3
_C79: Room_Assignment_A_3 + Room_Assignment_B_3 + Time_Assignment_A_1
 + Time_Assignment_B_1 <= 3
_C8: Room_Assignment_A_1 + Room_Assignment_C_1 + Time_Assignment_A_2
 + Time_Assignment_C_2 <= 3
_C80: Room_Assignment_B_2 + Room_Assignment_D_2 + Time_Assignment_B_1
 + Time_Assignment_D_1 <= 3
_C81: Room_Assignment_B_3 + Room_Assignment_D_3 + Time_Assignment_B_1
 + Time_Assignment_D_1 <= 3
_C82: Room_Assignment_B_2 + Room_Assignment_F_2 + Time_Assignment_B_1
 + Time_Assignment_F_1 <= 3
_C83: Room_Assignment_B_3 + Room_Assignment_F_3 + Time_Assignment_B_1
 + Time_Assignment_F_1 <= 3
_C84: Room_Assignment_B_2 + Room_Assignment_I_2 + Time_Assignment_B_1
 + Time_Assignment_I_1 <= 3
_C85: Room_Assignment_B_3 + Room_Assignment_I_3 + Time_Assignment_B_1
 + Time_Assignment_I_1 <= 3
_C86: Room_Assignment_A_1 + Room_Assignment_C_1 + Time_Assignment_A_1
 + Time_Assignment_C_1 <= 3
_C87: Room_Assignment_A_4 + Room_Assignment_C_4 + Time_Assignment_A_1
 + Time_Assignment_C_1 <= 3
_C88: Room_Assignment_A_6 + Room_Assignment_C_6 + Time_Assignment_A_1
 + Time_Assignment_C_1 <= 3
_C89: Room_Assignment_A_8 + Room_Assignment_C_8 + Time_Assignment_A_1
 + Time_Assignment_C_1 <= 3
_C9: Room_Assignment_A_4 + Room_Assignment_C_4 + Time_Assignment_A_2
 + Time_Assignment_C_2 <= 3
_C90: Room_Assignment_A_9 + Room_Assignment_C_9 + Time_Assignment_A_1
 + Time_Assignment_C_1 <= 3
_C91: Room_Assignment_A_1 + Room_Assignment_C_1 + Time_Assignment_A_2
 + Time_Assignment_C_2 <= 3
_C92: Room_Assignment_A_4 + Room_Assignment_C_4 + Time_Assignment_A_2
 + Time_Assignment_C_2 <= 3
_C93: Room_Assignment_A_6 + Room_Assignment_C_6 + Time_Assignment_A_2
 + Time_Assignment_C_2 <= 3
_C94: Room_Assignment_A_8 + Room_Assignment_C_8 + Time_Assignment_A_2
 + Time_Assignment_C_2 <= 3
_C95: Room_Assignment_A_9 + Room_Assignment_C_9 + Time_Assignment_A_2
 + Time_Assignment_C_2 <= 3
_C96: Room_Assignment_A_1 + Room_Assignment_C_1 + Time_Assignment_A_3
 + Time_Assignment_C_3 <= 3
_C97: Room_Assignment_A_4 + Room_Assignment_C_4 + Time_Assignment_A_3
 + Time_Assignment_C_3 <= 3
_C98: Room_Assignment_A_6 + Room_Assignment_C_6 + Time_Assignment_A_3
 + Time_Assignment_C_3 <= 3
_C99: Room_Assignment_A_8 + Room_Assignment_C_8 + Time_Assignment_A_3
 + Time_Assignment_C_3 <= 3
Bounds
 0 <= Overlap_A_C
 0 <= Overlap_A_E
 0 <= Overlap_A_F
 0 <= Overlap_A_G
 0 <= Overlap_A_H
 0 <= Overlap_A_I
 0 <= Overlap_A_J
 0 <= Overlap_B_A
 0 <= Overlap_B_D
 0 <= Overlap_B_E
 0 <= Overlap_B_F
 0 <= Overlap_B_G
 0 <= Overlap_B_H
 0 <= Overlap_B_I
 0 <= Overlap_B_J
 0 <= Overlap_C_B
 0 <= Overlap_C_E
 0 <= Overlap_C_F
 0 <= Overlap_D_A
 0 <= Overlap_D_B
 0 <= Overlap_D_C
 0 <= Overlap_D_F
 0 <= Overlap_D_G
 0 <= Overlap_D_H
 0 <= Overlap_D_I
 0 <= Overlap_D_J
 0 <= Overlap_E_A
 0 <= Overlap_E_B
 0 <= Overlap_E_C
 0 <= Overlap_E_D
 0 <= Overlap_E_G
 0 <= Overlap_E_H
 0 <= Overlap_E_I
 0 <= Overlap_E_J
 0 <= Overlap_F_A
 0 <= Overlap_F_B
 0 <= Overlap_F_D
 0 <= Overlap_F_E
 0 <= Overlap_F_H
 0 <= Overlap_F_I
 0 <= Overlap_F_J
 0 <= Overlap_G_A
 0 <= Overlap_G_B
 0 <= Overlap_G_D
 0 <= Overlap_G_E
 0 <= Overlap_G_F
 0 <= Overlap_G_I
 0 <= Overlap_G_J
 0 <= Overlap_H_A
 0 <= Overlap_H_B
 0 <= Overlap_H_D
 0 <= Overlap_H_E
 0 <= Overlap_H_F
 0 <= Overlap_H_G
 0 <= Overlap_H_J
 0 <= Overlap_I_A
 0 <= Overlap_I_B
 0 <= Overlap_I_D
 0 <= Overlap_I_E
 0 <= Overlap_I_F
 0 <= Overlap_I_G
 0 <= Overlap_I_H
 0 <= Overlap_J_A
 0 <= Overlap_J_B
 0 <= Overlap_J_C
 0 <= Overlap_J_D
 0 <= Overlap_J_E
 0 <= Overlap_J_F
 0 <= Overlap_J_G
 0 <= Overlap_J_H
 0 <= Overlap_J_I
 0 <= Room_Assignment_A_1
 0 <= Room_Assignment_A_10
 0 <= Room_Assignment_A_2
 0 <= Room_Assignment_A_3
 0 <= Room_Assignment_A_4
 0 <= Room_Assignment_A_5
 0 <= Room_Assignment_A_6
 0 <= Room_Assignment_A_7
 0 <= Room_Assignment_A_8
 0 <= Room_Assignment_A_9
 0 <= Room_Assignment_B_2
 0 <= Room_Assignment_B_3
 0 <= Room_Assignment_C_1
 0 <= Room_Assignment_C_4
 0 <= Room_Assignment_C_6
 0 <= Room_Assignment_C_8
 0 <= Room_Assignment_C_9
 0 <= Room_Assignment_D_2
 0 <= Room_Assignment_D_3
 0 <= Room_Assignment_D_5
 0 <= Room_Assignment_E_2
 0 <= Room_Assignment_E_3
 0 <= Room_Assignment_E_4
 0 <= Room_Assignment_F_1
 0 <= Room_Assignment_F_10
 0 <= Room_Assignment_F_2
 0 <= Room_Assignment_F_3
 0 <= Room_Assignment_F_9
 0 <= Room_Assignment_G_10
 0 <= Room_Assignment_G_2
 0 <= Room_Assignment_G_3
 0 <= Room_Assignment_G_5
 0 <= Room_Assignment_G_6
 0 <= Room_Assignment_G_8
 0 <= Room_Assignment_H_1
 0 <= Room_Assignment_H_4
 0 <= Room_Assignment_H_5
 0 <= Room_Assignment_I_2
 0 <= Room_Assignment_I_3
 0 <= Room_Assignment_I_5
 0 <= Room_Assignment_I_6
 0 <= Room_Assignment_J_2
 0 <= Room_Assignment_J_3
 0 <= Room_Assignment_J_4
 0 <= Time_Assignment_A_1
 0 <= Time_Assignment_A_2
 0 <= Time_Assignment_A_3
 0 <= Time_Assignment_B_1
 0 <= Time_Assignment_C_1
 0 <= Time_Assignment_C_2
 0 <= Time_Assignment_C_3
 0 <= Time_Assignment_D_1
 0 <= Time_Assignment_D_2
 0 <= Time_Assignment_D_3
 0 <= Time_Assignment_E_2
 0 <= Time_Assignment_E_3
 0 <= Time_Assignment_F_1
 0 <= Time_Assignment_F_2
 0 <= Time_Assignment_F_3
 0 <= Time_Assignment_G_3
 0 <= Time_Assignment_H_1
 0 <= Time_Assignment_H_2
 0 <= Time_Assignment_I_1
 0 <= Time_Assignment_I_2
 0 <= Time_Assignment_I_3
 0 <= Time_Assignment_J_2
 0 <= Time_Assignment_J_3
Generals
Overlap_A_C
Overlap_A_E
Overlap_A_F
Overlap_A_G
Overlap_A_H
Overlap_A_I
Overlap_A_J
Overlap_B_A
Overlap_B_D
Overlap_B_E
Overlap_B_F
Overlap_B_G
Overlap_B_H
Overlap_B_I
Overlap_B_J
Overlap_C_B
Overlap_C_E
Overlap_C_F
Overlap_D_A
Overlap_D_B
Overlap_D_C
Overlap_D_F
Overlap_D_G
Overlap_D_H
Overlap_D_I
Overlap_D_J
Overlap_E_A
Overlap_E_B
Overlap_E_C
Overlap_E_D
Overlap_E_G
Overlap_E_H
Overlap_E_I
Overlap_E_J
Overlap_F_A
Overlap_F_B
Overlap_F_D
Overlap_F_E
Overlap_F_H
Overlap_F_I
Overlap_F_J
Overlap_G_A
Overlap_G_B
Overlap_G_D
Overlap_G_E
Overlap_G_F
Overlap_G_I
Overlap_G_J
Overlap_H_A
Overlap_H_B
Overlap_H_D
Overlap_H_E
Overlap_H_F
Overlap_H_G
Overlap_H_J
Overlap_I_A
Overlap_I_B
Overlap_I_D
Overlap_I_E
Overlap_I_F
Overlap_I_G
Overlap_I_H
Overlap_J_A
Overlap_J_B
Overlap_J_C
Overlap_J_D
Overlap_J_E
Overlap_J_F
Overlap_J_G
Overlap_J_H
Overlap_J_I
Room_Assignment_A_1
Room_Assignment_A_10
Room_Assignment_A_2
Room_Assignment_A_3
Room_Assignment_A_4
Room_Assignment_A_5
Room_Assignment_A_6
Room_Assignment_A_7
Room_Assignment_A_8
Room_Assignment_A_9
Room_Assignment_B_2
Room_Assignment_B_3
Room_Assignment_C_1
Room_Assignment_C_4
Room_Assignment_C_6
Room_Assignment_C_8
Room_Assignment_C_9
Room_Assignment_D_2
Room_Assignment_D_3
Room_Assignment_D_5
Room_Assignment_E_2
Room_Assignment_E_3
Room_Assignment_E_4
Room_Assignment_F_1
Room_Assignment_F_10
Room_Assignment_F_2
Room_Assignment_F_3
Room_Assignment_F_9
Room_Assignment_G_10
Room_Assignment_G_2
Room_Assignment_G_3
Room_Assignment_G_5
Room_Assignment_G_6
Room_Assignment_G_8
Room_Assignment_H_1
Room_Assignment_H_4
Room_Assignment_H_5
Room_Assignment_I_2
Room_Assignment_I_3
Room_Assignment_I_5
Room_Assignment_I_6
Room_Assignment_J_2
Room_Assignment_J_3
Room_Assignment_J_4
Time_Assignment_A_1
Time_Assignment_A_2
Time_Assignment_A_3
Time_Assignment_B_1
Time_Assignment_C_1
Time_Assignment_C_2
Time_Assignment_C_3
Time_Assignment_D_1
Time_Assignment_D_2
Time_Assignment_D_3
Time_Assignment_E_2
Time_Assignment_E_3
Time_Assignment_F_1
Time_Assignment_F_2
Time_Assignment_F_3
Time_Assignment_G_3
Time_Assignment_H_1
Time_Assignment_H_2
Time_Assignment_I_1
Time_Assignment_I_2
Time_Assignment_I_3
Time_Assignment_J_2
Time_Assignment_J_3
End
