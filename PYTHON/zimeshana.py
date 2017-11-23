import numpy as np
import matplotlib.pyplot as plt

def f(t):
    return np.exp(-t) * np.cos(2*np.pi*t)

t1 = np.arange(0.0, 5.0, 0.1)
t2 = np.arange(0.0, 5.0, 0.02)

plt.figure(1)
plt.subplot(211)
plt.plot(t1, f(t1), 'bo', t2, f(t2), 'k' ,markerfacecolor='green' ,markersize=15 )

plt.subplot(212)
plt.plot(t2, np.cos(2*np.pi*t2), 'r--')
plt.show()

'''
import numpy as np
import matplotlib.pyplot as plt

# evenly sampled time at 200ms intervals
t = np.arange(0., 5., 0.2)

# red dashes, blue squares and green triangles
plt.plot(t, t, 'r--', t, t**2, 'bs', t, t**3, 'g^',markerfacecolor='black' ,markersize=20 )
plt.show()
'''

'''
import matplotlib.pyplot as plt

plt.plot([1,2,3], [1,4,9], 'ro',markersize=20)
plt.plot([1,2,3], [1,4,9], 'b')
plt.axis([0, 6, 0, 20])

plt.show()
'''

'''
import matplotlib.pyplot as plt

#plt.plot([1,2,3,4])

plt.plot([-2, 0, 1] , [4, 0, -3] , '*',markerfacecolor='red', markersize=50 )

plt.xlabel('some other numbers')
plt.ylabel('some numbers')


plt.show()
'''
