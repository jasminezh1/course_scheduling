\* Course_Scheduling *\
Minimize
minimize_the_number_of_conflicts.: 0.5 Overlap_A_C + Overlap_A_E
 + 0.5 Overlap_B_A + 1.5 Overlap_B_D + 2 Overlap_B_E + 1.5 Overlap_C_B
 + 0.5 Overlap_C_E + Overlap_D_A + 2 Overlap_D_B + 0.5 Overlap_D_C
 + 1.5 Overlap_E_A + 5 Overlap_E_B + Overlap_E_C + 1.5 Overlap_E_D
Subject To
Sum_of_Assignments_for_class_A: Class_Assignment_A_1 + Class_Assignment_A_2
 + Class_Assignment_A_3 = 1
Sum_of_Assignments_for_class_B: Class_Assignment_B_1 + Class_Assignment_B_2
 + Class_Assignment_B_3 = 1
Sum_of_Assignments_for_class_C: Class_Assignment_C_1 + Class_Assignment_C_2
 + Class_Assignment_C_3 = 1
Sum_of_Assignments_for_class_D: Class_Assignment_D_1 + Class_Assignment_D_2
 + Class_Assignment_D_3 = 1
Sum_of_Assignments_for_class_E: Class_Assignment_E_1 + Class_Assignment_E_2
 + Class_Assignment_E_3 = 1
Sum_of_Assignments_for_room_A: Room_Assignment_A_1 + Room_Assignment_A_2
 + Room_Assignment_A_3 = 1
Sum_of_Assignments_for_room_B: Room_Assignment_B_1 + Room_Assignment_B_2
 + Room_Assignment_B_3 = 1
Sum_of_Assignments_for_room_C: Room_Assignment_C_1 + Room_Assignment_C_2
 + Room_Assignment_C_3 = 1
Sum_of_Assignments_for_room_D: Room_Assignment_D_1 + Room_Assignment_D_2
 + Room_Assignment_D_3 = 1
Sum_of_Assignments_for_room_E: Room_Assignment_E_1 + Room_Assignment_E_2
 + Room_Assignment_E_3 = 1
_C1: Class_Assignment_A_1 + Class_Assignment_B_1 + Room_Assignment_A_1
 + Room_Assignment_B_1 <= 3
_C10: Class_Assignment_A_1 + Class_Assignment_C_1 + Room_Assignment_A_1
 + Room_Assignment_C_1 <= 3
_C100: Class_Assignment_C_1 + Class_Assignment_E_1 + Room_Assignment_C_1
 + Room_Assignment_E_1 <= 3
_C101: Class_Assignment_C_1 + Class_Assignment_E_1 + Room_Assignment_C_2
 + Room_Assignment_E_2 <= 3
_C102: Class_Assignment_C_1 + Class_Assignment_E_1 + Room_Assignment_C_3
 + Room_Assignment_E_3 <= 3
_C103: Class_Assignment_C_2 + Class_Assignment_E_2 + Room_Assignment_C_1
 + Room_Assignment_E_1 <= 3
_C104: Class_Assignment_C_2 + Class_Assignment_E_2 + Room_Assignment_C_2
 + Room_Assignment_E_2 <= 3
_C105: Class_Assignment_C_2 + Class_Assignment_E_2 + Room_Assignment_C_3
 + Room_Assignment_E_3 <= 3
_C106: Class_Assignment_C_3 + Class_Assignment_E_3 + Room_Assignment_C_1
 + Room_Assignment_E_1 <= 3
_C107: Class_Assignment_C_3 + Class_Assignment_E_3 + Room_Assignment_C_2
 + Room_Assignment_E_2 <= 3
_C108: Class_Assignment_C_3 + Class_Assignment_E_3 + Room_Assignment_C_3
 + Room_Assignment_E_3 <= 3
_C109: Class_Assignment_A_1 + Class_Assignment_D_1 + Room_Assignment_A_1
 + Room_Assignment_D_1 <= 3
_C11: Class_Assignment_A_1 + Class_Assignment_C_1 + Room_Assignment_A_2
 + Room_Assignment_C_2 <= 3
_C110: Class_Assignment_A_1 + Class_Assignment_D_1 + Room_Assignment_A_2
 + Room_Assignment_D_2 <= 3
_C111: Class_Assignment_A_1 + Class_Assignment_D_1 + Room_Assignment_A_3
 + Room_Assignment_D_3 <= 3
_C112: Class_Assignment_A_2 + Class_Assignment_D_2 + Room_Assignment_A_1
 + Room_Assignment_D_1 <= 3
_C113: Class_Assignment_A_2 + Class_Assignment_D_2 + Room_Assignment_A_2
 + Room_Assignment_D_2 <= 3
_C114: Class_Assignment_A_2 + Class_Assignment_D_2 + Room_Assignment_A_3
 + Room_Assignment_D_3 <= 3
_C115: Class_Assignment_A_3 + Class_Assignment_D_3 + Room_Assignment_A_1
 + Room_Assignment_D_1 <= 3
