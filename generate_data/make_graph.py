# Produces graphs given results of experiments

import matplotlib.pyplot as plt

def solver():
    x_axis = ['PULP_CBC_CMD', 'GLPK_CMD', 'COIN_CMD']
    y_axis = [0.39275,0.24725,2.68077]

    plt.plot(x_axis, y_axis)
    plt.title('Run Time (seconds)')
    plt.xlabel('PuLP Solver')
    plt.ylabel('Time (seconds)')
    plt.show()

def vary_classes():
    fig, ax = plt.subplots()
    x_axis = [5,10,20,40,70,100,150,200]
    y_axis = [0.05, 0.17, 0.36, 1.03, 2.91, 6.63, 22.78, 43.69]

    plt.plot(x_axis, y_axis,marker='o')
    plt.title('Number of Classes vs Run Time (seconds)')
    plt.xlabel('Number of Classes')
    plt.ylabel('Time (seconds)')

    ax.text(0, 1, y_axis[0], size=11)
    ax.text(6, 3, y_axis[1], size=11)
    ax.text(18, 1.55, y_axis[2], size=11)
    ax.text(35, 2.5, y_axis[3], size=11)
    ax.text(63, 5, y_axis[4], size=11)
    ax.text(105, 6.2, y_axis[5], size=11)
    ax.text(155, 22, y_axis[6], size=11)
    ax.text(177, 43, y_axis[7], size=11)

    plt.show()

def vary_max_rooms():
    fig, ax = plt.subplots()
    x_axis = [10,20,30,40,50,60]
    y_axis = [24.50, 43.69, 52.49, 100.21, 93.34, 117.41]

    plt.plot(x_axis, y_axis, marker='o')
    plt.title('Maximum Usable Rooms per Class vs Run Time (seconds)')
    plt.xlabel('Maximum Usable Rooms per Class')
    plt.ylabel('Time (seconds)')

    ax.text(8.3, 28.5, y_axis[0], size=11)
    ax.text(17.5, 48, y_axis[1], size=11)
    ax.text(32, 51, y_axis[2], size=11)
    ax.text(37, 105, y_axis[3], size=11)
    ax.text(48, 85, y_axis[4], size=11)
    ax.text(53, 115.5, y_axis[5], size=11)
    plt.show()

def vary_time():
    fig, ax = plt.subplots()
    x_axis = [5,6,7,8,9,10]
    y_axis = [43.69, 99.69, 123.74, 1182.93, 2060.90, 1568.15]

    plt.plot(x_axis, y_axis, marker='o')
    plt.title('Time Slots vs Run Time (seconds)')
    plt.xlabel('Number of Time Slots')
    plt.ylabel('Time (seconds)')
    
    ax.text(4.8, 140, y_axis[0], size=11)
    ax.text(5.8, 200, y_axis[1], size=11)
    ax.text(7.15, 100, y_axis[2], size=11)
    ax.text(8.15, 1190, y_axis[3], size=11)
    ax.text(9.15, 2000, y_axis[4], size=11)
    ax.text(9.5, 1350, y_axis[5], size=11)
    plt.show()

vary_time()