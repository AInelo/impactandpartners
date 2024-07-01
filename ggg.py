import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d.art3d import Poly3DCollection
import numpy as np

# Définir les sommets du tétraèdre
A = np.array([1, 1, 1])
B = np.array([-1, -1, 1])
C = np.array([-1, 1, -1])
D = np.array([1, -1, -1])

# Calculer le centre du triangle BDC
H = (B + D + C) / 3

# Définir les sommets et les faces
vertices = np.array([A, B, C, D])
faces = [
    [vertices[0], vertices[1], vertices[2]],
    [vertices[0], vertices[1], vertices[3]],
    [vertices[0], vertices[2], vertices[3]],
    [vertices[1], vertices[2], vertices[3]]
]

# Création de la figure
fig = plt.figure()
ax = fig.add_subplot(111, projection='3d')

# Ajouter les faces à la figure
poly3d = [[tuple(vertex) for vertex in face] for face in faces]
ax.add_collection3d(Poly3DCollection(poly3d, facecolors='cyan', linewidths=1, edgecolors='r', alpha=.25))

# Tracer les sommets
ax.scatter(*zip(*vertices), color='r')

# Annoter les sommets
for i, vertex in enumerate(vertices):
    ax.text(*vertex, f'{chr(65+i)}', size=20, zorder=1, color='k')

# Tracer et annoter le point H
ax.scatter(*H, color='b')
ax.text(*H, 'H', size=20, zorder=1, color='k')

# Tracer la hauteur AH
ax.plot([A[0], H[0]], [A[1], H[1]], [A[2], H[2]], color='g')

# Définir les limites des axes
ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.set_xlim([-2, 2])
ax.set_ylim([-2, 2])
ax.set_zlim([-2, 2])

# Afficher la figure
plt.show()