_C116: Class_Assignment_A_3 + Class_Assignment_D_3 + Room_Assignment_A_2
 + Room_Assignment_D_2 <= 3
_C117: Class_Assignment_A_3 + Class_Assignment_D_3 + Room_Assignment_A_3
 + Room_Assignment_D_3 <= 3
_C118: Class_Assignment_B_1 + Class_Assignment_D_1 + Room_Assignment_B_1
 + Room_Assignment_D_1 <= 3
_C119: Class_Assignment_B_1 + Class_Assignment_D_1 + Room_Assignment_B_2
 + Room_Assignment_D_2 <= 3
_C12: Class_Assignment_A_1 + Class_Assignment_C_1 + Room_Assignment_A_3
 + Room_Assignment_C_3 <= 3
_C120: Class_Assignment_B_1 + Class_Assignment_D_1 + Room_Assignment_B_3
 + Room_Assignment_D_3 <= 3
_C121: Class_Assignment_B_2 + Class_Assignment_D_2 + Room_Assignment_B_1
 + Room_Assignment_D_1 <= 3
_C122: Class_Assignment_B_2 + Class_Assignment_D_2 + Room_Assignment_B_2
 + Room_Assignment_D_2 <= 3
_C123: Class_Assignment_B_2 + Class_Assignment_D_2 + Room_Assignment_B_3
 + Room_Assignment_D_3 <= 3
_C124: Class_Assignment_B_3 + Class_Assignment_D_3 + Room_Assignment_B_1
 + Room_Assignment_D_1 <= 3
_C125: Class_Assignment_B_3 + Class_Assignment_D_3 + Room_Assignment_B_2
 + Room_Assignment_D_2 <= 3
_C126: Class_Assignment_B_3 + Class_Assignment_D_3 + Room_Assignment_B_3
 + Room_Assignment_D_3 <= 3
_C127: Class_Assignment_C_1 + Class_Assignment_D_1 + Room_Assignment_C_1
 + Room_Assignment_D_1 <= 3
_C128: Class_Assignment_C_1 + Class_Assignment_D_1 + Room_Assignment_C_2
 + Room_Assignment_D_2 <= 3
_C129: Class_Assignment_C_1 + Class_Assignment_D_1 + Room_Assignment_C_3
 + Room_Assignment_D_3 <= 3
_C13: Class_Assignment_A_2 + Class_Assignment_C_2 + Room_Assignment_A_1
 + Room_Assignment_C_1 <= 3
_C130: Class_Assignment_C_2 + Class_Assignment_D_2 + Room_Assignment_C_1
 + Room_Assignment_D_1 <= 3
_C131: Class_Assignment_C_2 + Class_Assignment_D_2 + Room_Assignment_C_2
 + Room_Assignment_D_2 <= 3
_C132: Class_Assignment_C_2 + Class_Assignment_D_2 + Room_Assignment_C_3
 + Room_Assignment_D_3 <= 3
_C133: Class_Assignment_C_3 + Class_Assignment_D_3 + Room_Assignment_C_1
 + Room_Assignment_D_1 <= 3
_C134: Class_Assignment_C_3 + Class_Assignment_D_3 + Room_Assignment_C_2
 + Room_Assignment_D_2 <= 3
_C135: Class_Assignment_C_3 + Class_Assignment_D_3 + Room_Assignment_C_3
 + Room_Assignment_D_3 <= 3
_C136: Class_Assignment_D_1 + Class_Assignment_E_1 + Room_Assignment_D_1
 + Room_Assignment_E_1 <= 3
_C137: Class_Assignment_D_1 + Class_Assignment_E_1 + Room_Assignment_D_2
 + Room_Assignment_E_2 <= 3
_C138: Class_Assignment_D_1 + Class_Assignment_E_1 + Room_Assignment_D_3
 + Room_Assignment_E_3 <= 3
_C139: Class_Assignment_D_2 + Class_Assignment_E_2 + Room_Assignment_D_1
 + Room_Assignment_E_1 <= 3
_C14: Class_Assignment_A_2 + Class_Assignment_C_2 + Room_Assignment_A_2
 + Room_Assignment_C_2 <= 3
_C140: Class_Assignment_D_2 + Class_Assignment_E_2 + Room_Assignment_D_2
 + Room_Assignment_E_2 <= 3
_C141: Class_Assignment_D_2 + Class_Assignment_E_2 + Room_Assignment_D_3
 + Room_Assignment_E_3 <= 3
_C142: Class_Assignment_D_3 + Class_Assignment_E_3 + Room_Assignment_D_1
 + Room_Assignment_E_1 <= 3
_C143: Class_Assignment_D_3 + Class_Assignment_E_3 + Room_Assignment_D_2
 + Room_Assignment_E_2 <= 3
_C144: Class_Assignment_D_3 + Class_Assignment_E_3 + Room_Assignment_D_3
 + Room_Assignment_E_3 <= 3
