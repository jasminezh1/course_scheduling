import matplotlib.pyplot as plt

x_axis = ['PULP_CBC_CMD', 'GLPK_CMD', 'COIN_CMD']
y_axis = [0.39275,0.24725,2.68077]

plt.plot(x_axis, y_axis)
plt.title('Run Time (seconds)')
plt.xlabel('PuLP Solver')
plt.ylabel('Time (seconds)')
plt.show()