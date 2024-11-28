from turtle import *
import colorsys

# Configuración inicial
speed(0)  # Máxima velocidad de dibujo
bgcolor("black")  # Fondo oscuro
pensize(2)  # Grosor de las líneas

# Mostrar el título
penup()
goto(0, 200)  # Posición del título
color("white")
write("Flor Colorida 🌸", align="center", font=("Arial", 24, "bold"))
goto(0, 0)  # Regresar al centro
pendown()

# Dibujar los pétalos
h = 0  # Para controlar el color
num_petals = 24  # Número de pétalos

for i in range(num_petals):
    c = colorsys.hsv_to_rgb(h, 0.9, 1)  # Generar un color vibrante
    color(c)
    h += 1 / num_petals  # Cambiar el color gradualmente
    begin_fill()
    circle(100, 60)  # Dibujar medio pétalo
    lt(120)  # Girar para dibujar la otra mitad del pétalo
    circle(100, 60)
    lt(120)  # Regresar al punto de inicio
    end_fill()
    rt(360 / num_petals)  # Rotar para colocar el siguiente pétalo

# Dibujar el centro de la flor
penup()
goto(0, -20)  # Moverse al centro
pendown()
color("yellow")
begin_fill()
circle(20)  # Dibujar el núcleo
end_fill()

# Finalizar el dibujo
done()