_C145: Class_Assignment_A_1 + Class_Assignment_E_1 + Room_Assignment_A_1
 + Room_Assignment_E_1 <= 3
_C146: Class_Assignment_A_1 + Class_Assignment_E_1 + Room_Assignment_A_2
 + Room_Assignment_E_2 <= 3
_C147: Class_Assignment_A_1 + Class_Assignment_E_1 + Room_Assignment_A_3
 + Room_Assignment_E_3 <= 3
_C148: Class_Assignment_A_2 + Class_Assignment_E_2 + Room_Assignment_A_1
 + Room_Assignment_E_1 <= 3
_C149: Class_Assignment_A_2 + Class_Assignment_E_2 + Room_Assignment_A_2
 + Room_Assignment_E_2 <= 3
_C15: Class_Assignment_A_2 + Class_Assignment_C_2 + Room_Assignment_A_3
 + Room_Assignment_C_3 <= 3
_C150: Class_Assignment_A_2 + Class_Assignment_E_2 + Room_Assignment_A_3
 + Room_Assignment_E_3 <= 3
_C151: Class_Assignment_A_3 + Class_Assignment_E_3 + Room_Assignment_A_1
 + Room_Assignment_E_1 <= 3
_C152: Class_Assignment_A_3 + Class_Assignment_E_3 + Room_Assignment_A_2
 + Room_Assignment_E_2 <= 3
_C153: Class_Assignment_A_3 + Class_Assignment_E_3 + Room_Assignment_A_3
 + Room_Assignment_E_3 <= 3
_C154: Class_Assignment_B_1 + Class_Assignment_E_1 + Room_Assignment_B_1
 + Room_Assignment_E_1 <= 3
_C155: Class_Assignment_B_1 + Class_Assignment_E_1 + Room_Assignment_B_2
 + Room_Assignment_E_2 <= 3
_C156: Class_Assignment_B_1 + Class_Assignment_E_1 + Room_Assignment_B_3
 + Room_Assignment_E_3 <= 3
_C157: Class_Assignment_B_2 + Class_Assignment_E_2 + Room_Assignment_B_1
 + Room_Assignment_E_1 <= 3
_C158: Class_Assignment_B_2 + Class_Assignment_E_2 + Room_Assignment_B_2
 + Room_Assignment_E_2 <= 3
_C159: Class_Assignment_B_2 + Class_Assignment_E_2 + Room_Assignment_B_3
 + Room_Assignment_E_3 <= 3
_C16: Class_Assignment_A_3 + Class_Assignment_C_3 + Room_Assignment_A_1
 + Room_Assignment_C_1 <= 3
_C160: Class_Assignment_B_3 + Class_Assignment_E_3 + Room_Assignment_B_1
 + Room_Assignment_E_1 <= 3
_C161: Class_Assignment_B_3 + Class_Assignment_E_3 + Room_Assignment_B_2
 + Room_Assignment_E_2 <= 3
_C162: Class_Assignment_B_3 + Class_Assignment_E_3 + Room_Assignment_B_3
 + Room_Assignment_E_3 <= 3
_C163: Class_Assignment_C_1 + Class_Assignment_E_1 + Room_Assignment_C_1
 + Room_Assignment_E_1 <= 3
_C164: Class_Assignment_C_1 + Class_Assignment_E_1 + Room_Assignment_C_2
 + Room_Assignment_E_2 <= 3
_C165: Class_Assignment_C_1 + Class_Assignment_E_1 + Room_Assignment_C_3
 + Room_Assignment_E_3 <= 3
_C166: Class_Assignment_C_2 + Class_Assignment_E_2 + Room_Assignment_C_1
 + Room_Assignment_E_1 <= 3
_C167: Class_Assignment_C_2 + Class_Assignment_E_2 + Room_Assignment_C_2
 + Room_Assignment_E_2 <= 3
_C168: Class_Assignment_C_2 + Class_Assignment_E_2 + Room_Assignment_C_3
 + Room_Assignment_E_3 <= 3
_C169: Class_Assignment_C_3 + Class_Assignment_E_3 + Room_Assignment_C_1
 + Room_Assignment_E_1 <= 3
_C17: Class_Assignment_A_3 + Class_Assignment_C_3 + Room_Assignment_A_2
 + Room_Assignment_C_2 <= 3
_C170: Class_Assignment_C_3 + Class_Assignment_E_3 + Room_Assignment_C_2
 + Room_Assignment_E_2 <= 3
_C171: Class_Assignment_C_3 + Class_Assignment_E_3 + Room_Assignment_C_3
 + Room_Assignment_E_3 <= 3
_C172: Class_Assignment_D_1 + Class_Assignment_E_1 + Room_Assignment_D_1
 + Room_Assignment_E_1 <= 3
_C173: Class_Assignment_D_1 + Class_Assignment_E_1 + Room_Assignment_D_2
 + Room_Assignment_E_2 <= 3
