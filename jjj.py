import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d.art3d import Poly3DCollection
import numpy as np

# Définir les sommets du tétraèdre
vertices = np.array([
    [1, 1, 1],
    [-1, -1, 1],
    [-1, 1, -1],
    [1, -1, -1]
])

# Définir les faces du tétraèdre en termes de sommets
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

# Définir les limites des axes
ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.set_xlim([-2, 2])
ax.set_ylim([-2, 2])
ax.set_zlim([-2, 2])

# Afficher la figure
plt.show()
