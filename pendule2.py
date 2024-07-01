from tkinter import *
from math import sin, cos, pi

def clic(event): 
    global x, y
    x = 100
    y = 100

def bouge():
    global x, y, t
    A = 200
    w = 0.2
    dt = 0.1

    x = A * sin(w * t)
    y = (A**2 - x**2)**0.5
    t += dt

    can.coords(balle, x+300, y+300, x+310, y+310) # Affiche l’objet aux nouvelles coordonnées
    fenetre.after(20, bouge) # Rafraîchit la fenêtre

# Création de la fenêtre
fenetre = Tk()
fenetre.title("Mon animation")
can = Canvas(fenetre, bg="blue", height="800", width="800")
can.pack()
can.focus_set()

# Création et initialisation des variables
x, y = 100, 100
t = 0
balle = can.create_oval(x+300, y+300, x+310, y+310, fill="red")

# Programme principal
bouge()
fenetre.mainloop()