_C174: Class_Assignment_D_1 + Class_Assignment_E_1 + Room_Assignment_D_3
 + Room_Assignment_E_3 <= 3
_C175: Class_Assignment_D_2 + Class_Assignment_E_2 + Room_Assignment_D_1
 + Room_Assignment_E_1 <= 3
_C176: Class_Assignment_D_2 + Class_Assignment_E_2 + Room_Assignment_D_2
 + Room_Assignment_E_2 <= 3
_C177: Class_Assignment_D_2 + Class_Assignment_E_2 + Room_Assignment_D_3
 + Room_Assignment_E_3 <= 3
_C178: Class_Assignment_D_3 + Class_Assignment_E_3 + Room_Assignment_D_1
 + Room_Assignment_E_1 <= 3
_C179: Class_Assignment_D_3 + Class_Assignment_E_3 + Room_Assignment_D_2
 + Room_Assignment_E_2 <= 3
_C18: Class_Assignment_A_3 + Class_Assignment_C_3 + Room_Assignment_A_3
 + Room_Assignment_C_3 <= 3
_C180: Class_Assignment_D_3 + Class_Assignment_E_3 + Room_Assignment_D_3
 + Room_Assignment_E_3 <= 3
_C181: Class_Assignment_A_1 + Class_Assignment_B_1 - Overlap_A_B <= 1
_C182: Class_Assignment_A_2 + Class_Assignment_B_2 - Overlap_A_B <= 1
_C183: Class_Assignment_A_3 + Class_Assignment_B_3 - Overlap_A_B <= 1
_C184: Class_Assignment_A_1 + Class_Assignment_C_1 - Overlap_A_C <= 1
_C185: Class_Assignment_A_2 + Class_Assignment_C_2 - Overlap_A_C <= 1
_C186: Class_Assignment_A_3 + Class_Assignment_C_3 - Overlap_A_C <= 1
_C187: Class_Assignment_A_1 + Class_Assignment_D_1 - Overlap_A_D <= 1
_C188: Class_Assignment_A_2 + Class_Assignment_D_2 - Overlap_A_D <= 1
_C189: Class_Assignment_A_3 + Class_Assignment_D_3 - Overlap_A_D <= 1
_C19: Class_Assignment_A_1 + Class_Assignment_D_1 + Room_Assignment_A_1
 + Room_Assignment_D_1 <= 3
_C190: Class_Assignment_A_1 + Class_Assignment_E_1 - Overlap_A_E <= 1
_C191: Class_Assignment_A_2 + Class_Assignment_E_2 - Overlap_A_E <= 1
_C192: Class_Assignment_A_3 + Class_Assignment_E_3 - Overlap_A_E <= 1
_C193: Class_Assignment_A_1 + Class_Assignment_B_1 - Overlap_B_A <= 1
_C194: Class_Assignment_A_2 + Class_Assignment_B_2 - Overlap_B_A <= 1
_C195: Class_Assignment_A_3 + Class_Assignment_B_3 - Overlap_B_A <= 1
_C196: Class_Assignment_B_1 + Class_Assignment_C_1 - Overlap_B_C <= 1
_C197: Class_Assignment_B_2 + Class_Assignment_C_2 - Overlap_B_C <= 1
_C198: Class_Assignment_B_3 + Class_Assignment_C_3 - Overlap_B_C <= 1
_C199: Class_Assignment_B_1 + Class_Assignment_D_1 - Overlap_B_D <= 1
_C2: Class_Assignment_A_1 + Class_Assignment_B_1 + Room_Assignment_A_2
 + Room_Assignment_B_2 <= 3
_C20: Class_Assignment_A_1 + Class_Assignment_D_1 + Room_Assignment_A_2
 + Room_Assignment_D_2 <= 3
_C200: Class_Assignment_B_2 + Class_Assignment_D_2 - Overlap_B_D <= 1
_C201: Class_Assignment_B_3 + Class_Assignment_D_3 - Overlap_B_D <= 1
_C202: Class_Assignment_B_1 + Class_Assignment_E_1 - Overlap_B_E <= 1
_C203: Class_Assignment_B_2 + Class_Assignment_E_2 - Overlap_B_E <= 1
_C204: Class_Assignment_B_3 + Class_Assignment_E_3 - Overlap_B_E <= 1
_C205: Class_Assignment_A_1 + Class_Assignment_C_1 - Overlap_C_A <= 1
_C206: Class_Assignment_A_2 + Class_Assignment_C_2 - Overlap_C_A <= 1
_C207: Class_Assignment_A_3 + Class_Assignment_C_3 - Overlap_C_A <= 1
_C208: Class_Assignment_B_1 + Class_Assignment_C_1 - Overlap_C_B <= 1
_C209: Class_Assignment_B_2 + Class_Assignment_C_2 - Overlap_C_B <= 1
_C21: Class_Assignment_A_1 + Class_Assignment_D_1 + Room_Assignment_A_3
 + Room_Assignment_D_3 <= 3
_C210: Class_Assignment_B_3 + Class_Assignment_C_3 - Overlap_C_B <= 1
_C211: Class_Assignment_C_1 + Class_Assignment_D_1 - Overlap_C_D <= 1
_C212: Class_Assignment_C_2 + Class_Assignment_D_2 - Overlap_C_D <= 1
_C213: Class_Assignment_C_3 + Class_Assignment_D_3 - Overlap_C_D <= 1
_C214: Class_Assignment_C_1 + Class_Assignment_E_1 - Overlap_C_E <= 1
_C215: Class_Assignment_C_2 + Class_Assignment_E_2 - Overlap_C_E <= 1
_C216: Class_Assignment_C_3 + Class_Assignment_E_3 - Overlap_C_E <= 1
_C217: Class_Assignment_A_1 + Class_Assignment_D_1 - Overlap_D_A <= 1
_C218: Class_Assignment_A_2 + Class_Assignment_D_2 - Overlap_D_A <= 1
_C219: Class_Assignment_A_3 + Class_Assignment_D_3 - Overlap_D_A <= 1
_C22: Class_Assignment_A_2 + Class_Assignment_D_2 + Room_Assignment_A_1
 + Room_Assignment_D_1 <= 3
_C220: Class_Assignment_B_1 + Class_Assignment_D_1 - Overlap_D_B <= 1
_C221: Class_Assignment_B_2 + Class_Assignment_D_2 - Overlap_D_B <= 1
_C222: Class_Assignment_B_3 + Class_Assignment_D_3 - Overlap_D_B <= 1
_C223: Class_Assignment_C_1 + Class_Assignment_D_1 - Overlap_D_C <= 1
_C224: Class_Assignment_C_2 + Class_Assignment_D_2 - Overlap_D_C <= 1
_C225: Class_Assignment_C_3 + Class_Assignment_D_3 - Overlap_D_C <= 1
_C226: Class_Assignment_D_1 + Class_Assignment_E_1 - Overlap_D_E <= 1
_C227: Class_Assignment_D_2 + Class_Assignment_E_2 - Overlap_D_E <= 1
_C228: Class_Assignment_D_3 + Class_Assignment_E_3 - Overlap_D_E <= 1
_C229: Class_Assignment_A_1 + Class_Assignment_E_1 - Overlap_E_A <= 1
_C23: Class_Assignment_A_2 + Class_Assignment_D_2 + Room_Assignment_A_2
 + Room_Assignment_D_2 <= 3
_C230: Class_Assignment_A_2 + Class_Assignment_E_2 - Overlap_E_A <= 1
_C231: Class_Assignment_A_3 + Class_Assignment_E_3 - Overlap_E_A <= 1
_C232: Class_Assignment_B_1 + Class_Assignment_E_1 - Overlap_E_B <= 1
_C233: Class_Assignment_B_2 + Class_Assignment_E_2 - Overlap_E_B <= 1
_C234: Class_Assignment_B_3 + Class_Assignment_E_3 - Overlap_E_B <= 1
_C235: Class_Assignment_C_1 + Class_Assignment_E_1 - Overlap_E_C <= 1
_C236: Class_Assignment_C_2 + Class_Assignment_E_2 - Overlap_E_C <= 1
_C237: Class_Assignment_C_3 + Class_Assignment_E_3 - Overlap_E_C <= 1
_C238: Class_Assignment_D_1 + Class_Assignment_E_1 - Overlap_E_D <= 1
_C239: Class_Assignment_D_2 + Class_Assignment_E_2 - Overlap_E_D <= 1
_C24: Class_Assignment_A_2 + Class_Assignment_D_2 + Room_Assignment_A_3
 + Room_Assignment_D_3 <= 3
_C240: Class_Assignment_D_3 + Class_Assignment_E_3 - Overlap_E_D <= 1
_C25: Class_Assignment_A_3 + Class_Assignment_D_3 + Room_Assignment_A_1
 + Room_Assignment_D_1 <= 3
_C26: Class_Assignment_A_3 + Class_Assignment_D_3 + Room_Assignment_A_2
 + Room_Assignment_D_2 <= 3
_C27: Class_Assignment_A_3 + Class_Assignment_D_3 + Room_Assignment_A_3
 + Room_Assignment_D_3 <= 3
_C28: Class_Assignment_A_1 + Class_Assignment_E_1 + Room_Assignment_A_1
 + Room_Assignment_E_1 <= 3
_C29: Class_Assignment_A_1 + Class_Assignment_E_1 + Room_Assignment_A_2
 + Room_Assignment_E_2 <= 3
_C3: Class_Assignment_A_1 + Class_Assignment_B_1 + Room_Assignment_A_3
 + Room_Assignment_B_3 <= 3
_C30: Class_Assignment_A_1 + Class_Assignment_E_1 + Room_Assignment_A_3
 + Room_Assignment_E_3 <= 3
_C31: Class_Assignment_A_2 + Class_Assignment_E_2 + Room_Assignment_A_1
 + Room_Assignment_E_1 <= 3
_C32: Class_Assignment_A_2 + Class_Assignment_E_2 + Room_Assignment_A_2
 + Room_Assignment_E_2 <= 3
_C33: Class_Assignment_A_2 + Class_Assignment_E_2 + Room_Assignment_A_3
 + Room_Assignment_E_3 <= 3
_C34: Class_Assignment_A_3 + Class_Assignment_E_3 + Room_Assignment_A_1
 + Room_Assignment_E_1 <= 3
_C35: Class_Assignment_A_3 + Class_Assignment_E_3 + Room_Assignment_A_2
 + Room_Assignment_E_2 <= 3
_C36: Class_Assignment_A_3 + Class_Assignment_E_3 + Room_Assignment_A_3
 + Room_Assignment_E_3 <= 3
_C37: Class_Assignment_A_1 + Class_Assignment_B_1 + Room_Assignment_A_1
 + Room_Assignment_B_1 <= 3
_C38: Class_Assignment_A_1 + Class_Assignment_B_1 + Room_Assignment_A_2
 + Room_Assignment_B_2 <= 3
_C39: Class_Assignment_A_1 + Class_Assignment_B_1 + Room_Assignment_A_3
 + Room_Assignment_B_3 <= 3
_C4: Class_Assignment_A_2 + Class_Assignment_B_2 + Room_Assignment_A_1
 + Room_Assignment_B_1 <= 3
_C40: Class_Assignment_A_2 + Class_Assignment_B_2 + Room_Assignment_A_1
 + Room_Assignment_B_1 <= 3
_C41: Class_Assignment_A_2 + Class_Assignment_B_2 + Room_Assignment_A_2
 + Room_Assignment_B_2 <= 3
_C42: Class_Assignment_A_2 + Class_Assignment_B_2 + Room_Assignment_A_3
 + Room_Assignment_B_3 <= 3
_C43: Class_Assignment_A_3 + Class_Assignment_B_3 + Room_Assignment_A_1
 + Room_Assignment_B_1 <= 3
_C44: Class_Assignment_A_3 + Class_Assignment_B_3 + Room_Assignment_A_2
 + Room_Assignment_B_2 <= 3
_C45: Class_Assignment_A_3 + Class_Assignment_B_3 + Room_Assignment_A_3
 + Room_Assignment_B_3 <= 3
_C46: Class_Assignment_B_1 + Class_Assignment_C_1 + Room_Assignment_B_1
 + Room_Assignment_C_1 <= 3
_C47: Class_Assignment_B_1 + Class_Assignment_C_1 + Room_Assignment_B_2
 + Room_Assignment_C_2 <= 3
_C48: Class_Assignment_B_1 + Class_Assignment_C_1 + Room_Assignment_B_3
 + Room_Assignment_C_3 <= 3
_C49: Class_Assignment_B_2 + Class_Assignment_C_2 + Room_Assignment_B_1
 + Room_Assignment_C_1 <= 3
_C5: Class_Assignment_A_2 + Class_Assignment_B_2 + Room_Assignment_A_2
 + Room_Assignment_B_2 <= 3
_C50: Class_Assignment_B_2 + Class_Assignment_C_2 + Room_Assignment_B_2
 + Room_Assignment_C_2 <= 3
_C51: Class_Assignment_B_2 + Class_Assignment_C_2 + Room_Assignment_B_3
 + Room_Assignment_C_3 <= 3
_C52: Class_Assignment_B_3 + Class_Assignment_C_3 + Room_Assignment_B_1
 + Room_Assignment_C_1 <= 3
_C53: Class_Assignment_B_3 + Class_Assignment_C_3 + Room_Assignment_B_2
 + Room_Assignment_C_2 <= 3
_C54: Class_Assignment_B_3 + Class_Assignment_C_3 + Room_Assignment_B_3
 + Room_Assignment_C_3 <= 3
_C55: Class_Assignment_B_1 + Class_Assignment_D_1 + Room_Assignment_B_1
 + Room_Assignment_D_1 <= 3
_C56: Class_Assignment_B_1 + Class_Assignment_D_1 + Room_Assignment_B_2
 + Room_Assignment_D_2 <= 3
_C57: Class_Assignment_B_1 + Class_Assignment_D_1 + Room_Assignment_B_3
 + Room_Assignment_D_3 <= 3
_C58: Class_Assignment_B_2 + Class_Assignment_D_2 + Room_Assignment_B_1
 + Room_Assignment_D_1 <= 3
_C59: Class_Assignment_B_2 + Class_Assignment_D_2 + Room_Assignment_B_2
 + Room_Assignment_D_2 <= 3
_C6: Class_Assignment_A_2 + Class_Assignment_B_2 + Room_Assignment_A_3
 + Room_Assignment_B_3 <= 3
_C60: Class_Assignment_B_2 + Class_Assignment_D_2 + Room_Assignment_B_3
 + Room_Assignment_D_3 <= 3
_C61: Class_Assignment_B_3 + Class_Assignment_D_3 + Room_Assignment_B_1
 + Room_Assignment_D_1 <= 3
_C62: Class_Assignment_B_3 + Class_Assignment_D_3 + Room_Assignment_B_2
 + Room_Assignment_D_2 <= 3
_C63: Class_Assignment_B_3 + Class_Assignment_D_3 + Room_Assignment_B_3
 + Room_Assignment_D_3 <= 3
_C64: Class_Assignment_B_1 + Class_Assignment_E_1 + Room_Assignment_B_1
 + Room_Assignment_E_1 <= 3
_C65: Class_Assignment_B_1 + Class_Assignment_E_1 + Room_Assignment_B_2
 + Room_Assignment_E_2 <= 3
_C66: Class_Assignment_B_1 + Class_Assignment_E_1 + Room_Assignment_B_3
 + Room_Assignment_E_3 <= 3
_C67: Class_Assignment_B_2 + Class_Assignment_E_2 + Room_Assignment_B_1
 + Room_Assignment_E_1 <= 3
_C68: Class_Assignment_B_2 + Class_Assignment_E_2 + Room_Assignment_B_2
 + Room_Assignment_E_2 <= 3
_C69: Class_Assignment_B_2 + Class_Assignment_E_2 + Room_Assignment_B_3
 + Room_Assignment_E_3 <= 3
_C7: Class_Assignment_A_3 + Class_Assignment_B_3 + Room_Assignment_A_1
 + Room_Assignment_B_1 <= 3
_C70: Class_Assignment_B_3 + Class_Assignment_E_3 + Room_Assignment_B_1
 + Room_Assignment_E_1 <= 3
_C71: Class_Assignment_B_3 + Class_Assignment_E_3 + Room_Assignment_B_2
 + Room_Assignment_E_2 <= 3
_C72: Class_Assignment_B_3 + Class_Assignment_E_3 + Room_Assignment_B_3
 + Room_Assignment_E_3 <= 3
_C73: Class_Assignment_A_1 + Class_Assignment_C_1 + Room_Assignment_A_1
 + Room_Assignment_C_1 <= 3
_C74: Class_Assignment_A_1 + Class_Assignment_C_1 + Room_Assignment_A_2
 + Room_Assignment_C_2 <= 3
_C75: Class_Assignment_A_1 + Class_Assignment_C_1 + Room_Assignment_A_3
 + Room_Assignment_C_3 <= 3
_C76: Class_Assignment_A_2 + Class_Assignment_C_2 + Room_Assignment_A_1
 + Room_Assignment_C_1 <= 3
_C77: Class_Assignment_A_2 + Class_Assignment_C_2 + Room_Assignment_A_2
 + Room_Assignment_C_2 <= 3
_C78: Class_Assignment_A_2 + Class_Assignment_C_2 + Room_Assignment_A_3
 + Room_Assignment_C_3 <= 3
_C79: Class_Assignment_A_3 + Class_Assignment_C_3 + Room_Assignment_A_1
 + Room_Assignment_C_1 <= 3
_C8: Class_Assignment_A_3 + Class_Assignment_B_3 + Room_Assignment_A_2
 + Room_Assignment_B_2 <= 3
_C80: Class_Assignment_A_3 + Class_Assignment_C_3 + Room_Assignment_A_2
 + Room_Assignment_C_2 <= 3
_C81: Class_Assignment_A_3 + Class_Assignment_C_3 + Room_Assignment_A_3
 + Room_Assignment_C_3 <= 3
_C82: Class_Assignment_B_1 + Class_Assignment_C_1 + Room_Assignment_B_1
 + Room_Assignment_C_1 <= 3
_C83: Class_Assignment_B_1 + Class_Assignment_C_1 + Room_Assignment_B_2
 + Room_Assignment_C_2 <= 3
_C84: Class_Assignment_B_1 + Class_Assignment_C_1 + Room_Assignment_B_3
 + Room_Assignment_C_3 <= 3
_C85: Class_Assignment_B_2 + Class_Assignment_C_2 + Room_Assignment_B_1
 + Room_Assignment_C_1 <= 3
_C86: Class_Assignment_B_2 + Class_Assignment_C_2 + Room_Assignment_B_2
 + Room_Assignment_C_2 <= 3
_C87: Class_Assignment_B_2 + Class_Assignment_C_2 + Room_Assignment_B_3
 + Room_Assignment_C_3 <= 3
_C88: Class_Assignment_B_3 + Class_Assignment_C_3 + Room_Assignment_B_1
 + Room_Assignment_C_1 <= 3
_C89: Class_Assignment_B_3 + Class_Assignment_C_3 + Room_Assignment_B_2
 + Room_Assignment_C_2 <= 3
_C9: Class_Assignment_A_3 + Class_Assignment_B_3 + Room_Assignment_A_3
 + Room_Assignment_B_3 <= 3
_C90: Class_Assignment_B_3 + Class_Assignment_C_3 + Room_Assignment_B_3
 + Room_Assignment_C_3 <= 3
_C91: Class_Assignment_C_1 + Class_Assignment_D_1 + Room_Assignment_C_1
 + Room_Assignment_D_1 <= 3
_C92: Class_Assignment_C_1 + Class_Assignment_D_1 + Room_Assignment_C_2
 + Room_Assignment_D_2 <= 3
_C93: Class_Assignment_C_1 + Class_Assignment_D_1 + Room_Assignment_C_3
 + Room_Assignment_D_3 <= 3
_C94: Class_Assignment_C_2 + Class_Assignment_D_2 + Room_Assignment_C_1
 + Room_Assignment_D_1 <= 3
_C95: Class_Assignment_C_2 + Class_Assignment_D_2 + Room_Assignment_C_2
 + Room_Assignment_D_2 <= 3
_C96: Class_Assignment_C_2 + Class_Assignment_D_2 + Room_Assignment_C_3
 + Room_Assignment_D_3 <= 3
_C97: Class_Assignment_C_3 + Class_Assignment_D_3 + Room_Assignment_C_1
 + Room_Assignment_D_1 <= 3
_C98: Class_Assignment_C_3 + Class_Assignment_D_3 + Room_Assignment_C_2
 + Room_Assignment_D_2 <= 3
_C99: Class_Assignment_C_3 + Class_Assignment_D_3 + Room_Assignment_C_3
 + Room_Assignment_D_3 <= 3
Bounds
 0 <= Class_Assignment_A_1
 0 <= Class_Assignment_A_2
 0 <= Class_Assignment_A_3
 0 <= Class_Assignment_B_1
 0 <= Class_Assignment_B_2
 0 <= Class_Assignment_B_3
 0 <= Class_Assignment_C_1
 0 <= Class_Assignment_C_2
 0 <= Class_Assignment_C_3
 0 <= Class_Assignment_D_1
 0 <= Class_Assignment_D_2
 0 <= Class_Assignment_D_3
 0 <= Class_Assignment_E_1
 0 <= Class_Assignment_E_2
 0 <= Class_Assignment_E_3
 0 <= Overlap_A_B
 0 <= Overlap_A_C
 0 <= Overlap_A_D
 0 <= Overlap_A_E
 0 <= Overlap_B_A
 0 <= Overlap_B_C
 0 <= Overlap_B_D
 0 <= Overlap_B_E
 0 <= Overlap_C_A
 0 <= Overlap_C_B
 0 <= Overlap_C_D
 0 <= Overlap_C_E
 0 <= Overlap_D_A
 0 <= Overlap_D_B
 0 <= Overlap_D_C
 0 <= Overlap_D_E
 0 <= Overlap_E_A
 0 <= Overlap_E_B
 0 <= Overlap_E_C
 0 <= Overlap_E_D
 0 <= Room_Assignment_A_1
 0 <= Room_Assignment_A_2
 0 <= Room_Assignment_A_3
 0 <= Room_Assignment_B_1
 0 <= Room_Assignment_B_2
 0 <= Room_Assignment_B_3
 0 <= Room_Assignment_C_1
 0 <= Room_Assignment_C_2
 0 <= Room_Assignment_C_3
 0 <= Room_Assignment_D_1
 0 <= Room_Assignment_D_2
 0 <= Room_Assignment_D_3
 0 <= Room_Assignment_E_1
 0 <= Room_Assignment_E_2
 0 <= Room_Assignment_E_3
Generals
Class_Assignment_A_1
Class_Assignment_A_2
Class_Assignment_A_3
Class_Assignment_B_1
Class_Assignment_B_2
Class_Assignment_B_3
Class_Assignment_C_1
Class_Assignment_C_2
Class_Assignment_C_3
Class_Assignment_D_1
Class_Assignment_D_2
Class_Assignment_D_3
Class_Assignment_E_1
Class_Assignment_E_2
Class_Assignment_E_3
Overlap_A_B
Overlap_A_C
Overlap_A_D
Overlap_A_E
Overlap_B_A
Overlap_B_C
Overlap_B_D
Overlap_B_E
Overlap_C_A
Overlap_C_B
Overlap_C_D
Overlap_C_E
Overlap_D_A
Overlap_D_B
Overlap_D_C
Overlap_D_E
Overlap_E_A
Overlap_E_B
Overlap_E_C
Overlap_E_D
Room_Assignment_A_1
Room_Assignment_A_2
Room_Assignment_A_3
Room_Assignment_B_1
Room_Assignment_B_2
Room_Assignment_B_3
Room_Assignment_C_1
Room_Assignment_C_2
Room_Assignment_C_3
Room_Assignment_D_1
Room_Assignment_D_2
Room_Assignment_D_3
Room_Assignment_E_1
Room_Assignment_E_2
Room_Assignment_E_3
End
